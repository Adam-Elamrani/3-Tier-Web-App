<!--
   Name: Adam Elamrani        
   Course: CNT 4714 – Spring 2018 – Project Four
   Assignment title: A Three-Tier Distributed Web-Based Application
   Date: April 1, 2018
-->

<!DOCTYPE html>
<html lang="en">
   <head>
      <title>CNT4714 Remote Database Management System</title>
	  <meta charset="utf-8">
	  <style type="text/css">
   		body { background-color: blue; color: white; font-family: verdana, arial, sans-serif; font-size: 1.4em; text-align: center; }
         fieldset {border:none;}
         h1 { color: white; font-size: 1.3em; }
         h2, h3 { color: white; font-size: .8em; }
         th { background: red; } 
         td { background: white; color: black; }
         td, th { border: solid 1px black; }
         input, a {background-color: black; color: yellow; border: solid 1px; font-size:12px; padding: 5px; }
         textarea {background-color: yellow; color: black; width:650px; height:250px;}
         table { margin-left: auto; margin-right: auto; }
	  </style>
   </head>
   <!-- form to take input from the user and pass it to the servlet and clear the page --> 
   <body>
      <form action = "IndexSession" method = "post">
         <fieldset>
            <h1>Welcome to the Project 4 Remote Database<br>Management System<br></h1>
            <hr>
            <h3>
               You are connected to the Project4 database.<br>
               Please enter any valid SQL query or update statement.<br>
               If no query/update command is given the Execute button will display all 
               supplier information in the database.<br>
               All execution results will appear below.<br>
            </h3>
            <textarea name = "userCommand" >SELECT * FROM suppliers</textarea>
         </fieldset>
         <fieldset>
               <input type = "submit" value = "Execute Command" />
               <a href="index.jsp">Clear Form</a>
               <hr>
         </fieldset>
      </form>
      <h2>
      	<%-- outputting the data returned from the servlet --%>
         Database Results:
      </h2>
      <p style="text-align: center;">
         <% if (session.getAttribute("userResponse") != null) {
            out.println(session.getAttribute("userResponse"));
            session.removeAttribute("userResponse"); 
         }
         %>
      </p>
   </body>
</html>