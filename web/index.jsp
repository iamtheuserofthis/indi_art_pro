<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
       <style>
@import url('https://fonts.googleapis.com/css?family=Adamina|Arima+Madurai|Cinzel|Marcellus+SC|Orbitron|Playball|Playfair+Display:900i|Sarina|Syncopate');

.head-ing{
font-family: 'Playball', cursive;
/*font-family: 'Arima Madurai', cursive;
font-family: 'Adamina', serif;
font-family: 'Cinzel', serif;
font-family: 'Marcellus SC', serif;
font-family: 'Orbitron', sans-serif;
font-family: 'Playball', cursive;
font-family: 'Playfair Display', serif;
font-family: 'Sarina', cursive;
font-family: 'Syncopate', sans-serif;*/
}

.wel-content{
    @import url('https://fonts.googleapis.com/css?family=Fira+Sans');
    font-family :'Fira Sans',sans-serif;
    color: #cccccc;
    
}
       
       </style>

    </head>
    <body background="images/main-bg.png">
        <%@include file="WEB-INF/jspf/menubar.jspf" %>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div id = "headerSlider" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner" role="listbox">
                            <ol class="carousel-indicators">
                                <li data-target="#headerSlider" data-slide-to="0" class="active"></li>
                                <li data-target="#headerSlider" data-slide-to="1"></li>
                                <li data-target="#headerSlider" data-slide-to="2"></li>

                            </ol>
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="images\image_cara_1.jpg" alt="First slide" height="400px">
                                <div class="carousel-caption" > 
                                    <h1 class="head-ing">The TITLE</h1>
                                </div>
                            </div>
                            <div class="carousel-item ">
                                <img class="d-block w-100" src="images\image_cara_2.jpg" alt="Second slide" height="400px" >
                            </div>
                            <div class="carousel-item ">
                                <img class="d-block w-100" src="images\image_cara_3.jpg" alt="Second slide" height="400px" >
                            </div>

                        </div>

                    </div>
                </div>
            </div>

            <div class="container " >
                <p class="wel-content">This is the content of the container</p>
            </div>

            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>

            <script src="js/bootstrap.min.js"></script>
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>

    </body>
</html>
