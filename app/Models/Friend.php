<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Friend extends Model
{
    protected $table = 'friends';
    protected $primaryKey = 'id';
    protected $fillable = ['user_id', 'friend_id', 'accepted'];
    
    
}
