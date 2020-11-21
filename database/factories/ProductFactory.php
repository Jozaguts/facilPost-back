<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->word,
            'sale_price' => $this->faker->numberBetween($min = 100, $max = 500),
            'discount' => $this->faker->numberBetween($min = 0, $max = 75),
            'image' => $this->faker->imageUrl($width = 320, $height = 480),
        ];
    }
}
