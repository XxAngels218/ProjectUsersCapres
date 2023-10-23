<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Area;
use PDF;

class UserController extends Controller
{
    public function index(Request $request)
    {
        $query = User::query();

        if ($request->filled('area_id')) {
            $query->where('area_id', $request->input('area_id'));
        }

        $users = $query->get();
        $areas = Area::all();
        //return $users;
        return view('usuarios.index', compact('users', 'areas'));
    }

    public function create()
    {
        $areas = Area::all(); // Get all areas
        return view('usuarios.create', compact('areas'));
    }

    public function store(Request $request)
    {
        // Validates the form data
        $request->validate([
            'nombre' => 'required',
            'apellidos' => 'required',
            'sexo' => 'required',
            'pais' => 'required',
            'departamento' => 'required',
            'direccion' => 'required',
            'fecha_nacimiento' => 'required',
            'correo_electronico' => 'required|email|unique:users',
            'area_id' => 'required'
        ]);

        // Create a new user in the database
        User::create($request->all());

        return redirect()->route('usuarios.index')->with('success', 'Usuario creado exitosamente.');
    }

    public function edit($id)
    {
        $user = User::find($id); // Get the user to edit by ID
        return view('usuarios.edit', compact('user'));
    }

    public function update(Request $request, $id)
    {
        // Validates the form data
        $request->validate([
            'nombre' => 'required',
            'apellidos' => 'required',
            'sexo' => 'required',
            'pais' => 'required',
            'departamento' => 'required',
            'direccion' => 'required',
            'fecha_nacimiento' => 'required',
            'correo_electronico' => 'required|email|unique:users,correo_electronico,' . $id,
            'area_id' => 'required'
        ]);

        // Update the user in the database
        User::find($id)->update($request->all());

        return redirect()->route('usuarios.index')->with('success', 'Usuario actualizado exitosamente.');
    }

    public function destroy($id)
    {
        User::find($id)->delete();

        return redirect()->route('usuarios.index')->with('success', 'Usuario eliminado exitosamente.');
    }
    public function show($id)
    {
        // Puedes redirigir a otra ruta o devolver una vista vacía si no necesitas la acción "show".
        return redirect()->route('usuarios.index');
    }



    public function generarInforme(Request $request)
    {
        $users = User::when($request->has('area_id'), function ($query) use ($request) {
            $query->where('area_id', $request->input('area_id'));
        })->get();

        $pdf = PDF::loadView('usuarios.informe', compact('users'));

        return $pdf->download('informe_usuarios.pdf');
    }
}
