<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista de Usuarios</title>
</head>
<body>
    <h1>Lista de Usuarios</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Clave</th>
            <th>RUT</th>
            <th>DV</th>
        </tr>
        <%
            List<dto.Usuario> usuarios = (List<dto.Usuario>) request.getAttribute("usuarios");
            for (dto.Usuario usuario : usuarios) {
        %>
        <tr>
            <td><%= usuario.getIdUsuario() %></td>
            <td><%= usuario.getNombre() %></td>
            <td><%= usuario.getClave() %></td>
            <td><%= usuario.getRut() %></td>
            <td><%= usuario.getDv() %></td>
        </tr>
        <% } %>
    </table>
</body>
</html>
