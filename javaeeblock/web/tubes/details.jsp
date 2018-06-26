<%@ page import="java.util.List" %>
<%@ page import="org.softuni.javaeeblock.models.Tube" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Java EE Block</title>
    <link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
<%
    List<Tube> allTubes=new ArrayList<Tube>(){{

        add(new Tube("Feel it Steel","Some cool new Song…", 5,"Prakash"));
        add(new Tube("Despacito","No words … Just … No!", 250,"Stamat"));
        add(new Tube("Gospodari Na Efira – ep. 25","Mnogo smqh imashe tuka…", 3,"Trichko"));

    }};

    Tube filteredTube = allTubes.stream().filter(tube -> tube.getTitle().equals(URLDecoder.decode(request
            .getParameter("title")))).findFirst().orElse(null);
%>
<h1>Tube - <%= filteredTube.getTitle()%></h1>

<hr/>
<h2>Description</h2>
<p><%=filteredTube.getDescription()%></p>
<hr/>
<h2>Views</h2>
<h3><%=filteredTube.getViews()%></h3>
<hr/>
<h2>Uploader</h2>
<h3><%=filteredTube.getUploader()%></h3>
</body>
</html>
