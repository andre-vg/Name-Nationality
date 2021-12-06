<%-- 
    Document   : form
    Created on : 06/12/2021, 14:35:27
    Author     : agonçalves
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
        <link href="static/styles.css" rel="stylesheet" type="text/css"/>        
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="titulo">
            <h1>Know your Name!</h1>
        </div>
        <form name="form-nome" method="POST" action="http://namenationality-env.eba-ueye6hr4.sa-east-1.elasticbeanstalk.com/index.jsp">
            <div class="box_name">
                <input type="text" placeholder="Seu Nome" id="name">
            </div>
            <input class="btn btn-outline-secondary" type="submit" id="nome">
        </form>
        
        <code>
            <%String nome = request.getParameter("name");
            System.out.println(nome);
            %>
        </code>
    </body>
</html>
