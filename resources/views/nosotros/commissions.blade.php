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
    <div class="banner-coaches">
        <img src="{{ asset('nosotros/afiliados/header.jpg') }}" class="w-100" alt="...">

        <div class="banner-coaches-text">
            <div class="row">
                <div class="col-12 mt-5 text-center">
                    <img src="{{ asset ('images/mbapro-completo.png')}}"  class="banner-coaches-logo">
                </div>
                <div class="col-12 mt-5 text-center text-white pt-4"">
                    Te damos la bienvenida a uno de los  mejores y más geniales programas de marketing de Afiliados del mundo
                </div>
                <div class="col-12 mt-3 text-center">
                    <img src="{{ asset ('images/line-blue.png')}}" class="banner-coaches-line">
                </div>
            </div>
        </div>
    </div>

    <div style="background-color: #F5F5F5; padding: 20px 5%; text-align: center;">
        <div>
           <h1 class="text-primary font-weight-bold">Comisiones Afiliados</h1>
        </div>

        <div class="row p-5">
            <div class="col-xl-2 col-lg-2 col-12 pl-0 pr-0">
                <div class="card card-comisiones" style="background-color: #2A91FF!important; height: 100px;">
                    <div class="card-body text-center">
                        <h5 class="card-title text-white comisiones-card-title nivel-body">Nivel</h5>
                    </div>
                </div>
            </div>
            <div class="col-xl-10 col-lg-10 col-12">
                <div class="row">
                    <div class="col-xl-3 col-lg-3 col-md-6 col-12 pl-0 pr-0">
                        <div class="card card-comisiones" style="background-color: #FFF!important;">
                            <div class="card-body text-center">
                                <h5 class="card-title text-primary comisiones-card-title">Membresía <br> del Ser</h5>
                                <hr class="com-line-blue">
                                <p class="card-text">30% DE COMISIÓN POR CADA AFILIACIÓN</p>
                                <p class="card-text">Aplica sobre el costo preferencial</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 col-12 pl-0 pr-0">
                        <div class="card card-comisiones" style="background-color: #2A91FF!important;">
                            <div class="card-body text-center">
                                <h5 class="card-title text-white comisiones-card-title">Membresía <br> del Hacer</h5>
                                <hr class="com-line-white">
                                <p class="card-text text-white">30% DE COMISIÓN POR CADA AFILIACIÓN</p>
                                <p class="card-text text-white">Aplica sobre el costo preferencial</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 col-12 pl-0 pr-0">
                        <div class="card card-comisiones" style="background-color: #FFF!important;">
                            <div class="card-body text-center">
                                <h5 class="card-title text-primary comisiones-card-title">Membresía <br>  del Tener</h5>
                                <hr class="com-line-blue">
                                <p class="card-text">30% DE COMISIÓN POR CADA AFILIACIÓN</p>
                                <p class="card-text">Aplica sobre el costo preferencial</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 col-12 pl-0 pr-0">
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

    <div style="padding: 5% 25%; text-align: center;">
        <h4 style="color: white; letter-spacing: -0.57px;">Sin importar la categoría de la membresía se afilie tu referido o si lo paga mensual, anual o vitalicio.</h4>
    </div>

    <div class="pb-5" style="background-color: white; text-align:center;">
        <div style="padding: 5% 25%; font-size: 22px; line-height: 30px; font-weight: 400; color:#696969;">
            Por supuesto y además del valor simbólico que le damos a tu trabajo, también lo retribuimos económicamente, ofreciéndote hasta un 10% del valor de cada membresía.
        </div>

        <div class="row pl-5 pr-5 ml-5 mr-5">
            <div class="col-xl-2 col-lg-2 col-12">
                <div class="card card-comisiones" style="background-color: #F2F2F2!important; height: 100px;">
                    <div class="card-body text-center">
                        <h5 class="card-title comisiones-card-title nivel-body" style="color: #1C1E21; font-weight: bold;">Nivel</h5>
                    </div>
                </div>
            </div>
            <div class="col-xl-10 col-lg-10 col-12">
                <div class="row">
                    <div class="col-xl-3 col-lg-3 col-md-6 col-12 pl-0">
                        <div class="card card-comisiones" style="background-color: #2A91FF!important;">
                            <div class="card-body text-center">
                                <h5 class="card-title text-white comisiones-card-title" style="font-weight: bold;">Membresía <br> del Ser</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 col-12 pl-0">
                        <div class="card card-comisiones" style="background-color: #F2F2F2!important;">
                            <div class="card-body text-center">
                                <h5 class="card-title comisiones-card-title" style="color: #1C1E21; font-weight: bold;">Membresía <br> del Hacer</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 col-12 pl-0">
                        <div class="card card-comisiones" style="background-color: #2A91FF!important;">
                            <div class="card-body text-center">
                                <h5 class="card-title text-white comisiones-card-title" style="font-weight: bold;">Membresía <br> del Tener</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 col-12 pl-0">
                        <div class="card card-comisiones" style="background-color: #F2F2F2!important;">
                            <div class="card-body text-center">
                                <h5 class="card-title comisiones-card-title" style="color: #1C1E21; font-weight: bold;">Membresía <br> del Trascender</h5>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <div class="row pl-5 pr-5 ml-5 mr-5 pt-3">
            <div class="col-xl-2 col-lg-2 col-12"></div>
            <div class="col-xl-10 col-lg-10 col-12 p-3" style="background-color: #F2F2F2; border-radius: 0px 0px 15px 15px !important;">
                <div style="font-size: 26px; font-weight: 500; color: #1C1E21;">10% DE COMISIÓN POR CADA MEMBRESÍA</div>

                <div class="mt-1" style="font-size: 20px; font-weight: bold; color: #1C1E21;">Aplica sobre el costo preferencial</div>

                <div class="mt-4" style="font-size: 20px; font-weight: 400; color: #2A91FF">O si lo paga mensual, anual o vitalicio</div>
            </div>
        </div>
    </div>

   <!--<div class="container-fluid courses-slider" style="background-color: #1C1D21; padding-bottom: 0px!important;">
      <div class="container-fluid courses-slider" style="padding-bottom: 0px!important;">
         <div id="mainSlider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item  active ">
                  <div class="overlay"></div>
                  <img src="{{ asset('nosotros/afiliados/header.jpg') }}" class="d-block w-100" alt="...">
                  <div class="carousel-caption caption-show">
                     <div class="row">
                        <div class="col-6 mt-5 pl-0 pr-0">
                           <img src="{{ asset ('images/mbapro-completo.png')}}" class="logo-academia-afiliados" alt="" width="300px">
                        </div>
                     </div>
                     <div>
                    	   <h2 class="col-md-8 afiliados-title-two pt-5">Te damos la bienvenida a <b class="text-white font-weight-bold">uno de los <br> mejores y más geniales </b>programas de marketing de Afiliados del mundo</h2>
                     </div>
                  </div>
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
      </div>-->
@endsection
