<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Award extends Model{    
    protected $table = 'awards';

    protected $fillable = ['membership_id', 'title', 'image'];

    public function membership(){
        return $this->belongsTo('App\Models\Membership');
    }

     public function users(){
        return $this->belongsToMany('App\Models\User', 'awards_users', 'award_id', 'user_id')->withTimestamps();
    }
}
