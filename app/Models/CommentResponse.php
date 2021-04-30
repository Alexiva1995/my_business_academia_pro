<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CommentResponse extends Model
{

	protected $table = 'comment_responses';

    protected $fillable = ['comment_id', 'user_id', 'comment', 'date'];

    public function comment(){
        return $this->belongsTo('App\Models\Comment');
    }

    public function user(){
        return $this->belongsTo(User::class, 'user_id', 'ID');
    }
}
