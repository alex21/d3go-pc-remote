------------------------------------------------------------------------------
-- Navigation Keyboard
------------------------------------------------------------------------------
include("../keyboard.lua");
local keyboard = libs.keyboard;
local kb = libs.keyboard;




--@help Lower system volume
actions.volume_down = function()
	keyboard.press("volumedown");
end

--@help Mute system volume
actions.volume_mute = function()
	keyboard.press("volumemute");
end

--@help Raise system volume
actions.volume_up = function()
	keyboard.press("volumeup");
end

--@help Up
actions.up = function()
	keyboard.press("w");
end

--@help Down
actions.down = function()
	keyboard.press("s");
end


--@help Left
actions.left = function()
	keyboard.press("up");
end

--@help Right
actions.right = function()
	keyboard.press("down");
end


--@help Refresh current page
actions.refresh = function()
	keyboard.press("f5");
end

--@help Refresh current page
actions.fullscreen = function()
	keyboard.press("f11");
end

--@help Command 2
actions.start = function ()
	kb.stroke("ctrl", "1");
end

--@help Close current tab
actions.close_tab = function()
	
	keyboard.stroke("control", "W");
end

--@help Go to previous tab
actions.previous_tab = function()
	
	keyboard.stroke("control", "tab");
end

--@help Open new tab
actions.new_tab = function()
	
	keyboard.stroke("control", "T");
end

--@help Zoom page in
actions.zoom_in = function()
	
	keyboard.stroke("control", "oem_plus");
end

--@help Zoom page out
actions.zoom_out = function()
	
	keyboard.stroke("control", "oem_minus");
end

--@help Use normal zoom
actions.zoom_normal = function()
	
	keyboard.stroke("control", "0");
end

--@help Zoom page in
actions.zoom_in = function()
	
	keyboard.stroke("control", "oem_plus");
end

--@help Zoom page out
actions.zoom_out = function()
	
	keyboard.stroke("control", "oem_minus");
end

--@help Esc
actions.escape = function()
	keyboard.stroke("escape");
end

--@help Back
actions.back = function()
	keyboard.stroke("alt", "left");
end

--@help Enter
actions.enter = function()
	keyboard.stroke("return");
end

--@help Balkanika
actions.balkanika = function()
	keyboard.stroke("1");
end

--@help Planeta
actions.planeta = function()
	keyboard.stroke("2");
end

--@help PrintScreen
actions.print = function()
	keyboard.stroke("control", "f8");
end

--@help Video capture
actions.video = function()
	keyboard.stroke("control", "f9");
end

--@help Start Firefox
actions.firefox = function()
	keyboard.stroke("control", "alt", "f");
end

--@help Exit Firefox
actions.exit = function()
	keyboard.stroke("alt", "f4");
end
