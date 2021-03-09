@extends('layouts.landing')

@push('styles')
   <style>
      .card-testimonios {
         background: #FFFFFF 0% 0% no-repeat padding-box !important;
         border-radius: 30px!important;
         opacity: 1;
      }
   </style> 
@endpush

@section('content')

   <div class="container-fluid courses-slider" style="background-color: #1C1D21; padding-bottom: 0px!important;">
      <div class="container-fluid courses-slider" style="padding-bottom: 0px!important;">
         <div id="mainSlider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item  active ">
                  <div class="overlay"></div>
                  <img src="{{ asset('nosotros/afiliados/header4.jpg') }}" class="d-block w-100" alt="...">
                  <div class="carousel-caption caption-show">
                     <div class="row">
                        <div class="col-6 mt-4 pl-0 pr-0">
                           <img src="{{ asset ('images/mbapro-completo.png')}}" class="logo-academia-afiliados" alt="" height="120px" width="300px">
                        </div>
                        <!--<div class="col-9">
                           <div class="d-flex align-items-center mybussiness-title-afiliados mt-4">My Business</div>
                           <div class="academia-title-afiliados" style="color: white; font-size: 20px; ">A c a d e m y p r o</div>
                        </div>-->
                     </div>
                     <div>
                    	   <h2 class="col-md-8 afiliados-title-two pt-4">Te damos la bienvenida a <b class="text-white font-weight-bold">uno de los <br> mejores y más geniales </b>programas de marketing de Afiliados del mundo</h2>
                     </div>
                  </div>

                  <!--<div class="carousel-caption caption-hidden mt-4">
                     <div class="row">
                        <div class="col-2 float-left">
                           <img src="{{ asset ('nosotros/afiliados/beyond-academy-150x150.png')}}" class="d-block logo-academia-afiliados" alt="" height="100px" width="100px">
                        </div>
                        <div class="col-9">
                           <div class="text-left">My Business</div>
                           <div class="text-left" style="color: white;">A c a d e m y p r o</div>
                        </div>
                     </div>
                  </div>-->
               </div>
            </div>
         </div>
      </div>

      <div class="col-md-12" style="background-color: #F5F5F5;">
         <div class="col-md-8 offset-md-2" style="padding: 50px 50px; text-align: center;">
            <h1 class="text-primary font-weight-bold">Comisiones Afiliados</h1>
         </div>
      </div>

      <div class="container-fluid" style="background-color: #F5F5F5; padding-bottom: 30px;">
	      <div class="row">
		      <div class="col-md-12">
			      <div class="row ml-4 mr-4">
				      <div class="col-md-2 pl-0 pr-0">
                     <div class="card card-comisiones" style="background-color: #2A91FF!important;">
                        <div class="card-body text-center">
                           <h5 class="card-title text-white comisiones-card-title nivel-body">Nivel</h5>
                        </div>
                     </div>
				      </div>
				      <div class="col-md-10">
					      <div class="row">
						      <div class="col-md-3 pl-0 pr-0">
                           <div class="card card-comisiones" style="background-color: #FFF!important;">
                              <div class="card-body text-center">
                                 <h5 class="card-title text-primary comisiones-card-title">Membresía <br> del Ser</h5>
                                 <hr class="com-line-blue">
                                 <p class="card-text">30% DE COMISIÓN POR CADA AFILIACIÓN</p>
                                 <p class="card-text">Aplica sobre el costo preferencial</p>
                              </div>
                           </div>
						      </div>
						      <div class="col-md-3 pl-0 pr-0">
                           <div class="card card-comisiones" style="background-color: #2A91FF!important;">
                              <div class="card-body text-center">
                                 <h5 class="card-title text-white comisiones-card-title">Membresía <br> del Hacer</h5>
                                 <hr class="com-line-white">
                                 <p class="card-text text-white">30% DE COMISIÓN POR CADA AFILIACIÓN</p>
                                 <p class="card-text text-white">Aplica sobre el costo preferencial</p>
                              </div>
                           </div>
						      </div>
						      <div class="col-md-3 pl-0 pr-0">
                           <div class="card card-comisiones" style="background-color: #FFF!important;">
                              <div class="card-body text-center">
                                 <h5 class="card-title text-primary comisiones-card-title">Membresía <br>  del Tener</h5>
                                 <hr class="com-line-blue">
                                 <p class="card-text">30% DE COMISIÓN POR CADA AFILIACIÓN</p>
                                 <p class="card-text">Aplica sobre el costo preferencial</p>
                              </div>
                           </div>
						      </div>
      						<div class="col-md-3 pl-0 pr-0">
                           <div class="card card-comisiones" style="background-color: #2A91FF!important;">
                              <div class="card-body text-center">
                                 <h5 class="card-title text-white comisiones-card-title">Membresía <br> del Trascender</h5>
                                 <hr class="com-line-white">
                                 <p class="card-text text-white">30% DE COMISIÓN POR CADA AFILIACIÓN</p>
                                 <p class="card-text text-white">Aplica sobre el costo preferencial</p>
                              </div>
                           </div>
						      </div>
					      </div>
				      </div>
			      </div>
		      </div>
	      </div>
      </div>

      <div class="col-md-12">
         <div class="col-md-8 offset-md-2" style="padding: 30px 50px; text-align: center;">
            <h4 style="color: white;letter-spacing: -0.57px;">Sin importar la categoría de la membresía se afilie tu referido.<br> o si lo paga mensual , anual o vitalicio.</h4>
         </div>
      </div>

      <div class="col-md-12" style="background-color: white;">
         <div class="col-md-8 offset-md-2" style="padding: 30px 20px; text-align: center;">
            <h5 style="color:#818181;">
               Por supuesto y además del valor simbólico que le damos a tu trabajo, también lo retribuimos económicamente, ofreciéndote hasta un <span style="color: #2A91FF;">10% del valor de cada membresía</span>.<br><br>
            
               <b>COMISIONES DE NUESTROS TALENTOS</b>
            </h5>

            <table class="table table-bordered">
               <thead>
                  <th>* Nivel</th>
                  <th>Membresía del Ser</th>
                  <th>Membresía de Hacer</th>
                  <th>Membresía del Tener</th>
                  <th>Membresía del Trascender</th>
               </thead>
               <tbody>
                  <tr>
                     <td></td>
                     <td colspan="4">
                        <span style="color: red; font-weight: bold;">
                           10% DE COMISION POR CADA MEMBRESÍA<br><br>
                           Aplica sobre el costo preferencial <br><br>
                        </span>
                        <span style="color: #2A91FF;">
                           o si lo paga mensual , anual o vitalicio. 
                        </span>
                     </td>
                  </tr>
               </tbody>
            </table>

         </div>
      </div>
@endsection
