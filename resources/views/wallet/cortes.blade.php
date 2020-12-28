@extends('layouts.dashboardnew')

@section('content')

<div class="col-xs-12">
  <div class="box box-info" style="background-color: #007bff; border-radius: 10px;">
    <div class="box-body">

      <h4 class="box-title white">
              <span class="info-box-icon-fecha-white">
               <i class="fas fa-calendar-week"></i>
               </span>
              <p style="padding: 10px 50px;"> Filtrar Por fechas</p>
          </h4>

            <form method="POST" action="{{ route('wallet-cortes-filtros') }}">
                {{ csrf_field() }}
                
               <div class="col-md-12"> 
                <div class="form-group col-xs-12 col-md-3">
                    <label class="control-label" style="color:white">Desde</label>
                    <input class="form-control" type="date" name="fecha1" required>
                </div>
                <div class="form-group date col-xs-12 col-md-3">
                    <label class="control-label" style="color:white">Hasta</label>
                    <input class="form-control" type="date" name="fecha2" required>
                </div>
                <div class="form-group col-xs-12 col-md-4" style="margin-top: 20px;">
                    <button class="btn btn-success" type="submit">
                        buscar
                    </button>
                </div>
               </div> 
            </form>
            
        </div>
    </div>
</div>

<div class="col-xs-12">
	<div class="box box-info">
		<div class="box-body">
			<table id="mytable" class="table">
				<thead>
					<tr>
						<th class="text-center">#</th>
						@if(Auth::user()->rol_id == 0)
						<th class="text-center">Usuario</th>
						@endif
						<th class="text-center">Descripcion</th>
						<th class="text-center">Descuento</th>
						<th class="text-center">Retiro</th>
						<th class="text-center">Estado</th>
						<th class="text-center">Fecha</th>
						
					</tr>
				</thead>

				<tbody>
					@foreach ($wallets as $bille)
					<tr>
						<td class="text-center">{{ $bille->id }}</td>
						@if(Auth::user()->rol_id == 0)
						<td class="text-center">{{ $bille->username }}</td>
						@endif
						<td class="text-center">{{ $bille->tipopago }}</td>
						<td class="text-center">
						   @if ($moneda->mostrar_a_d)
                            {{$moneda->simbolo}} {{ $bille->descuento }}
                            @else
                            {{ $bille->descuento }} {{$moneda->simbolo}}
                            @endif   
						  </td>
						  
						  <td class="text-center">
						   @if ($moneda->mostrar_a_d)
                            {{$moneda->simbolo}} {{ $bille->monto }}
                            @else
                            {{ $bille->monto }} {{$moneda->simbolo}}
                            @endif   
						  </td>
						  
						  <td class="text-center">
						      @if($bille->estado == 0)
						      En espera
						      @elseif($bille->estado == 1)
						      Aprobada
						      @elseif($bille->estado == 2)
						      Cancelado
						      @endif
						  </td>

						<td class="text-center">{{ date('d-m-Y', strtotime($bille->fechasoli)) }}</td>
					</tr>
					@endforeach
				</tbody>
			</table> 
		</div>
	</div>
</div>
@endsection
@include('usuario.componentes.scripBotones')