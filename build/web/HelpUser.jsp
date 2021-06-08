

<%
    String UId = (String) request.getSession().getAttribute("UId");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Helpers' Desk</title>
    </head>
    <body style="background-image: url('Images/Capture6.PNG');background-repeat: no-repeat;background-size:cover;">
        <div class="row pt-4 pr-4" style="height: 80px;">
            <div class='col-md-4' style="font-size: 53px;font-style: italic;color: white;font-weight: 700">&nbsp;&nbsp;&nbsp;Helpers'Desk</div>
            <div class="col-md-1" style="padding: 20px;text-align: center;"><a href="HomeUser.jsp" style="background: none;color: white;margin: auto;width: inherit;
                                                                               border: none;">Home</a></div>        
            <div class="col-md-2" style="padding: 20px;text-align: center;"><a href="HelperInformationUser.jsp?UId=<%=UId%>" style="background: none;color: white;width: inherit;
                                                                               border: none;">Helpers' Information</a></div>
            <div class="col-md-2" style="padding: 20px;text-align: center;"><a href="AppointmentStatus.jsp?UId=<%=UId%>" style="background: none;color: white;width: inherit;
                                                                               border: none;">Appointment Status</a></div>
            <div class="col-md-1" style="padding: 20px;text-align: center;"><a href='MyProfileUser.jsp?UId=<%=UId%>' style="background: none;color: white;width: inherit;
                                                                               border: none;">My Profile</a></div>
            <div class="col-md-1" style="padding: 20px;text-align: center;"><a href="HelpUser.jsp" style="background: none;color: white;width: inherit;
                                                                               border: none;">Help</a></div>
            <div class="col-md-1" style="padding: 20px;text-align: center;"><a style="background: none;color: white;width: inherit;
                                                                               border: none;" href='DestroySession.jsp'>Logout</a></div>
        </div>
        <br>
        <br>
        <h1 style='color: white;text-align: center'>Frequently Asked Questions (FAQ's)</h1>
        <br>
        <div class='row'>
            <div class='col-md-2'></div>
            <div class='col-md-8'>
                <div style="background-image: url('Images/Capture7.PNG');background-repeat: no-repeat;background-size:cover;" class='card px-5 py-4'>
                    <details>
                        <summary style="font-size: 18px;
                                 font-weight: 700;">How can a customer book a helper through helpers' desk?</summary>
                        <p>A customer can get the contact details of the helper and contact them directly. 
                        </p>
                    </details>
                    <br>
                    <details>
                        <summary style="font-size: 18px;
                                 font-weight: 700;">Can a helper check the number of views on his/her profile ?</summary>
                        <p>No a helper can not see the number of views on his/her profile.
                        </p>
                    </details>
                    <br>
                    <details>
                        <summary style="font-size: 18px;
                                 font-weight: 700;"> Can a single helper create multiple profiles on helpers' desk ?</summary>
                        <p>Yes a person can create multiple helper profiles for different professions.
                        </p>
                    </details>
                    <br>
                    <details>
                        <summary style="font-size: 18px;
                                 font-weight: 700;">Is this application limited to a specific area or it can be used anywhere around the world ?</summary>
                        <p>As of now this application is limited a specific region but with time we will keep expanding the region as we update the application. 
                        </p>
                    </details>
                    <br>
                    <details>
                        <summary style="font-size: 18px;
                                 font-weight: 700;">Is this application limited to a specific area or it can be used anywhere around the world Can a user post/view reviews and ratings of helpers ?</summary>
                        <p>No, there is no such option to post/view reviews or ratings of helpers in helpers' desk. 
                        </p>
                    </details>
                    <br>
                    <details>
                        <summary style="font-size: 18px;
                                 font-weight: 700;">Can a user edit his profile ?</summary>
                        <p>Yes, users can edit their profiles in this application. 
                        </p>
                    </details>
                    <br>
                    <details>
                        <summary style="font-size: 18px;
                                 font-weight: 700;">Can a helpers profile be edited or updated?</summary>
                        <p>Yes, helpers can edit the details in their profile any time they want.
                        </p>
                    </details>
                    <br>
                    <details>
                        <summary style="font-size: 18px;
                                 font-weight: 700;">Can helpers accept or reject their booking requests?</summary>
                        <p>Yes,a helpers can accept or reject booking requests from the users.
                        </p>
                    </details>

                </div>
            </div>
            <div class='col-md-2'></div>
        </div>
    </body>
</html>
