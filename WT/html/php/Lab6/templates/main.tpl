<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="ru" xml:lang="ru" xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="content-type" content="text/html;charset=windows-1251" />
   <title>{HEADER_TITLE}</title>
   <META content="{HEADER_DESCRIPTION}" name="description">
   <META content="{HEADER_KEYWORDS}" name="keywords">
   <link href="css/basic.css" rel="stylesheet" type="text/css" media="all" />
 </head>

<body>

<table width="100%" border="0" bgcolor="#a8ddff" class="globaltable" cellspacing="0" cellpadding="0">
 <tr class="globaltable_ur">
  <td colspan="3" align="center" valign="top">
   <img src="images/logo.jpg">
  </td>
 </tr>

 <tr>
  <td colspan="3"align="right">

   <a href=# onClick="this.style.behavior='url(#default#homepage)'; this.setHomePage('http://www.somedomain.by/'); return false;">Сделать стартовой</a>&nbsp;/&nbsp;<a rel="sidebar" onclick="window.external.AddFavorite(location.href,'ÔÈÐÌÀ'); return false;" href="http://www.somedomain.by/" title="ÔÈÐÌÀ">в избранное</a>
  </td>
 </tr>


 <tr bgcolor="#0400b0" height="1">
  <td colspan="3"></td>
 </tr>

 <tr>
  <td align="left" valign="top" width="20%" class="menutd" rowspan="2">

   Сейчас: {TODAY_D}.{TODAY_M}.{TODAY_Y} {NOW_H}:{NOW_M}:{NOW_S}

   <br /><br />

   <span>{MAIN_MENU}</span>

  <form action="#" method="post">
  <table border="0" width="100%" align="center">
   <tr bgcolor="#0400b0" height="1">

    <td colspan="2"></td>
   </tr>
   <tr height="5">
    <td colspan="2"></td>
   </tr>
   <tr>
    <td align="right" valign="middle"><b>Логин:</b>&nbsp;</td>
    <td align="left"><input type="text" size="10" name="ulogin" class="formf1" /></td>

   </tr>
   <tr>
    <td align="right" valign="middle"><b>Пароль:</b>&nbsp;</td>
    <td align="left"><input type="password" size="10" name="upassword" class="formf1" /></td>
   </tr>
   <tr>
    <td>&nbsp;</td>
    <td align="left"><input type="submit" name="go" value="Войти" class="formf1" /></td>

   </tr>
  </table>
  </form>

  </td>


  <td width="80%" bgcolor="{MAIN_COLOR}">
   <!-- inner table for main only -->
    <table border="0" width="100%" cellspacing="5" cellpaddong="5">

     <tr>
	 
		{TEXT}
	  <td width=\"30%\">
		{NEWS}
	  
	  </td>
     </tr>
    </table>
  </td>
 </tr>

 <tr>
 
  {BOTTOM}
  
 </tr>


 <tr>
  <td align="center" valign="top" bgcolor="#cdebff" width="100%" colspan="2">
   <img src="images/1.bmp"> <img src="images/2.gif"> <img src="images/3.bmp">
  </td>

 </tr>
</table>

</body>
</html>

