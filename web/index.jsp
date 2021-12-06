<%-- 
    Document   : index
    Created on : 06/12/2021, 09:53:03
    Author     : agonçalves
--%>
<%@page import="so4308554.JsonReader"%>
<%@page import="java.io.BufferedReader, java.io.IOException, java.io.InputStream, java.io.InputStreamReader, java.io.Reader, java.net.URL, java.nio.charset.Charset, java.util.ArrayList, java.util.List, org.json.JSONArray, org.json.JSONException, org.json.JSONObject" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <code>
            <%
            String nome;
            nome = request.getParameter("name");
            JSONObject json = so4308554.JsonReader.readJsonFromUrl("https://api.nationalize.io/?name=" + nome);
            String url = json.toString();
            System.out.println(url);
            %>
        </code>
        <h3><%=url%></h3>
    </body>
</html>
