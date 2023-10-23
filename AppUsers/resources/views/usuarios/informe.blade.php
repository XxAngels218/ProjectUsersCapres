<!DOCTYPE html>
<html>
<head>
    <title>Informe de Usuarios</title>
</head>
<body>
    <h1>Informe de Usuarios</h1>
    <table>
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Área</th>
                <th>Sexo</th>
                <th>País</th>
                <th>Departamento</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($users as $user)
                <tr>
                    <td>{{ $user->nombre . " " . $user->apellidos}}</td>
                    <td>{{ $user->area->nombre }}</td>
                    <td>{{ $user->sexo }}</td>
                    <td>{{ $user->pais }}</td>
                    <td>{{ $user->departamento }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
