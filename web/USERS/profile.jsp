<%@page import="com.bbharose.AuthUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%

   
  AuthUser info = (AuthUser)session.getAttribute("info");
   if(info==null){
       response.sendRedirect("../index.jsp");
   }else if(!info.getRole().equalsIgnoreCase("user")){
       response.sendError(403);
  }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/profilecss.css" rel="stylesheet" type="text/css"/>
         <link href="../font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <style>
            p::first-letter {
             font-size:2em;
             font-weight: bold;
             color: red;
            }
            .imagewrap {display:inline-block;position: relative;}
            .button1 {position:absolute;bottom:0%;left:20%;}
        </style>
    </head>
    <body background="../images/main-bg.png">

        <%@include file="../WEB-INF/jspf/UserComponents/user_menu.jspf"%>
        
        <div class="container">
    <div class="fb-profile">
        <img align="left" class="fb-image-lg" src="../images/backgroundph.jpg" height="300px" width="850px" alt="Profile image example" />
        <div class="imagewrap">
        <img align="left" class="fb-image-profile " src="../images/profile_pics/"  height="180px" width="180px" alt="Profile image example"/>
       
        <form enctype="multipart/form-data" action="../uploadpic" method="POST">
              <!--<button class="button1" onclick="document.getElementById('in_pic').click()"><i class="fa fa-camera-retro"></i></button>-->
               <input type="file" id="in_pic" name="photo">
               <input type="submit" value="Ok">
        </form>
        
        </div>
        <div class="fb-profile-text">
            <h1 style="color: white"></h1>
            <h2></h2>
        </div>
            <p style="color: white">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel rhoncus felis, id venenatis libero. Duis at leo metus. Vivamus nec leo sollicitudin, congue ante sed, semper mauris. Pellentesque at hendrerit arcu. Curabitur suscipit mi nec nunc vestibulum mollis. Quisque varius suscipit posuere. In vitae sem lobortis, tincidunt purus nec, porta tellus. Mauris efficitur euismod fermentum.

Cras vehicula metus sed pulvinar molestie. Proin a posuere est. Fusce eu erat tortor. Vivamus non bibendum lorem. Pellentesque congue magna mauris, vel lobortis justo convallis id. Morbi erat lorem, sodales sed nibh nec, vulputate aliquet mauris. Donec tristique malesuada ante, in rutrum ex bibendum nec. Nullam tempus massa ligula, eget tempor augue vulputate in. Quisque nec odio molestie, porttitor arcu eu, rhoncus orci. Vestibulum vestibulum ex sapien, vitae tempor neque venenatis at. Aliquam quis metus eget neque mollis rhoncus ac id elit. Aenean orci tellus, pharetra sit amet tempus nec, congue vel ligula. Suspendisse augue elit, dignissim id est in, varius auctor massa. Aenean placerat, nisi vitae tincidunt vulputate, sem turpis tristique quam, dapibus molestie lorem ex et tellus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.

Aliquam erat volutpat. Nulla non metus placerat orci lacinia consectetur sit amet vel enim. Duis scelerisque lacinia dolor, sed commodo orci accumsan quis. Aliquam quis auctor turpis. Pellentesque vulputate purus augue, eu finibus massa ornare sed. Etiam ac enim id odio malesuada convallis. Sed sit amet porttitor elit.

Cras iaculis vehicula euismod. Vestibulum sollicitudin lectus in nisi pharetra tristique. Nunc pellentesque nibh ligula, at ornare dui ullamcorper vitae. Aenean tempus aliquet magna, et lobortis orci semper et. Proin metus nisl, accumsan eu quam sed, porta aliquam nulla. Proin id sodales dolor, vitae fermentum ex. Mauris quis urna ac lorem faucibus luctus. Mauris non varius orci, at vulputate velit. Nulla iaculis purus elit, at suscipit lacus ornare non.

Mauris suscipit semper luctus. Ut lacus elit, aliquet vel mattis ac, luctus at neque. Nunc orci tortor, eleifend in felis at, bibendum rhoncus nisl. Aenean rutrum mauris nec dolor laoreet pulvinar. Ut molestie lectus in rhoncus tincidunt. Aenean facilisis tristique justo, quis tincidunt felis vehicula et. In sagittis congue viverra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur quis massa sed libero lobortis lacinia. In hac habitasse platea dictumst. Mauris varius ultricies finibus.</p>
    </div>
</div>
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>

            <script src="../js/bootstrap.min.js"></script>
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>

    </body>
</html>
