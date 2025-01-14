<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddAddressToAddressesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('addresses', function (Blueprint $table) {
            $table->string('address')->after('WardName'); // Thêm cột address kiểu string
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('addresses', function (Blueprint $table) {
            $table->dropColumn('address'); // Xóa cột address
        });
    }
}
