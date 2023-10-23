<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class AreaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $governmentAreas = [
            'Recursos Humanos',
            'Informática',
            'Servicios Legales',
            'Desarrollo Económico',
            'Planificación Urbana',
            'Medio Ambiente',
            'Salud Pública',
            'Educación',
            'Finanzas',
        ];
        return [
            'nombre' => $this->faker->unique()->randomElement($governmentAreas),
        ];
    }
}
