# D3GO PC remote

**Napomena:
Ovo nije besplatno gledanje TV kanala, ili besplatan TV preko interneta, već mogućnost koju POSTOJEĆI KORISNICI SBB usluga, koji u svom paketu imaju aktiviranu D3GO uslugu
olakšava gledanje TV kanala, putem D3GO sajta.**

### [Zašto nije funkcionalno?](#zasto)
### [D3GO PC remote apikacija](#aplikacija)
### [Kako podesiti daljinski?](#podesavanje)
### [Kako se koristi D3GO PC remote aplikacija?](#kako)
### [Dodatna napomena](#dodatno)

### Imate SBB D3GO nalog, možete da gledate televizuju preko neta, ali to ne koristite jer nije funkcionalno?

### <a name="zasto"></a>Zašto nije funkcionalno?

Pa recimo pustili ste neki kanal, zavalili se u fotelju i onda ste poželeli da promenite kanal, međutim pošto nemate daljinski morate da ustajete i da stalno menjate kanale mišem.
Ili ako imate bežičnog miša, opet nastaje problem jer je tekst iz daljine sitniji i opet morate da se približavate da vidite šta piše.

Onda ste možda razmišljali, pa zumiraću strnicu na Firefox-u. Ideja nije toliko loša ali i pored zumiranja stranice nastaju problemi jer se ne zumiraju samo delovi koji nam trebaju nego cela stranica.
I tu opet nastaje problem.

Onda ste možda ponovo razmišljali, da bi bilo idealno ako bi postojao daljinski za PC.
I postoji, i cena varira u zavisnosti od modela. A da li taj daljinski zadovoljava sve moje potrebe gledanja tv-a preko d3go? Odgovor je jednostavan. Ne.

Takodđe na google play postoji android aplikacija za d3go, ali to nije daljinski već je predviđeno da se tv gleda preko nje.
Mada zašto bi gledao preko mobilnog ili tableta ako već imam monitor od 22 inča.

### <a name="aplikacija"></a>D3GO PC remote apikacija

Naš stručni tim developera je pronašao rešenje za gore navedeni problem u vidu D3GO PC remote apikacije.

### <a name="podesavanje"></a>Kako podesiti daljinski?

Proces je malo kompleksan, tako da idemo redom.

#### **POTREBNO**
- Firefox browser / gledanje tv-a radi samo u firefoxu
- [ViewRight WebPlugin](#1)
- [Firefox addon Stylish](#3)
- [Firefox addon GreaseMonkey](#4)
- [Firefox addon Bookmark Shortcut Keys](#5)
- [Android aplikacija Unified Remote Full](#6)
- [WiFi internet konekcija ili Blootooh uređaj](#7)
- [Opciono instalirati FRAPS](#8)

**1)** **<a name="1"></a>Instalacija ViewRight WebPlugin**<br />
Ulogujemo se preko Firefoxa na D3GO sajt.<br />
Probamo da pustimo kanal i Firefox će vam tražiti da skinete ViewRight WebPlugin ukoliko nemate instaliran.<br />
Instaliramo plugin.<br />
Zatvorimo i pokrenemo ponovo Firefox.

**2)** **<a name="2"></a>Download i instalacija GreaseMonkey, Stylish i Bookmark Shortcut Keys**<br />
Na adresi https://addons.mozilla.org/en-US/firefox/<br />
pronađemo i instaliramo  GreaseMonkey, Stylish i Bookmark Shortcut Keys<br />
Restartujemo browser.

**3)** **<a name="3"></a>Stylish dodavanje stila**<br />
Na GitHub pronađite fajl d3go-stylish.css<br />
Otvorite ovaj fajl u text editoru, označite sve i kopirate.<br />

Otovorimo ponovo d3go sajt.<br />
Kliknemo na ikonicu Stylish koja se pojavila sa desne strane u Firefoxu<br />
Write new style for this url<br />
Upišemo naslov d3dgoo<br />
Ubacimo kod koji smo malo pre iskopirali. Paste.<br />
Sačuvamo.

**4)** **<a name="4"></a>GreaseMonkey dodavanje java script**<br />
Potrebno je da nađemo i skinemo AdRemover<br />
https://greasyfork.org/en/scripts/90-adremover<br />

Na GitHub pronađite fajl AdRemover.user.js i kopirate fajl.<br />
Posle toga kliknemo na ikonicu GreaseMonkey u Firefoxu, desni klik Manage scripts.<br />
Nadjemo AdRemover i desni klik show contain in folder.<br />
Pastujemo i zamenimo postojeći fajl sa github fajlom.<br />
Zatvorimo i otvorimo Firefox. Odemo na D3Go i pustimo kanal.

Proverimo još jednom:<br />
kliknemo na ikonicu GreaseMonkey u Firefoxu, desni klik Manage scripts.<br />
Nadjemo AdRemover i desni klik show contain in folder.<br />
PA se vratimo jedan nivo nazad.<br />
Tu postoji fajl config.xml<br />
Otvorimo na preko notpada.<br />
Na početku fajla treba da piše:

	<Script basedir="AdRemover" checkRemoteUpdates="1" dependhash="da39a3ee5e6b4b0d3255bfef95601890afd80709" description="Daljinski za D3GO" enabled="true" noframes="false" filename="AdRemover.user.js" installTime="1442338546821" modified="1442431118768" name="D3GO" namespace="http://userscripts.org/scripts/show/159351" runAt="document-end" updateMetaStatus="ok" uuid="1421abc4-ab8b-4e22-bbce-d31134fbbce3" version="8.5" installurl="https://greasyfork.org/scripts/90-adremover/code/AdRemover.user.js" updateurl="https://greasyfork.org/scripts/90-adremover/code/AdRemover.user.js">
		<Grant>GM_getValue</Grant>
		<Grant>GM_setValue</Grant>
		<Grant>GM_registerMenuCommand</Grant>
		<UserInclude>https://www.d3go.tv/*</UserInclude>
		<Match>http://*.d3go.tv/*</Match>
		<Match>http://www.d3go.tv/*</Match>
	</Script>
	
	Brojevi, hash i ID treba da budu različiti od mojih i to nemojte da menjate, samo je bitno da se nazivi poklapaju.
	
Ako je sve dobro prošlo. Kad pistite neki kanal, moćićete da vidite sa desne strane tastere BALKANIKA i PLANETA
I naćićete da menjate kanale na tasteraturi na S i W.

**5)** **<a name="5"></a>U Firefoxu uključimo Bookmark Toolbar**<br />
Customise -> Show toolbar -> Bookmark Toolbar<br />
Ukoliko već imate ovaj toolbar uključen još bolje.

#### **VEOMA BITNA STVAR**<br />
Da bi uspeli da pokrenete D3GO plejer preko daljinskog, potrebno je da otvorite <br />
https://www.d3go.tv/ i da se ulogujete.<br />
Posle toga kopirate i otvorite link: https://www.d3go.tv/player.html?l=1&f<br />
Prevucite taj link u Bookmark toolbar na 1 poziciju.<br />
VEOMA JE BITNO DA JE NA PRVOJ POZICIJI U TOOLBAR-U.

**6)** **<a name="6"></a>Instalacija Android aplikacija Unified Remote Full / mislim da može i free verzija**<br />
Kupite (ako ne nađete drugi način) Unified Remote Full aplikaciju za android ili skinete sa google play free verziju.
Na free verziji nisam testirao, mada ne bi trebalo da pravi probleme.<br />
Instalirate aplikaciju,<br />
Otvorite sajt https://www.unifiedremote.com/ i skinete InifiedRemote server za Windows.<br />
Instalirate i pokrenete.

<a name="7"></a>Pokrenete aplikaciju na mobilnom.<br />
**UKOLIKO IMATE WiFI:** Uparite mobilni sa WiFi mrežom<br />
**UKOLIKO NEMATE WiFI a imate blootooth:** Uparite mobilni sa blootooth-om.<br />
Ako nemate ni jedno ni drugo, moraćete da nabavite nešto od ova dva.

Na GitHubu pronađete folder D3GO<br />
I kopirate ceo folder u C:\ProgramData\Unified Remote\Remotes\Bundled <br />
Ako nije ta lokacije verovatno je nešto slično, u zavisnosti op verzije Windowsa.

Kad ste iskopirali, zatvorite Unified remote servis u windowsu.<br />
Možete da kucate u RUN (Prečica je Windows+R)<br />
taskkill /im "RemoteServerWin.exe" /f

Znači zatvorite i pokrenite ponovo servis.<br />
Na android telefonu, u aplikaciji treba da se pojavi obaveštenje da je novi daljinski dodat.<br />
Odaberete D3GO daljinski, otvorite sajt D3GO i zabava može da počne!

**7)** **<a name="8"></a>Ovo je opcioni korak, tako da ikoliko želite da snimate tv program i radite printscreenove**<br />
Instalirajte FRAPS. U podešavanjim FRAPSA podesite da prečica za ScreenShot bude CTRL+F8<br />
a za Movies bude CTRL+F9.<br />
Obratite pažnju da klipovi nisu kompresovani i da jedan video od 2 sata može da zauzme oko 1,5 GB prostora.<br />

### <a name="kako"></a>Kako se koristi D3GO PC remote aplikacija?

Pošto smo sve podesili, nadam se uspešno, možemo da otvorimo sajt i aplikaciju<br />
Predpostavimo da je računar ugašen.

- Upalimo računar.
- Automatski se konetujemo na net.
- Unified server se automatski startuje.
- Unified aplikacija se automatski povezuje na wireless (ili bleutooth).
- Pokrenemo ručno Firefox.
- Telefon je automatski povezan na wireless (ili bleutooth).
- Startujemo aplikacuju na telefonu.


**ScreenShot** - Pravi sliku ekrana / potreban FRAPS (korak 7)<br />
**Rec** - Snima video / Zaustavlja snimanje / Potreban FRAPS / Kliknite na full screen pa onda uključite snimanje<br />
**START** - otvara firefox / Podesite tastersku prečicu za firefox CTRL+ALT+F<br />
**EXIT** - zatvara firefox<br />

**Play** - otvara D3goTV / Ovo treba da radi bez problema ukoliko smo ispoštovali 5. korak. Ukoliko se nismo ulogovali biće crna slika ali svaki naredni put otvaraće tv.
**X** - Zatvara trenutni tableta<br />
**+** - otvara novi tab<br />
**TABOVI** - šetamo se u tabovima

**Lupa MINUS** - smanjuje zoom <br />
**Lupa**  - vraća zoom na default<br />
**Lupa PLUS** - povećava zoom

**Volume MINUS** - smanjuje zvuk<br />
**Volume MUTE** - mutira zvuk<br />
**Volume PLUS** - povećava zvuk<br />
**ESC** - escape

**FULLSCREEN** - Povećava ekran (F11)<br />
**ŽUTA STRELICA NA GORE** - Kanal +<br />
**REFRESH** - osvežava stranicu (F5) / korisno, ako nešto zakoči<br />

**NARANDŽASTA STRELICA NA GORE** - skorlovanje na gore<br />
**ŽUTA STRELICA NA DOLE** - Kanal -<br />
**NARANDŽASTA STRELICA NA DOLE** - skrolovanje na dole

**BACK** - backspace / vraća se na prethodnu strancu<br />
**ENT** - enter<br />
**BALKAN** - balkanika kanal<br />
**PLANET** - planata kanal<br />

Takođe u aplikaciji postoji i opcija za miša, koja je veoma korisna.<br />
Kursor miša je zato maksimalno povećan upravo zato da bi bio vidljiv iz daljine.


### <a name="dodatno"></a>Dodatna napomena

**1)** **Balkanika i Planeta su dodatni kanali** koji ne pripadaju SBB ponudi, koji su trenutno isključeni, a ako se uključe pojaviće se sa desne strane.
Da bi se pojavili, u stylish d3go stilu na liniji 7  gde piše 
```
/*balkanika 
    #gmSomeID p {position:relative;z-index:4; top:50px; left:92%; /*background:red;*/ color:#fff; height: 50px; border: 1px solid #2E2E2E; border-radius:5px; 
    background: #3B3B3B url("http://mylittleworkspace.com/aca/d3-primer/balkanika.png") no-repeat; }*/
/*planeta
    #gmSomeID p.planeta {position:relative;z-index:4; top:50px; left:92%; /*background:red;*/ color:#fff; height: 50px; border: 1px solid #2E2E2E; border-radius:5px; 
    background: #3B3B3B url("http://mylittleworkspace.com/aca/d3-primer/planeta.png") no-repeat; }*/
```
upišemo:
```
/*balkanika */
    #gmSomeID p {position:relative;z-index:4; top:50px; left:92%; /*background:red;*/ color:#fff; height: 50px; border: 1px solid #2E2E2E; border-radius:5px; 
    background: #3B3B3B url("http://mylittleworkspace.com/aca/d3-primer/balkanika.png") no-repeat; }
/*planeta*/
    #gmSomeID p.planeta {position:relative;z-index:4; top:50px; left:92%; /*background:red;*/ color:#fff; height: 50px; border: 1px solid #2E2E2E; border-radius:5px; 
    background: #3B3B3B url("http://mylittleworkspace.com/aca/d3-primer/planeta.png") no-repeat; }
```	
	
Ukoliko stream prestane da radi za ova dva kanala.<br />
Novi stream link ili adresu sajta upisujemo u AdRemover.user.js u liniji 844<br />
Takođe ovako možete dodati i vaše kanale.<br />
Sličice ovih kanala su trenutno na probnom hostu, i možete promeni put ili napraviti svoje sličice.

Tastere PLANET i BALKAN na daljinskom, ukoliko ne koristite, brišete u fajlu unified remote\D3GO\unified remote\layout.xml
Izbrišete 45 i 46 liniju.
	
**2)** **Kursor miša**<br />
Kursor miša je izmenjen i povećan.<br />
Ukoliko se nekom ne sviđa može da doda svoj kursor tako što će promeniti put to sličice kursora u stylish d3go stilu na liniji 35,36,37
ili ukoliko hoće defaultni, može izbrisati ove linije.

**3)** **Scroll bar na firefox-u**<br />
Preporučeni izgled firefoxa je crni.<br />
Bilo bi dobro da nadjete crnu temu ili da instalirate firefox development edition.<br />
Scroll bar je po defaultu beli, a da bi bio neupadljiv i crni, predlažen da dodate novi stylish style
https://userstyles.org/styles/95554/mac-os-x-scrollbars-for-firefox

**4)** **BUG**<br />
Kad se skroluju kanali sa nadandžastim strelicama, smanjuje i pojačava se takođe i zvuk.<br />
Strelica dole smanjuje zvuk, strelica gore pojačava. Takođe i skroluju kanale.

**5)** **Preporuka za korišćenje Unified remote na telefonu**<br />
Instalirati na telefonu aplikaciju Stay Alive! sa google play.<br />
U aplikaciji podesite da se ne gasi ekran.<br />
Takođe možete pinovati Unified remote kad je aktivan da ostane uključen.<br />
Dupli klik na taskmanager - nedavno otvorene aplikacije, pa nađemo Unified remote i kliknemo da ikonicu čiode.


Sve skripte su open source i svako ko ima znanja i volje, može prilagođavati, dorađivati i dodavati nove mogućnosti.<br />
Stylish https://userstyles.org/<br />
GreaseMonkey skripte https://greasyfork.org/en<br />
Unified Remote scripts https://github.com/unifiedremote/Docs<br />
