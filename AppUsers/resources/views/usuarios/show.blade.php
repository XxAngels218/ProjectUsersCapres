@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Detalles del Usuario</h1>
        <ul>
            <li><strong>ID:</strong> {{ $user->id }}</li>
            <li><strong>Nombre:</strong> {{ $user->nombre }}</li>
            <!-- Agregar otros detalles del usuario aquí -->
        </ul>
        <a href="{{ route('usuarios.index') }}" class="btn btn-primary">Volver</a>
    </div>
@endsection
