<%@page import="com.bbharose.DBManager"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="com.bbharose.DateConverter"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.bbharose.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int template=1;
    String fName="";
    String lName="";
    String gender="male";
    String email="";
    String passwd="";
    String cPasswd=""; 
    String dob="";
    Date d =null;
    String sQue="";
    String sAns="";
    boolean testFlag = false;
    HashMap<String,String> errors = new HashMap<>();
    
if(request.getMethod().toString().equalsIgnoreCase("post")){
    
     fName = request.getParameter("fName").trim().toLowerCase();
    lName = request.getParameter("lName").trim().toLowerCase();
    gender = request.getParameter("gender").trim().toLowerCase();
    email = request.getParameter("email").trim().toLowerCase();
    passwd = request.getParameter("passwd").trim();
    cPasswd = request.getParameter("cpasswd").trim();
    dob = request.getParameter("dob");
    d = DateConverter.convertToDate(dob);
    sQue = request.getParameter("sQue").trim().toLowerCase();
    sAns = request.getParameter("sAns").trim().toLowerCase();
    
    
    
    if(fName.equals("")){
        errors.put("fName", "Enter first name");
    }
    if(lName.equals("")){
        errors.put("lName", "Enter last name");
    }
    if(email.equals("")){
        errors.put("email", "Enter the email");
    }
    if(passwd.equals("")){
        errors.put("passwd", "Enter the password");
    }
    if(cPasswd.equals("")){
        errors.put("confirm", "Confirm the password");
    }
    if(dob.equals("")){
        errors.put("dob", "select a date");
    }
    if(sAns.equals("")){
        errors.put("sAns", "Enter the answer to the security question");
    }
    
    
    if(errors.size()==0){
        
        if(!Pattern.matches("[A-Za-z]+",fName)){
            errors.put("fName","Name contains invalid characters");
            fName="";
        }
        if(!Pattern.matches("[A-Za-z]+",lName)){
            errors.put("lName","value contains invalid characters");
            lName="";
        }
        if(passwd.length()<8){
            errors.put("passwd", "password should be of atleast 8 characters");
        }
        if(!passwd.equals(cPasswd)){
            errors.put("passwd", "passwords do not match");
           errors.put("confirm", "passwords do not match");
           
        }
    }
     
    //primary key test validation here
    if(errors.size()==0){
        if(DBManager.checkPrimaryKey(email)){
            errors.put("email","The email already exists");
            email="";
        }
    }
    
    
    
    if(errors.size()==0){
        boolean status =false;
        User u = new User(fName+" "+lName, passwd, gender, sQue, sAns, d, email);
        status=DBManager.insertUser(u);
        template=2;
        System.out.println("status of DBManager:"+status);
    }
    
    
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
        <%if(template==1){%>
        <div class="container-flow">
        <div class="row">
            <div class="col-6 form-box">
                <form method="POST" action="reg.jsp">
            <div class="form-element-padding">
                <div class="row pad_top">
                    <div class="col">
                 <div class="form-group">
                <label class="form-label">First Name</label>
                <input type="text" class="form-control <%if(errors.get("fName")!=null){%>is-invalid<%}%>" name="fName" value="<%=fName%>">
                <%if(errors.get("fName")!= null){%>
                
                <div class="invalid-feedback">
                    <%=errors.get("fName")%>
                </div>
               
                <%}%>
                 </div>
                    </div>
                    
                    <div class="col">
                        <div class="form-group">
                <label class="form-label">Last Name</label>
                <input type="text" class="form-control <%if(errors.get("lName")!=null){%>is-invalid<%}%>" name="lName" value="<%=lName%>">
                <%if(errors.get("lName")!=null){%>
                <div class="invalid-feedback">
                    <%=errors.get("lName")%>
                </div>
                <%}%>
                        </div>
                    </div>
                </div>
                <div class="form-check form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="gender" value="male" <%if(gender.equalsIgnoreCase("male")){%>checked="checked"<%}%>>Male
                    </label>
                </div>    
                <div class="from-check form-check-inline">
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="gender" value="female" <%if(gender.equalsIgnoreCase("female")){%>checked="checked"<%}%>>Female
                    </label>
                </div>
                
                <div class="form-group">
                <label class="form-label">Email I.D.</label>
                <input type="text" class="form-control <%if(errors.get("email")!=null){%>is-invalid<%}%>" name="email" value="<%=email%>"> 
                 <%if(errors.get("email")!=null){%>
                <div class="invalid-feedback">
                    <%=errors.get("email")%>
                </div>
                <%}%>
                </div>
                
                <div class="form-group">
                <label class="form-label ">Password</label>
                <input type="password" class="form-control <%if(errors.get("passwd")!=null){%>is-invalid<%}%>" name="passwd">
                  <%if(errors.get("passwd")!=null){%>
                <div class="invalid-feedback">
                    <%=errors.get("passwd")%>
                </div>
                <%}%>
                </div>
                
                <div class="form-group">
                <label class="form-label ">Confirm Password</label>
                <input type="password" class="form-control <%if(errors.get("confirm")!=null){%>is-invalid<%}%>" name="cpasswd">
                   <%if(errors.get("confirm")!=null){%>
                <div class="invalid-feedback">
                    <%=errors.get("confirm")%>
                </div>
                <%}%>
                </div>
                
                <div class="form-group">
                <label class="form-label">D.O.B.</label>
                <input type="date" class="form-control <%if(errors.get("dob")!=null){%>is-invalid<%}%>" name="dob" value="">  
                    <%if(errors.get("dob")!=null){%>
                <div class="invalid-feedback">
                    <%=errors.get("dob")%>
                </div>
                <%}%>
                </div>
                <div class="form-group">
                    <label class="form-label">Security Question</label>
                    <select class="form-control" name="sQue">
                        
                        <option <%if(sQue.trim().equalsIgnoreCase("First pet's name")){%>selected="selected"<%}%>>First pet's name</option>
                        
                        <option <%if(sQue.trim().equalsIgnoreCase("Favourite food")){%>selected="selected"<%}%>>Favourite food</option>
                        
                        <option <%if(sQue.trim().equalsIgnoreCase("Favourite animal")){%>selected="selected"<%}%>>Favourite animal</option>
                       
                    </select>
                </div>
                <div class="form-group">
                    <label class="form-label">Answer</label>
                    <input type="text" class="form-control <%if(errors.get("sAns")!=null){%>is-invalid<%}%>" name="sAns" value="<%=sAns%>">
                    <%if(errors.get("sAns")!=null){%>
                    <div class="invalid-feedback">
                        <%=errors.get("sAns")%>
                    </div>
                    <%}%>
                </div>
                    
               <div class="pad_top">
                     <div class="row ">
                         <div class="col-8">
                         </div>
                     <div class="col">
                  <button class="btn btn-dark">Clear</button>
                  
                 <button class="btn btn-dark " type="submit" style="margin-left:19%">Register</button>
                     </div>
                     </div>
            </div>
</div>
           
            </form>
            </div>
            <div class="col">
                <p style="color: white"><%=fName%>,<%=lName%>,<%=gender%>,<%=email%>,<%=passwd%>,<%=cPasswd%>,<%=dob%>,<%=sQue%>,<%=sAns%></p>
                <p><%=testFlag%></p>
            </div>
        </div>
        </div>
          <%}else if(template==2){%>
          <div class="jumbotron">
              <h1>You have been successfully been registered.</h1>
              <h2>Conformation email has been sent to <strong><%=email%></strong></h2>
              <h3>Please confirm your account.</h3>
          </div>
          <%}%>
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>

            <script src="js/bootstrap.min.js"></script>
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>

    </body>
</html>
