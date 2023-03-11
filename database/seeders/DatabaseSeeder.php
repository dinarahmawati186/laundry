<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::table('outlets')->insert([
            [
                'nama'=>'Toko Dina Laundry',
                'alamat'=>'Sindangrasa',
                'tlp'=>'087712370378'
            ],

            [
                'nama'=>'Toko Jisoo Laundry',
                'alamat'=>'Padaherang',
                'tlp'=>'011223344556'
            ],
        ]);

        DB::table('users')->insert([
            [
                'nama'=>'Administrator',
                'username'=>'admin',
                'password'=>bcrypt('1234'),
                'role'=>'admin',
                'outlet_id'=>1,
            ],

            [
                'nama'=>'Kasir',
                'username'=>'kasir',
                'password'=>bcrypt('1234'),
                'role'=>'kasir',
                'outlet_id'=>1,
            ],

            [
                'nama'=>'Pemilik',
                'username'=>'owner',
                'password'=>bcrypt('1234'),
                'role'=>'owner',
                'outlet_id'=>1,
            ],
        ]);

        // DB::table('pakets')->insert([
        //     [
        //         'nama_paket' => 'Reguler',
        //         'harga' => 7000,
        //         'jenis' => 'kiloan',
        //         'outlet_id'=>1,
        //     ],

        //     [
        //         'nama_paket' => 'Bed Cover',
        //         'harga' => 5000,
        //         'jenis' => 'bed_cover',
        //         'outlet_id'=>1,
        //     ],
        // ]);

        DB::table('members')->insert([
           

            [
                'nama'=>'Kim Namjoon',
                'jenis_kelamin'=>'L',
                'alamat'=>'Sukanagara',
                'tlp'=>'087712370986'
            ],

            [
                'nama'=>'Yuni Herlino',
                'jenis_kelamin'=>'P',
                'alamat'=>'Padaherang',
                'tlp'=>'087712378756'
            ],
        ]);
    }
}
