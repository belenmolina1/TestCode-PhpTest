<?php

namespace Tests\app\Controllers;

use CodeIgniter\I18n\Time;
use CodeIgniter\Test\FeatureTestTrait;
use Tests\Support\Database\DatabaseTestCase;

class ReservationConTest extends DatabaseTestCase
{
    use FeatureTestTrait;
    //    use FeatureTestTrait;

    public function testCanViewReservationView()
    {
        $response = $this->call('get', 'en/reservation');
        $response->assertStatus(200);
        $response->assertSee('Reservation Form');
    }

    public function testCanViewReservationListTable()
    {
        $response = $this->call('get', 'en/reservation-list');
        $response->assertStatus(200);
        $response->assertSee('Reservation List');
    }

    public function testNewReservation()
    {
        $newReservation = [
            'name' => 'foo',
            'phone' => '22222222222',
            'rtype' => 'Reservation Type 1',
            'rdate' => Time::now()
        ];
        $response = $this->post('/new', $newReservation);

        $this->seeInDatabase('reservation', $newReservation);

        $response->assertJSONFragment(['status' => 'Reservation created Ok']);
        $response->assertStatus(200);
    }

    public function testCanModifReservation()
    {
        db_connect()->table('reservation')->truncate();

        $reservation = fake(\App\Models\Reservation::class, null, true);

        $this->seeInDatabase('reservation', [
            'id_r' => $reservation['id_r']
        ]);

        $response = $this->post('/modif', [
            'reservation_id' => $reservation['id_r']
        ]);

        $response->assertJSONExact(['reservation' => $reservation]);
    }

    public function testCanSaveChange()
    {
        db_connect()->table('reservation')->truncate();

        $reservation = fake(\App\Models\Reservation::class, null, true);

        $this->seeInDatabase('reservation', $reservation);

        $newData = [
            'reservation_id' => $reservation['id_r'],
            'name' => 'foo',
            'phone' => '22222222222222',
            'rtype' => 'Reservation Type 1',
            'rdate' => Time::now()->subYears(20)->format('Y-m-d H:i:s'),
            'description' => 'foo bar'
        ];

        $response = $this->post('/saveChange', $newData);

        $newData['id_r'] = $newData['reservation_id'];
        unset($newData['reservation_id']);

        $this->seeInDatabase('reservation', $newData);
        $response->assertJSONExact(['status' => 'Update Successfully!']);
        $response->assertStatus(200);
    }


    public function testCanEraseReservation()
    {
        $reservation = fake(\App\Models\Reservation::class, null, true);

        $this->seeInDatabase('reservation', $reservation);

        $response = $this->post('/erase', [
            'reservation_id' => $reservation['id_r']
        ]);

        $this->dontSeeInDatabase('reservation', [
            'id_r' => $reservation['id_r']
        ]);
        $response->assertStatus(200);
    }
}