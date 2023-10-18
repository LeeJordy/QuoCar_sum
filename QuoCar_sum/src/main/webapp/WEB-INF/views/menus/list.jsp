<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>List</title>
<link rel="shortcut icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/common.css" />
<style>
  tr:first-child {
     background-color : #666;
     color            : #fff;
     font-weight      : bold;   
  }
  
  td  {  text-align :center; 
     border-right-color: #fff; 
  }
  
  td:last-child {
     border-right-color: #666;
  }
  

</style>
</head>
<body>

   <div id="main">
   <h2>메뉴 목록</h2>
   
   <table>
     <tr>
       <td>Menu_id</td>
       <td>Menu_Name</td>
       <td>Menu_seq</td>
       <td>삭제</td>
       <td>수정</td>
     </tr>
     <tr>
       <td colspan="5" class="right">
          <a href="/Menus/WriteForm1">메뉴 등록1</a>&nbsp;&nbsp;
          <a href="/Menus/WriteForm2">메뉴 등록2</a>
       </td>       
     </tr>
    <c:forEach var="menu"  items="${ menuList }"> 
     <tr>
       <td>${ menu.menu_id }</td>
       <td>${ menu.menu_name }</td>
       <td>${ menu.menu_seq }</td>
       <td><a  href="/Menus/Delete?menu_id=${ menu.menu_id }">삭제</a></td>
       <td><a  href="/Menus/UpdateForm?menu_id=${ menu.menu_id }">수정</a></td>
     </tr>   
    </c:forEach> 
   </table>   
   
   </div>
</body>
</html>















