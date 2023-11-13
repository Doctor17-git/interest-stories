<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StoryPost extends Model
{
    use HasFactory;
	
	protected $fillable = ['hashtags', 'story'];
}
