@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="d-flex justify-content-between align-items-center">
            <h1>Listado de Usuarios</h1>
            <a href="{{ route('usuarios.create') }}" class="btn btn-success">Crear Usuario</a>
            <a href="{{ route('usuarios.informe', request()->input()) }}" class="btn btn-primary">Generar Informe</a>
        </div>
        <form action="{{ route('usuarios.index') }}" method="GET">
            <div class="form-group">
                <label for="area_id">Filtrar por Área:</label>
                <select name="area_id" class="form-control">
                    <option value="">Todas las áreas</option>
                    @foreach ($areas as $area)
                        <option value="{{ $area->id }}" {{ request('area_id') == $area->id ? 'selected' : '' }}>
                            {{ $area->nombre }}
                        </option>
                    @endforeach
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Filtrar</button>
        </form>
        
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Email</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $user)
                <tr>
                    <td>{{ $user->id }}</td>
                    <td>{{ $user->nombre }}</td>
                    <td>{{ $user->correo_electronico }}</td>
                    <td>
                        <a href="{{ route('usuarios.edit', $user->id) }}" class="btn btn-primary">Editar</a>
                        <form action="{{ route('usuarios.destroy', $user->id) }}" method="POST" style="display: inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger" onclick="return confirm('¿Estás seguro?')">Eliminar</button>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
