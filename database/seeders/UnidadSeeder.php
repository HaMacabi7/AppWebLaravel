<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Unidad;

class UnidadSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
       $unidades = [
            // Equipos y accesorios
            ['codigo' => 'UNI', 'descripcion' => 'UNIDAD (EQUIPO / ACCESORIO)'],
            ['codigo' => 'PAR', 'descripcion' => 'PAR (EJ. PARLANTES)'],
            ['codigo' => 'KIT', 'descripcion' => 'KIT (TECLADO + MOUSE, ETC.)'],
            ['codigo' => 'CAJ', 'descripcion' => 'CAJA (VARIAS UNIDADES)'],
            ['codigo' => 'PAQ', 'descripcion' => 'PAQUETE / PACK'],
            ['codigo' => 'ROL', 'descripcion' => 'ROLLO (CABLES, MANGUERAS, ETC.)'],

            // Unidades de almacenamiento / capacidad
            ['codigo' => 'TB',  'descripcion' => 'TERABYTE (CAPACIDAD DE ALMACENAMIENTO)'],

            // Licencias y software
            ['codigo' => 'LIC', 'descripcion' => 'LICENCIA DE SOFTWARE'],

            // Servicios y soporte técnico
            ['codigo' => 'HRA', 'descripcion' => 'HORA DE SERVICIO TÉCNICO'],
            ['codigo' => 'DIA', 'descripcion' => 'DÍA DE SERVICIO / SOPORTE'],
            ['codigo' => 'MES', 'descripcion' => 'MES DE SERVICIO / SUSCRIPCIÓN'],
        ];

        foreach ($unidades as $unidad) {
            Unidad::updateOrCreate(
                ['codigo' => $unidad['codigo']],
                ['descripcion' => $unidad['descripcion']]
            );
        }

    }
}
