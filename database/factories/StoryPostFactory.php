<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class StoryPostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'hashtags' => $this->faker->sentence,
			'story' => $this->faker->paragraph(30)
        ];
    }
}
