<%-- 
    Document   : modificar
    Created on : 15 dic. 2021, 20:58:56
    Author     : Leandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="modelo.AlumnosDAO"%>
<%@page import="modelo.Alumnos"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center">Modificar Alumnos</h1>
            <div class="row">
                <%
                    String id = request.getParameter ("id");
                    int mid;
                    mid =Integer.parseInt(id);
                    Alumnos resultado=null;
                    AlumnosDAO alumno=new AlumnosDAO();
                    resultado=alumno.mostrarAlumno(mid);
                %> 
                <form class="p-5" method="POST" action="AlumnosController?accion=actualizar">
                    <div class="mb-3">
                        <label for="id" class="form-label"></label>
                        <input type="hidden" class="form-control" id="id" name="id" value=<%=resultado.getId()%>>
                    </div>
                    <div class="mb-3">
                        <label for="nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" value=<%=resultado.getNombre()%>>
                    </div>
                    <div class="mb-3">
                        <label for="apellido" class="form-label">Apellido</label>
                        <input type="text" class="form-control" id="apellido" name="apellido" value=<%=resultado.getApellido()%>>
                    </div>
                    <div class="mb-3">
                        <label for="mail" class="form-label">E-mail</label>
                        <input type="text" class="form-control" id="mail" name="mail" value=<%=resultado.getMail()%>>
                    </div>
                    <button type="submit" class="btn btn-primary">Modificar</button>
                </form>
            </div>            
        </div>        
    </body>
</html>
