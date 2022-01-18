<?php

namespace App\Models;

use CodeIgniter\Model;
use Faker\Generator;

class Reservation extends Model
{
    protected $table      = 'reservation';
    protected $primaryKey = 'id_r';
    protected $allowedFields = ['name', 'rtype', 'phone', 'rdate', 'description'];

    protected $returnType     = 'array';
    protected $useTimestamps = true;
    protected $createdField  = 'created_at';
    protected $updateField  = 'update_at';


    public function fake(Generator &$faker)
    {
        return [
            'name'  => $faker->name,
            'rdate' => $faker->dateTimeBetween($startDate = 'now', $endDate = '+3 years')->format('Y-m-d'),
            'phone' => $faker->tollFreePhoneNumber,
            'rtype' => $faker->randomElements(['Reservation Type 1', 'Reservation Type 2', 'Reservation Type 3']),
            'created_at'  => $faker->dateTime()->format('Y-m-d H:i:s'),
            'updated_at' => $faker->dateTime()->format('Y-m-d H:i:s')
        ];
    }
}