<%
    String HId = (String) request.getSession().getAttribute("HId");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="CSS/HomeUser.css">
        <title>Helpers' Desk</title>
    </head>
    <body style="background-image: url('Images/Capture5.PNG');background-repeat: no-repeat;">
        <br><br>
        <div class="row pr-4">
            <div class='col-md-5 t1'>&nbsp;&nbsp;&nbsp;Helpers'Desk</div>
<!--            <div class="col-md-2"></div>-->
            <div class="col-md-1"><a href="HomeHelper.jsp" class="btn">Home</a></div>        
            <div class="col-md-2"><a href='MyProfileHelper.jsp?HId=<%=HId%>' class="btn">My Profile</a></div>
              <div class="col-md-2"><a href='MyAppointmentsHelper.jsp?HId=<%=HId%>' class="btn">My Appointments</a></div>
            <div class="col-md-1"><a href="HelpHelper.jsp" class="btn">Help</a></div>
             <div class="col-md-1"><a href="DestroySession.jsp" class="btn">Logout</a></div>
        </div>
        <br><br>
        <h1 style="text-align: center;color: white" class="t2">About Us</h1>
        <br>
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div style="text-align: center;background-image:url('Images/Capture9.PNG');background-repeat: no-repeat;background-size:cover; color: white;font-size: 15px;border: none;" 
                     class="card mx-auto my-auto px-3 py-3">
                    <p>Helpers’ Desk is an online platform that deals with finding the most eminent 
                        daily need workers on our finger tip, just on click.
                        This web application will provide the user with the data of the workers in 
                        following professions:
                    </p>
                    <div class="row px-3">
                        <div class="col-md-6">
                            <p>Electricians</p>
                            <p>Barbers</p>
                            <p>Carpenters</p>
                            <p>Cooks</p>
                            <p>Maids</p>

                        </div>
                        <div class="col-md-6">
                            <p>Packers and Movers</p>
                            <p>Painters</p>
                            <p>Plumbers</p>
                            <p>Ragmen</p>
                            <p>Vehicle Washer men</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3"></div>
        </div>

        <div class="row">
            <div class="col-md-3"> 
                <img src="Images/Capture12.PNG" style="height: 300px;">
            </div>

            <div class="col-md-9">
                <br><br>
                <ul style="font-weight: 600;">
                    <li>Helpers’ Desk is an online platform that would result in providing the necessary 
                        contact details of daily wages /contracted workers to the end users ,whom so ever require them according 
                        to their need.
                    </li><br>
                    <li>This web application would provide users with the filters which will provide ease
                        to the end user in opting for the particular people of a particular profession on the basis 
                        of availability, rates and location.
                    </li><br>
                    <li>Hence this project will help us to achieve a goal that it will provide a platform where 
                        all these people of various professions can unite and are being accessible on a single click
                        without the end user being searching them which is rather a  time consuming activity through various 
                        offline modes. 
                    </li>
                </ul>
            </div>

        </div>
    </body>
</html>
