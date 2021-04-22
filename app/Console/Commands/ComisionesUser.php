<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Carbon\Carbon;
// modelos
use App\Models\User;
use App\Models\SettingsRol;
// controladores
use App\Http\Controllers\ComisionController;

class ComisionesUser extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'comisiones:user';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Entregar Comisiones User';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        try {
            \Log::info('Activado cron de comisiones');
            $comi = new ComisionController;              
            $users = User::where('rol_id', '!=', 0)->orderBy('ID', 'ASC')->get();

            foreach ($users as $user) {
                $comi->verificarCompras($user->ID);
            }
            
            $this->info('Comisiones Verificadas Correctamente');
            
        } catch (\Throwable $th) {
            $this->info($th);
        }
    }
}