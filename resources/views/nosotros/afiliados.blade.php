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
                           <img src="{{ asset ('images/mbapro-completo.png')}}" class="logo-academia-afiliados" alt="" height="100px" width="250px">
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

      <div class="container-fluid img-background-razones">
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

      <div class="col-md-12" style="background-color: #F5F5F5;">
         <div class="col-md-8 offset-md-2" style="padding: 50px 50px; text-align: center;">
            <h1 class="text-primary font-weight-bold">Comisiones Afiliados</h1>
         </div>
      </div>

      <div class="container-fluid" style="background-color: #F5F5F5;">
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

      <div class="col-md-12" style="background-color: #EDEDED;">
         <div class="col-md-8 offset-md-2" style="padding: 30px 50px; text-align: center;">
            <h4 style="color:#818181;letter-spacing: -0.57px;">Sin importar la categoría de la membresía se afilie tu referido.<br> o si lo paga mensual , anual o vitalicio.</h4>
         </div>
      </div>

      <div class="col-md-12" style="background-color: #fff;">
         <div class="col-md-8 offset-md-2" style="padding: 20px 15px 40px 15px; text-align: justify;">
            <h4>Te ofrecemos todo el conocimiento, el desarrollo de actitudes y las herramientas que necesitas para convertirte en un gran Speaker y Coach Master de My Business Academy Pro </h4>

            <h5>Si ya tienes la formación o experiencia en el medio de comunicación y manejo de equipos, pero ¿quieres obtener proyección internacional? Aquí encontrarás toda la información para digitalizar tus cursos y maximizar su alcance en línea.</h5>
            <h5><b>¡Haz negocio con nosotros! y ¡Súmate a nuestro equipo de entrenadores!</b></h5><br>

            <center><a type="button" class="btn btn-primary btn-register-header" href="{{ route('log').'?act=1' }}">REGISTRATE AQUÍ</a></center><br>

            Con la atención y el cuidado que te mereces, valoraremos tu trabajo y sobre eso daremos seguimiento a algunas posibilidades. Pero para ello, requerimos que con la formalidad que se requiere, tengas consciencia de lo siguiente: <br>
            <ul>
               <li>My Business Academy Pro te ofrece una posibilidad, la cual necesita tú mayor compromiso, responsabilidad y colaboración.</li>   
               <li>Para nosotros es importante que el trabajo de todos sea valorado, por ello tenemos requisitos importantes, así como confianza en que podrás cumplir a cabalidad el objetivo que nos mueve como grupo, que sobre todo yace en la satisfacción de nuestro consumidor final, el impacto positivo que queremos dar al mundo y la trascendencia del material que ofrecemos, por ello nuestro compromiso en la calidad de todo nuestro modelo académico.</li>
               <li>Te ofrecemos la exposición internacional que siempre has soñado, apalancado de nuestra comunidad en más de 80 países y con la posibilidad de seguir creciendo por el mundo entero, le daremos un tratamiento impecable a cada material, contando con el mejor equipo técnico, operativo, logístico, administrativo y de creación de contenidos para que, sumado a extraordinarias locaciones, hagamos que expreses lo mejor de ti.</li>
            </ul>

            <div class="row">
               <div class="col-md-2"></div>
               <div class="col-md-8">
                  <img src="{{ asset('nosotros/gratis-Blog/bienvenido.jpg') }}" class="card-img-top" alt="..." style="border: solid 0;">
                  <div style="background-color: #2A91FF; color: white; padding-top: 12px; padding-bottom: 12px; text-align: center; font-weight: bold;">
                     <a href="#" data-toggle="modal" data-target="#video1" style="text-decoration: none; color: white;"><i class="fa fa-play-circle"></i> Testimonio de José Gordo</a>
                  </div>
               </div>
               <div class="col-md-2"></div>
            </div>
         </div>
      </div>

      <div class="col-md-12 pt-5" style="background: #2A91FF;">
         <div class="new-courses-section-title mb-2">
            <h1 class="text-center font-weight-bold" style="color: white;">TESTIMONIOS</h1>
         </div>
         
         <!--Carousel Wrapper-->
         <div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">
            <!--Indicators-->
            <ol class="carousel-indicators">
               <li data-target="#multi-item-example" data-slide-to="0" class=""></li>
               <li data-target="#multi-item-example" data-slide-to="1" class="active"></li>
            </ol>
            <!--/.Indicators-->

            <!--Slides-->
            <div class="carousel-inner" role="listbox">
               <!--First slide-->
               <div class="carousel-item">
                  <div class="row align-items-center justify-content-center" style="margin-bottom:50px!important;">
                     <div class="col-md-3 mb-2">
                        <div class="card card-testimonios">
                           <div class="card-body text-center">
                              <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                              <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                              <img class="mx-auto" src="https://mytradingacademypro.com/office/images/Academia/estudiante1.jpg" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                              <h5 class="text-center">Nombre Estudiante</h5>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-3 mb-2">
                        <div class="card card-testimonios">
                           <div class="card-body text-center">
                              <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                              <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                              <img class="mx-auto" src="https://mytradingacademypro.com/office/images/Academia/estudiante2.jpg" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                              <h5 class="text-center">Nombre Estudiante</h5>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-3 mb-2">
                        <div class="card card-testimonios">
                           <div class="card-body text-center">
                              <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                              <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                              <img class="mx-auto" src="https://mytradingacademypro.com/office/images/Academia/estudiante3.jpg" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                              <h5 class="text-center">Nombre Estudiante</h5>
                           </div>
                        </div>
                     </div>
                  </div><!--END ROW-->
               </div><!--/.First slide-->

               <!--Second slide-->
               <div class="carousel-item active">
                  <div class="row align-items-center justify-content-center" style="margin-bottom:50px!important;">
                     <div class="col-md-3 mb-2">
                        <div class="card card-testimonios">
                           <div class="card-body text-center">
                              <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                              <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                              <img class="mx-auto" src="https://mytradingacademypro.com/office/images/Academia/estudiante1.jpg" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                              <h5 class="text-center">Nombre Estudiante</h5>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-3 mb-2">
                        <div class="card card-testimonios">
                           <div class="card-body text-center">
                              <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                              <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                              <img class="mx-auto" src="https://mytradingacademypro.com/office/images/Academia/estudiante2.jpg" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                              <h5 class="text-center">Nombre Estudiante</h5>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-3 mb-2">
                        <div class="card card-testimonios">
                           <div class="card-body text-center">
                              <h5 class="card-title text-center text-secondary fontweight-bold"><i class="fa fa-quote-left" aria-hidden="true"></i></h5>
                              <p class="card-text text-center">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                              <img class="mx-auto" src="https://mytradingacademypro.com/office/images/Academia/estudiante3.jpg" alt="Card image cap" style="max-width:70px; max-height:70px; border-radius:50%;">
                              <h5 class="text-center">Nombre Estudiante</h5>
                           </div>
                        </div>
                     </div>
                  </div><!--END ROW-->
               </div><!--/.Second slide-->
            </div>
         </div>
      </div>

      <div class="col-md-12" style="background-color: #EDEDED;">
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

      <div class="col-md-12" style="background-color: #fff;">
         <div class="col-md-8 offset-md-2" style="padding: 20px 15px 40px 15px; text-align: justify;">
            <div class="row">
               <div class="col-md-2"></div>
               <div class="col-md-8">
                  <img src="{{ asset('nosotros/afiliados/live-streaming.jpg') }}" class="card-img-top" alt="..." style="border: solid 0;">
               </div>
               <div class="col-md-2"></div>
            </div>

            <br>
            <h4>Haremos producciones a lo largo de todo el mundo y presentaremos a los mejores coaches para tu formación y desarrollo. <br>
            Personas que tengan toda el conocimiento y experiencia para ofrecerte valor en lo que sea que quieras desarrollar.</h4>

            <h5>Pero ¿Qué temas puedo encontrar en MBA PRO?</h5>
            <ul>
               <li><b>Desarrollo Humano</b></li>   
               <li><b>Finanzas</b></li>
               <li><b>Ventas</b></li>
               <li><b>Emprendurismo</b></li>
               <li><b>Fintech</b></li>
               <li><b>Real Estate </b></li>
               <li><b>Enseñanza Aprendizaje</b></li>
               <li><b>Bienestar Integral</b></li>
            </ul>

            Si tienes algún tema de valor que ofrecernos, envíanos tu propuesta y con gusto nuestro comité de talentos medirá y expondrá las posibilidades que podemos ofrecerte a través de un proceso formal de varios filtros, porque como ya lo mencionamos, nuestra principal preocupación es la calidad de la información que ofrecemos, una vez que pase todas las validaciones, te contactaremos por teléfono y correo a los datos que nos dejaste en tu formulario para proceder con una entrevista online y coordinar detalles de relación comercial, derechos de uso, producción y post producción.<br>

            <center>
               <a type="button" class="btn btn-primary btn-register-header" href="{{ route('log').'?act=1' }}">REGISTRATE AQUÍ</a><br><br>

               <b>Solicitamos tu empatía y paciencia durante el proceso, contamos con muchas solicitudes y el trabajo de todos es importante. 

               Esperamos pronto sumarte a nuestro equipo de talentos.</b>
            </center>

         </div>
      </div>
   </div>

   <div class="modal fade" id="video1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title" id="exampleModalLabel">Testimonio de José Gordo</h5>
               <button type="button" class="close" data-dismiss="modal" aria-label="Close"> 
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body">
               <div class="embed-responsive embed-responsive-16by9">
                  <video src="{{ asset('nosotros/videos/introduccion.mp4') }}" controls poster="{{ asset('nosotros/gratis-Blog/cambio.jpg') }}"></video>
               </div>
            </div>
         </div>
      </div>
   </div>
@endsection
