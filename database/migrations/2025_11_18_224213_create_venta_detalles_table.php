<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('venta_detalles', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('venta_id');
            $table->unsignedBigInteger('producto_id');
            $table->decimal('cantidad', 8, 2);
            $table->decimal('valor_unitario', 8, 2);
            $table->decimal('porcentaje_impuesto', 4, 2);
            $table->decimal('impuesto', 8, 2);
            $table->decimal('precio_unitario', 8, 2);
            $table->decimal('total', 8, 2);
            //$table->timestamps();

            // Claves foráneas
            $table->foreign('venta_id')
                ->references('id')
                ->on('ventas')
                ->onDelete('cascade'); // si se borra la venta borra sus detalles

            $table->foreign('producto_id')
                ->references('id')
                ->on('productos')
                ->onDelete('restrict'); // evita borrar un producto usado en ventas

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('venta_detalles');
    }
};
