<style type="text/css">
embed {border:1px solid black; background:black}
body {
	background-color: #000; font-family:Arial, Helvetica, sans-serif
}
p a {color: #FFF;}
p {
	margin: 0px;
	padding-bottom: 0px;
	font-size: 12px;
	color: #FFFFFF;
}
h2, h2 a {
	color: black;
	text-decoration: none;
	text-align: center; margin:0;
}
h2 a:hover {color:white;}

</style>
<form action="vlc.php" method="get">
 
              
       
    
 
         <div style="width:100%; margin:0 auto">       <?php 
	
	$url1 = $_GET["streamtest"];

	
	
	
	
	
             
    echo "<br/><br/>streaming =".$url1;"<br/>";
	?> <object id="vlc1_IE" codebase="http://downloads.videolan.org/pub/videolan/vlc/latest/win32/axvlc.cab" height="100%" width="90%" classid="clsid:9BE31822-FDAD-461B-AD51-BE1D1C159921">
            <embed type="application/x-vlc-plugin" pluginspage="http://www.videolan.org" version="VideoLAN.VLCPlugin.2"  network-caching="200" target="<?php 
             if (!empty($url1))
    {echo $url1;}
  else
     {echo $url;}?>" width="100%" height="100%" id="vlc1"/>        
            </object>
      </div>  
</form>
