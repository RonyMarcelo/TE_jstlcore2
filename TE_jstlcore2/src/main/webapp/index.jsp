<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        if (session.getAttribute("listaper") == null){
            ArrayList<Persona>  lista = new ArrayList<Persona>();
            //agregamos lista a la coleccion
            lista.add(new Persona(1,"Rony Ticona","72344826","RonTic192@gmail.com"));
            lista.add(new Persona(2,"Mauro Lopez","7235526","MarcLop@gmail.com"));
            lista.add(new Persona(3,"Royer Buhajeru","7237789","Roybuha22@gmail.com"));
            //Colocamos la lista como un atributo de session
            session.setAttribute("listaper", lista);
        }
        %>
        <h1>Ejemplo deJSTL Core</h1>
        <ul>
            <li><a href="jstl_if.jsp">Ejemplo del if</a></li>
            <li><a href="jstl_choose.jsp">Probando el choose</a></li>
            <li><a href="jstl_foreach.jsp">Recoriendo la coleccion con foreach</a></li>
        </ul>
    </body>
</html>
