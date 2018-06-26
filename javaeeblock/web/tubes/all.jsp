<%@ page import="java.util.List" %>
<%@ page import="org.softuni.javaeeblock.models.Tube" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Java EE Block</title>
    <link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
<h1>All tubes</h1>
<%
    List<Tube> allTubes=new ArrayList<Tube>(){{

        add(new Tube("Feel it Steel","Some cool new Song…", 5,"Prakash"));
        add(new Tube("Despacito","No words … Just … No!", 250,"Stamat"));
        add(new Tube("Gospodari Na Efira – ep. 25","Mnogo smqh imashe tuka…", 3,"Trichko"));

    }};
%>
<hr/>
<% for (Tube allTube:allTubes){%>
<h1><a href="/tubes/details.jsp?title=<%=allTube.getTitle()%>"><%=allTube.getTitle()%></a> </h1>
<% } %>
</body>
</html>
