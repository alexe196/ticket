<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    protected $table = 'users';


    public $timestamps = false;


    protected $fillable = ['id', 'name', 'email', 'group_id'];

    public function group(){
        return $this->belongsTo('App\Model\Group', 'group_id', 'id');
    }
}