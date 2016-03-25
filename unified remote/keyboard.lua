local server = libs.server;
local keyboard = libs.keyboard;

keys = {};
weights = {};
texts = {};
icons = {};

history = {};
modifiers = {};
modifying = false;

actions.send = function ()
	local updates = {}
	local keys = {}
	for key,value in pairs(history) do
		table.insert(updates, { id = "key_" .. key, checked = false });
		table.insert(keys, key);
	end
	for key,value in pairs(modifiers) do
		table.insert(updates, { id = "key_" .. key, checked = false });
		table.insert(keys, key);
	end
	server.update(unpack(updates));
	keyboard.stroke(unpack(keys));
	history = {}
	modifiers = {};
	modifying = false;
end

actions.toggle = function (key)
	if (keyboard.ismodifier(key)) then
		if (modifiers[key] == nil) then
			modifiers[key] = key;
			server.update({ id = "key_" .. key, checked = true });
			modifying = true;
		else
			actions.send();
		end
	else
		if (modifying) then
			if (history[key] == nil) then
				server.update({ id = "key_" .. key, checked = true });
				history[key] = key;
			else
				server.update({ id = "key_" .. key, checked = false });
				history[key] = nil;
			end
		else
			if (keyboard.iskey(key)) then
				keyboard.press(key);
			elseif key == "AT" then
				keyboard.text("@");
			else
				keyboard.text(key);
			end
			server.update({ id = "key_" .. key, checked = false });
		end
	end
end

events.preload = function ()
	local rows = {};
	for r,rt in ipairs(keys) do
		local row = { type = "row" };
		for c,value in ipairs(rt) do
		
			--Check action
			local action = "toggle," .. value;
			if (value == "FN") then
				action = "@switch,Unified.KeyboardFunction";
			end
			
			--Make button
			local btn = { type = "toggle", id = "key_" .. value, onTap = action };
			
			--Check properties
			if (icons[value] ~= nil) then
				btn.icon = icons[value];
			elseif (texts[value] ~= nil) then
				btn.text = texts[value];
				if (OS_OSX and btn.text == "Win") then
					btn.text = "Cmd";
				end
			else
				btn.text = value;
			end
			if (weights[value] ~= nil) then
				btn.weight = weights[value];
			else
				btn.weight = 1;
			end
			
			table.insert(row, btn);	
		end
		table.insert(rows, row);
	end
	
	local layout = {};
	layout.default = { type = "grid", children = rows };
	return layout;
end
