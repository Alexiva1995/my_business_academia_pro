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
                           <img src="{{ asset ('images/mbapro-completo.png')}}" class="logo-academia-afiliados" alt="" width="380px">
                        </div>
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

      <div class="col-md-12 py-5" style="background-color: #FFFFFF;">
         <div class="col-md-8 offset-md-2" style="padding: 50px 50px; text-align: center;">
            <h3>El programa de <b class="text-primary">My Business Academy Pro</b> te ayuda a que ganes dinero por aprender.</h3>
         </div>
      </div>
      <div class="col-md-12 py-5" style="background-color: #FFFFFF;"></div>
      <div class="col-md-12 py-5" style="background-color: #2A91FF;">
         <div class="row">
            <div class="col-md-8">
               <img src="{{ asset('nosotros/afiliados/laptop.png') }}" class="img-fluid img-laptop" alt="...">
            </div>
            <div class="col-md-4  d-flex align-items-center subtitle-laptop-one">
               <h5 class="text-white">Contamos con cientos de cursos disponibles en 10 idiomas diferentes, listos para que los compartas con un solo click y puedas así ganar dinero a través de cada compra que recomiendes.</h5>
            </div>
         </div>
         <div class="col-md-12 subtitle-laptop-two">
            <h5 class="text-white">Contamos con cientos de cursos disponibles en 10 idiomas diferentes, listos para que los compartas con un solo click y puedas así ganar dinero a través de cada compra que recomiendes.</h5>
         </div>
      </div>

      <div class="col-md-12 afiliados-box " style="background-color: #F5F5F5; padding-top: 150px;">
         <div class="row" >
            <div class="col-lg-4 col-xs-8 offset-lg-2 mt-4">
               <div class="box">
                  <img src="{{ asset('nosotros/afiliados/registrateblue.svg') }}" alt="" height="50px" width="50px">
                  <div class="box-title mt-2">
                     <h4 class="text-primary">Regístrate</h4>
                  </div>
                  <div class="box-text p-2">
                     <span>Intégrate a nuestra comunidad, aprende todo lo que necesitas para ser un emprendedor PRO y como miles de estudiantes alrededor del mundo regístrate a nuestro programa de Afiliados de MBA PRO y comienza a ganar dinero de inmediato.</span>
                  </div>
               </div><!--Box end-->
            </div>
            <div class="col-lg-4 col-xs-12 mt-4">
               <div class="box">
                  <img src="{{ asset('nosotros/afiliados/capacitateblue.svg') }}" alt="" height="50px" width="50px">
						<div class="box-title mt-2">
							<h4 class="text-primary">Capacítate</h4>
						</div>
						<div class="box-text p-2">
							<span>Te ofrecemos cientos de cursos para que puedas aprender lo mejor con los mejores Coaches y mentores.</span>
						</div>
				  </div><!--Box end-->
            </div>
         </div>

         <div class="row">
            <div class="col-lg-4 col-xs-12 offset-lg-2">
               <div class="box">
                  <img src="{{ asset('nosotros/afiliados/recomiendanosblue.svg') }}" alt="" height="50px" width="50px">
                  <div class="box-title mt-2">
                     <h4 class="text-primary">Recomiéndanos</h4>
                  </div>
                  <div class="box-text p-2">
                     <span>Comparte los cursos que más te gusten con tus contactos. Contamos con herramientas de personalización de enlaces para ofrecerte seguridad y claridad en tus recomendaciones.</span>
                  </div>
               </div>
            </div>
            <div class="col-lg-4 col-xs-12">
               <div class="box">
                  <img src="{{ asset('nosotros/afiliados/dineroblue.svg') }}" alt="" height="50px" width="50px">
         			<div class="box-title mt-2">
         				<h4 class="text-primary">Gana dinero</h4>
         			</div>
         			<div class="box-text p-2">
         				<span>Gánate el 30% en comisiones por cada afiliado que se inscriba, tu ganancia aumenta conforme el alumno vaya subiendo de nivel en su aprendizaje.</span>
         			</div>
         		</div>
            </div>
         </div>
      </div>

      <div class="container-fluid img-background-razones pb-5">
         <div class="col-md-8 offset-md-2 py-5" style="text-align: center;">
            <h3 class="text-white">¿Por qué miles de personas ya eligieron el Programa de <b class="text-white">Afiliados de MBA PRO?</b></h3>
         </div>

         <div class="col-md-6 offset-md-4">
            <h2 class="text-primary font-weight-bold d-flex align-items-center"><b class="text-primary" style="font-size: 80px;">5</b> Poderosas Razones</h2>
         </div>
         
         <div class="row">
            <div class="col-lg-4 offset-md-2">
               <div class="box-title mt-2">
                  <h1 class="text-primary font-weight-bold" style="font-size: 60px;">01</h1>
         		</div>
               <div class="box-text p-2">
                  <span class="text-white">Tenemos los mejores precios del ramo educativo online, descuentos extraordinarios a nuestra comunidad y ofrecemos en general la mayor tasa de conversión del mercado de cursos digitales, para que alcances tu independencia financiera en mucho menos tiempo.</span>
               </div>
               <hr width="70" style="height: 5px;margin-left: 2%;margin-right: 25%;background-color: #2A91FF;">
            </div><!--Box end-->
            <div class="col-lg-4 offset-md-1 seccion-razones">
					<div class="box-title mt-2">
						<h1 class="text-primary font-weight-bold" style="font-size: 60px;">02</h1>
					</div>
					<div class="box-text p-2">
						<span class="text-white">Ofrecemos una experiencia sumamente fácil, solo inscríbete y recomienda compartiendo tu link de afiliado el cual se genera automáticamente desde tu registro, sin letras chiquitas ni clausulas que bloqueen tus ganancias.</span>
               </div>
               <hr width="70" style="height: 5px;margin-left: 2%;margin-right: 25%;background-color: #2A91FF;">
            </div>
         </div><!--Row end-->

         <div class="row">
            <div class="col-lg-4 offset-md-2">
               <div class="box-title mt-2">
                  <h1 class="text-primary font-weight-bold" style="font-size: 60px;">03</h1>
               </div>
               <div class="box-text p-2">
                  <span class="text-white">Ingresa a <a class="text-primary" href="https://mybusinessacademypro.com/">www.mybusinessacademypro.com</a>, crea tu cuenta de forma gratuita rellenando algunos datos de forma breve y listo comienza a recomendar aquellos cursos que te encanten.</span>
               </div>
               <hr width="70" style="height: 5px;margin-left: 2%;margin-right: 25%;background-color: #2A91FF;">
            </div><!--Box end-->

            <div class="col-lg-4 offset-md-1 seccion-razones">
      			<div class="box-title mt-2">
      				<h1 class="text-primary font-weight-bold" style="font-size: 60px;">04</h1>
      			</div>
               <div class="box-text p-2">
                  <span class="text-white">Gozarás de links ilimitados para compartir tu precio especial:</span>
               </div>
               <hr width="70" style="height: 5px;margin-left: 2%;margin-right: 25%;background-color: #2A91FF;">   
            </div><!--Box end-->
         </div><!--Row end-->

         <div class="row">
            <div class="col-lg-4 offset-md-2">
               <div class="box-title mt-2">
                  <h1 class="text-primary font-weight-bold" style="font-size: 60px;">05</h1>
               </div>
               <div class="box-text p-2">
                  <span class="text-white">Gracias a nuestras pasarelas de pago universales, puedes obtener tu dinero como mejor te convenga sin importar en que parte del mundo te encuentres.</span>
               </div>
               <hr width="70" style="height: 5px;margin-left: 2%;margin-right: 25%;background-color: #2A91FF;">
            </div>
         </div>
      </div>
   </div>
@endsection
