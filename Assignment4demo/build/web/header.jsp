

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%-- title of the Page--%>
        <title>Researchers Exchange Participations</title>
        <%-- importing CSS stylesheet --%>
        <link rel="stylesheet" href="styles/main.css">
        <script type="text/javascript" src="js/jquery-1.12.0.min.js"></script>
        <script type="text/javascript" src="js/main.js"></script>
        
        <!-- BootStrap -->
        
        <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" 
        integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous"> -->
          <link rel="stylesheet" href="styles/bootstrap.min.css">
        <script type="text/javascript">
        </script>
    </head>
    <body>
    <script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '153724418357837',
      xfbml      : true,
      version    : 'v2.6'
    });
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
		function postShare(){
  		  FB.ui({method: 'share', href: 'http://openshiftdemo-nbadspring2015.rhcloud.com/BhavyAssignment4/about.jsp', quote: ' ',
  			}, function(response){});
  		}
  		
	</script>
        <%-- Code to specify Header section of the page--%>
        <div id="header">
            <nav id="header_menu">
                <ul  class="left" >
                
                <li> <a href="user?action=home" style= "display: block;padding:0.5em 1em; line-height: 1em;text-decoration: none;color:#009933;">Researchers Exchange Participations</a></li>
                </ul>
                <ul class="right">
                    <c:if test="${theUser == null && theAdmin == null}">
                        <li><a href="user?action=about">About Us</a></li>
                        <li><a href="user?action=how">How it Works</a></li>
                        <li><a href="login.jsp">Login</a></li>
                    </c:if>
                        <c:if test="${theUser != null}">
                        <li><a href="user?action=about">About Us</a></li>
                        <li><a href="user?action=how">How it Works</a></li>
                        <li>Hello, <c:out value = "${theUser.name   }"/></li>
                        <li><a href="user?action=logout">Logout</a></li>
                        </c:if>
                        <c:if test="${theAdmin != null}">
                        <li><a href="user?action=about">About Us</a></li>
                        <li><a href="user?action=how">How it Works</a></li>
                        <li>Hello, <c:out value = "${theAdmin.name  }"/> </li>
                        <li><a href="user?action=logout">Logout</a></li>
                        </c:if>
                </ul>

            </nav>



        </div>

