<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Account extends Authenticatable
{
    protected $table = "account_info";
    protected $fillable = [
        'user',
        'password',
        'username',
        'gender',
        'birthday',
        'email',
        'Remarks',
    ];
}
