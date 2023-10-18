<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>메뉴 등록2</title>
<link rel="shortcut icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/common.css" />

<style>
   th      { width : 20%;  }  
   td      { width : 80%;  }  
   input[type=text] ,  input[type=password], input[type=email]    { width:100%; } 
      
</style>

</head>
<body>
  <div id="main">
  <h2>메뉴 등록2</h2>
  <form action="/Menus/Write2" method="POST" >
  <table> 
   <tr>
     <th>메뉴 이름</th>
     <td><input type="text" name="menu_name" /></td>
   </tr>   
   <tr>     
     <td colspan="2">
     <input type="submit" value="등록" />
     </td>
   </tr> 
  </table>
  </form>
  </div>
</body>
</html>








