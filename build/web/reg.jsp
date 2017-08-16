
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String fName="";
    String lName="";
    String gender="";
    String email="";
    String passwd="";
    String cPasswd=""; 
    String dob="";
if(request.getMethod().toString().equalsIgnoreCase("post")){
    fName = request.getParameter("fName");
    lName = request.getParameter("lName");
    gender = request.getParameter("gender");
    email = request.getParameter("email");
    passwd = request.getParameter("passwd");
    cPasswd = request.getParameter("cpassswd");
    dob = request.getParameter("dob");
}

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login/Register</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        
        <style>
            .form_padding{
                padding: 20px;
            }
            
            .pad_top{
                padding-top:20px;
            }
            .form-element-padding{
                padding-left: 20px;
                padding-right: 20px;
                padding-bottom: 30px;
            }
            .form-box{
                background-color: gainsboro;
            }
        </style>
    </head>
    <body background="images/main-bg.png">
        <%@include file="WEB-INF/jspf/menubar.jspf" %>
        <div class="container-flow">
        <div class="row">
            <div class="col-6 form-box">
                <form method="POST" action="reg.jsp">
            <div class="form-element-padding">
                <div class="row pad_top">
                    <div class="col">
                 <div class="form-group">
                <label class="form-label">First Name</label>
                <input type="text" class="form-control" name="fName" value="First Name">
                 </div>
                    </div>
                    
                    <div class="col">
                        <div class="form-group">
                <label class="form-label">Last Name</label>
                <input type="text" class="form-control" name="lName" value="Last Name">
                        </div>
                    </div>
                </div>
                <div class="form-check form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="gender" value="male">Male
                    </label>
                </div>    
                <div class="from-check form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="gender" value="female">Female
                    </label>
                </div>
                
                <div class="form-group">
                <label class="form-label">Email I.D.</label>
                <input type="text" class="form-control" name="email" value="Email"> 
                </div>
                
                <div class="form-group">
                <label class="form-label ">Password</label>
                <input type="password" class="form-control" name="passwd">
                </div>
                
                <div class="form-group">
                <label class="form-label ">Confirm Password</label>
                <input type="password" class="form-control" name="cpasswd">
                </div>
                
                <div class="form-group">
                <label class="form-label">D.O.B.</label>
                 <input type="date" class="form-control" name="dob">  
                </div>
               <div class="pad_top">
                     <div class="row ">
                         <div class="col-8">
                         </div>
                     <div class="col">
                  <button class="btn btn-dark">Clear</button>
                 <button class="btn btn-dark " type="submit">Register</button>
                     </div>
                     </div>
            </div>
</div>
           
            </form>
            </div>
        </div>
        </div>
    </body>
</html>
