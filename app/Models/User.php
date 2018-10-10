<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class User extends Model {

    protected $table = 'users';
    protected $primaryKey = 'id';
    protected $fillable = ['first_name', 'last_name', 'age', 'gender'];

    public function friendsOfCurrentUser() {

        return $this->belongsToMany(\App\Models\User::class, 'friends', 'user_id', 'friend_id');
    }

    public function friendsOf() {

        return $this->belongsToMany(\App\Models\User::class, 'friends', 'friend_id', 'user_id');
    }

    public function friends() {

        return $this->friendsOfCurrentUser()->wherePivot('accepted', true)->get()
                        ->merge($this->friendsOf()->wherePivot('accepted', true)->get());
    }

    
}
