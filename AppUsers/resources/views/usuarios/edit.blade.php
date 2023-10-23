@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Editar Usuario</h1>
        <form method="POST" action="{{ route('usuarios.update', $user->id) }}">
            @csrf
            @method('PUT') <!-- Usamos la directivapara enviar una solicitud PUT -->

            <div class="form-group">
                <label for="nombre">Nombre</label>
                <input type="text" name="nombre" class="form-control" value="{{ $user->nombre }}" required>
            </div>
            <div class="form-group">
                <label for="apellidos">Apellidos</label>
                <input type="text" name="apellidos" class="form-control" value="{{ $user->apellidos }}" required>
            </div>
            <div class="form-group">
                <label for="sexo">Sexo</label>
                <input type="text" name="sexo" class="form-control" value="{{ $user->sexo }}" required>
            </div>
            <div class="form-group">
                <label for="pais">Pais</label>
                <input type="text" name="pais" class="form-control" value="{{ $user->pais }}" required>
            </div>
            <div class="form-group">
                <label for="departamento">Departamento</label>
                <input type="text" name="departamento" class="form-control" value="{{ $user->departamento }}" required>
            </div>
            <div class="form-group">
                <label for="direccion">Direccion</label>
                <input type="text" name="direccion" class="form-control" value="{{ $user->departamento }}" required>
            </div>
            <div class="form-group">
                <label for="fecha_nacimiento">Fecha de Nacimiento</label>
                <input type="date" name="fecha_nacimiento" class="form-control" value="{{ $user->fecha_nacimiento }}" required>
            </div>
            <div class="form-group">
                <label for="correo_electronico">Correo Electrónico</label>
                <input type="email" name="correo_electronico" class="form-control" value="{{ $user->correo_electronico }}" required>
            </div>
            <div class="form-group">
                <label for="area_id">Área ID</label>
                <input type="text" name="area_id" class="form-control" value="{{ $user->area_id }}" required>
            </div>
            <button type="submit" class="btn btn-primary">Actualizar</button>
        </form>
        <a href="{{ route('usuarios.index') }}" class="btn btn-secondary">Cancelar</a>
    </div>
@endsection

