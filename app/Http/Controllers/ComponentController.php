<?php

namespace App\Http\Controllers;
use Spatie\Permission\Models\Role;
use Illuminate\Http\Request;
use App\Http\Requests;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Crypt; 
use DB; 
use Auth;  
use Carbon\Carbon;

// modelo
use App\Models\User; 
use App\Models\Settings;
use App\Models\Component;

use App\Http\Controllers\IndexControllers;

class ComponentController extends Controller
{
    function savehome(Request $datos){
		
        $drop = new Component();
        
        $dopzone = Component::all();
        $cantidad = count($dopzone);
     
        if($cantidad < 5){
            if ($datos->file('file')) {
                $imagen = $datos->file('file');
                $nombre_imagen = 'drop_'.time().'.'.$imagen->getClientOriginalExtension();
                $path = public_path() .'/drop';
                $imagen->move($path, $nombre_imagen);
                $drop->slider = $nombre_imagen;
                $drop->save();

                return redirect('admin/settings/sistema')->with('msj-exitoso', 'El banner ha sido cargado con éxito');
            }
        }else{
            return redirect('admin/settings/sistema')->with('msj-erroneo', 'Ya tiene la cantidad de banners permitidos');
        }
        
    }
    
    
    public function deleteDrop($id){
        
        $funciones = new IndexController;
        
        $slider = Component::find($id);
        $slider->delete();
        
        $funciones->msjSistema('Eliminado con exito', 'success');
        return redirect()->back();
    }
    
    
}