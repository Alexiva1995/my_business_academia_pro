@extends('layouts.landing')

@push('scripts')
  <script>
    $(function(){    
      $('.close-trailer').on('click', function(){
        var vid = document.getElementById("video-trailer1");
        vid.pause();
      });
    });
  </script>
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

      <div class="col-md-12" style="background-color: #fff;">
         <div class="col-md-8 offset-md-2" style="padding: 20px 15px 40px 15px; text-align: justify;">
            <h4>Te ofrecemos todo el conocimiento, el desarrollo de actitudes y las herramientas que necesitas para convertirte en un gran Speaker y Coach Master de My Business Academy Pro </h4>

            <h5>Si ya tienes la formación o experiencia en el medio de comunicación y manejo de equipos, pero ¿quieres obtener proyección internacional? Aquí encontrarás toda la información para digitalizar tus cursos y maximizar su alcance en línea.</h5>
            <h5><b>¡Haz negocio con nosotros! y ¡Súmate a nuestro equipo de entrenadores!</b></h5><br>

            <center><a type="button" class="btn btn-primary btn-register-header" href="{{ route('log').'?act=1' }}">REGISTRATE AQUÍ</a></center><br>

            <h5>Con la atención y el cuidado que te mereces, valoraremos tu trabajo y sobre eso daremos seguimiento a algunas posibilidades. Pero para ello, requerimos que con la formalidad que se requiere, tengas consciencia de lo siguiente: <br>
            <ul>
               <li>My Business Academy Pro te ofrece una posibilidad, la cual necesita tú mayor compromiso, responsabilidad y colaboración.</li>   
               <li>Para nosotros es importante que el trabajo de todos sea valorado, por ello tenemos requisitos importantes, así como confianza en que podrás cumplir a cabalidad el objetivo que nos mueve como grupo, que sobre todo yace en la satisfacción de nuestro consumidor final, el impacto positivo que queremos dar al mundo y la trascendencia del material que ofrecemos, por ello nuestro compromiso en la calidad de todo nuestro modelo académico.</li>
               <li>Te ofrecemos la exposición internacional que siempre has soñado, apalancado de nuestra comunidad en más de 80 países y con la posibilidad de seguir creciendo por el mundo entero, le daremos un tratamiento impecable a cada material, contando con el mejor equipo técnico, operativo, logístico, administrativo y de creación de contenidos para que, sumado a extraordinarias locaciones, hagamos que expreses lo mejor de ti.</li>
            </ul></h5>

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

            <h5>Pero ¿Qué temas puedo encontrar en MBA PRO?
            <ul>
               <li>Desarrollo Humano</li>   
               <li>Finanzas</li>
               <li>Ventas</li>
               <li>Emprendurismo</li>
               <li>Fintech</li>
               <li>Real Estate </li>
               <li>Enseñanza Aprendizaje</li>
               <li>Bienestar Integral</li>
            </ul>

            Si tienes algún tema de valor que ofrecernos, envíanos tu propuesta y con gusto nuestro comité de talentos medirá y expondrá las posibilidades que podemos ofrecerte a través de un proceso formal de varios filtros, porque como ya lo mencionamos, nuestra principal preocupación es la calidad de la información que ofrecemos, una vez que pase todas las validaciones, te contactaremos por teléfono y correo a los datos que nos dejaste en tu formulario para proceder con una entrevista online y coordinar detalles de relación comercial, derechos de uso, producción y post producción.<br></h5>

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
               <button type="button" class="close close-trailer" data-dismiss="modal" aria-label="Close"> 
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body">
               <div class="embed-responsive embed-responsive-16by9">
                  <video src="{{ asset('nosotros/videos/introduccion.mp4') }}" controls poster="{{ asset('nosotros/gratis-Blog/cambio.jpg') }}" id="video-trailer1"></video>
               </div>
            </div>
         </div>
      </div>
   </div>
@endsection