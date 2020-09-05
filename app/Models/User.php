<?php

namespace App\Models;

use Spatie\Permission\Traits\HasRoles;
use Illuminate\Http\Request;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;
    // use HasRoles;

    public $table = 'wp98_users';
    protected $primaryKey = 'ID';
    
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'birthdate', 'gender','user_login', 'user_pass', 'user_nicename', 
        'user_email', 'user_url', 'user_registered', 'user_activation_key', 'user_status', 
        'display_name', 'password', 'avatar', 'provider_id', 'provider', 
        'access_token', 'referred_id', 'status', 'wallet_amount','billetera', 'bank_amount', 
        'clave', 'activacion', 'sponsor_id', 'position_id', 'tipouser', 'rol_id',
        'ladomatriz', 'puntosPro', 'puntosRed', 'puntosDer', 'puntosIzq',
        'fecha_activacion','binario','debiDer','debiIzq','codigo','correos',
        'limitar','pop_up','autenticacion','fechaver','factor2','modo_oscuro'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token'
    ];
    
    /**
     * Permite ejecutar un query para buscar por medio id o user_email
     *
     * @param string $query
     * @param string $user_email
     * @return void
     */

    public function referrals()
    {
        return $this->belongsTo(User::class, 'referred_id');
    }

    public function rol(){
        return $this->belongsTo('App\Models\Rol');
    }

    public function commissions(){
        return $this->hasMany('App\Models\Commission');
    }

    public function transfers(){
        return $this->hasMany('App\Models\Transfer');
    }
    
    public function tickets(){
        return $this->hasMany('App\Models\Ticket');
        
    }
    
    public function notificacion_tickets(){
        return $this->hasMany('App\Models\Ticket');
        
    }

    public function comentarios(){
        return $this->hasMany('App\Models\Comentario');
        
    }

    //Relación Mentor - Cursos
    public function courses(){
        return $this->hasMany('App\Models\Course', 'mentor_id', 'ID');
    }
}
