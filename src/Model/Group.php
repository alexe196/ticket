<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    protected $table = 'groups';


    public $timestamps = false;


    protected $fillable = ['id', 'name'];

    public function users()
    {
        return $this->hasMany('App\Model\User', 'group_id', 'id',);
    }
}