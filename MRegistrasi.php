<?php

namespace App\Models;

use CodeIgniter\Model;

class MRegistrasi extends Model
{
    protected $table = 'member';
    protected $PrimaryKey ='id';
    protected $allowedFields = ['nama', 'email', 'password'];
}