<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\Area;

class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nombre' => $this->faker->firstName,
            'apellidos' => $this->faker->lastName,
            'sexo' => $this->faker->randomElement(['M', 'F']),
            'pais' => $this->faker->country,
            'departamento' => $this->faker->state,
            'direccion' => $this->faker->address,
            'fecha_nacimiento' => $this->faker->date,
            'correo_electronico' => $this->faker->unique()->safeEmail,
            'area_id' => $this->faker->randomElement(['1','9']),
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    public function unverified()
    {
        return $this->state(function (array $attributes) {
            return [
                'email_verified_at' => null,
            ];
        });
    }
}
