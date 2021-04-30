<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Membership;
use App\Models\UpgradeMessage;
use App\Models\Award;

class MembershipController extends Controller
{
    public function index(){
        // TITLE
        view()->share('title', 'Listado de Membresías');
        
        $membresias = Membership::with('upgrade_message', 'award')
                            ->orderBy('id', 'ASC')
                            ->get();
        
        return view('admin.memberships')->with(compact('membresias'));
    }

    public function update(Request $request){
        $membresia = Membership::find($request->membership_id);
        $membresia->fill($request->all());

        if ($request->hasFile('image')){
            $file = $request->file('image');
            $name = $membresia->id.".".$file->getClientOriginalExtension();
            $file->move(public_path().'/uploads/images/memberships', $name);
            $membresia->image = $name;
        }

        $membresia->save();

        $premio = Award::where('membership_id', '=', $membresia->id)->first();
        $premio->name = $request->award_title;
        if ($request->hasFile('award')){
            $file2 = $request->file('award');
            $name2 = $premio->id.".".$file2->getClientOriginalExtension();
            $file2->move(public_path().'/uploads/images/memberships/awards', $name2);
            $premio->image = $name2;
        }
        $premio->save();
        

        return redirect('admin/memberships')->with('msj-exitoso', 'Los datos de la membresía han sido actualizados con éxito');
    }

    public function update_message(Request $request){
        $mensaje = UpgradeMessage::find($request->message_id);
        $mensaje->fill($request->all());

        if ($request->hasFile('image')){
            $file = $request->file('image');
            $name = $mensaje->id.".".$file->getClientOriginalExtension();
            $file->move(public_path().'/uploads/images/memberships/upgradeMessage', $name);
            $mensaje->image = $name;
        }
        $mensaje->save();

        return redirect('admin/memberships')->with('msj-exitoso', 'Los datos del mensaje de Upgrade han sido actualizados con éxito');
    }
}
