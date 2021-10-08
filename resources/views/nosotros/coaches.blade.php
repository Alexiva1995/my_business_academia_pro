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
    <div class="banner-coaches">
        <img src="{{ asset('nosotros/afiliados/header2.jpg') }}" class="w-100" alt="...">

        <div class="banner-coaches-text">
             <div class="row">
                <div class="col-12 mt-5 text-center">
                    <img src="{{ asset ('images/mbapro-completo.png')}}"  class="banner-coaches-logo">
                </div>
                <div class="col-12 text-center text-white pt-4">
                    Te damos la bienvenida a uno de los  mejores y más geniales programas de marketing de Afiliados del mundo
                </div>
                <div class="col-12 mt-3 text-center d-none d-sm-block">
                    <img src="{{ asset ('images/line-blue.png')}}" class="banner-coaches-line">
                </div>
            </div>
        </div>
    </div>

    <div class="pb-5" style="background-color: #fff;">
        <div class="text-center coaches-second-section">
            Te ofrecemos todo el conocimiento, el desarrollo de actitudes y las herramientas que necesitas para convertirte en un gran Speaker y Coach Master de My Business Academy Pro
            <br><br>
            Si ya tienes la formación o experiencia en el medio de comunicación y manejo de equipos, pero ¿quieres obtener proyección internacional? Aquí encontrarás toda la información para digitalizar tus cursos y maximizar su alcance en línea.

            <div class="mt-3 coaches-second-section-text-blue">¡Haz negocio con nosotros! y ¡Súmate a nuestro equipo de entrenadores!</div>

            <center><a type="button" class="btn coaches-second-section-button-blue" href="{{ route('log').'?act=1' }}">Regístrate Aquí</a></center><br>

            <div class="mt-3">Con la atención y el cuidado que te mereces, valoraremos tu trabajo y sobre eso daremos seguimiento a algunas posibilidades. Pero para ello, requerimos que con la formalidad que se requiere, tengas consciencia de lo siguiente:</div>
        </div>

        <div class="row pl-5 pr-5 pb-5">
            <div class="col-xl-4 col-lg-4 col-md-4 col-12 pl-2 pr-2 pt-2">
                <div class="p-4 coaches-second-section-card">
                    <div class="coaches-second-section-card-img">
                        <img src="{{ asset('images/icons/handshake.svg') }}" width="80" height="80">
                    </div>
                    <div class="mt-4 pb-4 coaches-second-section-card-text">
                        My Business Academy Pro te ofrece una posibilidad, la cual necesita tú mayor compromiso, responsabilidad y colaboración.
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-4 col-md-4 col-12 pl-2 pr-2 pt-2">
                <div class="p-4 coaches-second-section-card">
                    <div class="coaches-second-section-card-img">
                        <img src="{{ asset('images/icons/shield.svg') }}" width="80" height="80">
                    </div>
                    <div class="mt-4 pb-4 coaches-second-section-card-text">
                        Para nosotros es importante que el trabajo de todos sea valorado, por ello tenemos requisitos importantes, así como confianza en que podrás cumplir a cabalidad el objetivo que nos mueve como grupo, que sobre todo yace en la satisfacción de nuestro consumidor final, el impacto positivo que queremos dar al mundo y la trascendencia del material que ofrecemos, por ello nuestro compromiso en la calidad de todo nuestro modelo académico
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-4 col-md-4 col-12 pl-2 pr-2 pt-2">
                <div class="p-4 coaches-second-section-card">
                    <div class="coaches-second-section-card-img">
                        <img src="{{ asset('images/icons/worldwide.svg') }}" width="80" height="80">
                    </div>
                    <div class="mt-4 pb-4 coaches-second-section-card-text">
                        Te ofrecemos la exposición internacional que siempre has soñado, apalancado de nuestra comunidad en más de 80 países y con la posibilidad de seguir creciendo por el mundo entero, le daremos un tratamiento impecable a cada material, contando con el mejor equipo técnico, operativo, logístico, administrativo y de creación de contenidos para que, sumado a extraordinarias locaciones, hagamos que expreses lo mejor de ti.
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div style="background-color: #1C1E21; border: solid #707070 1px;">
        <div class="row mt-5 pt-5 pb-5 mb-5">
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

    <div style="background-color: #fff;">
        <div class="row" style="display: flex; align-items: center;">
            <div class="col-xl-6 col-lg-6 col-md-6 col-12 p-5">
                <div class="coaches-third-section-text"><b>Haremos producciones a lo largo de todo el mundo y presentaremos a los mejores coaches para tu formación y desarrollo.</b></div>
                <div class="coaches-third-section-text pt-4">Personas que tengan todo el conocimiento y experiencia para ofrecerte valor en lo que sea que quieras desarrollar.</div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-12 coaches-third-section-image">
                <img src="{{ asset('nosotros/afiliados/live-streaming.jpg') }}" class="card-img-top" alt="..." style="border: solid 0;">
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-3"></div>
            <div class="col-6 text-white text-center" style="background-color: #1C1D21; border-radius: 12px; font-size: 25px; font-weight: bold; padding: 10px 20px;">Pero ¿Qué temas puedo encontrar en MBA PRO?</div>
            <div class="col-3"></div>
        </div>

        <div class="row" style="padding: 8% 10%;">
            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-4 col-6 text-center pb-5" style="color: #2A91FF;">
                <img src="{{ asset('images/icons/target.svg') }}" width="70" height="70">
                <div class="mt-3" style="font-size: 26px; line-height: 30px; font-weight: bold;">
                    Desarrollo<br> Humano 
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-4 col-6 text-center pb-5" style="color: #2A91FF;">
                <img src="{{ asset('images/icons/money.svg') }}" width="70" height="70">
                <div class="mt-3" style="font-size: 26px; line-height: 30px; font-weight: bold;">
                    Finanzas
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-4 col-6 text-center pb-5" style="color: #2A91FF;">
                <img src="{{ asset('images/icons/business-and-finance.svg') }}" width="70" height="70">
                <div class="mt-3" style="font-size: 26px; line-height: 30px; font-weight: bold;">
                    Ventas
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-4 col-6 text-center pb-5" style="color: #2A91FF;">
                <img src="{{ asset('images/icons/shuttle.svg') }}" width="70" height="70">
                <div class="mt-3" style="font-size: 26px; line-height: 30px; font-weight: bold;">
                    Emprendurismo
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-4 col-6 text-center" style="color: #2A91FF;">
                <img src="{{ asset('images/icons/cloud.svg') }}" width="70" height="70">
                <div class="mt-3" style="font-size: 26px; line-height: 30px; font-weight: bold;">
                    Fintech
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-4 col-6 text-center" style="color: #2A91FF;">
                <img src="{{ asset('images/icons/house.svg') }}" width="70" height="70">
                <div class="mt-3" style="font-size: 26px; line-height: 30px; font-weight: bold;">
                    Real State
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-4 col-6 text-center" style="color: #2A91FF;">
                <img src="{{ asset('images/icons/online-learning.svg') }}" width="70" height="70">
                <div class="mt-3" style="font-size: 26px; line-height: 30px; font-weight: bold;">
                    Enseñanza <br>Aprendizaje
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-4 col-6 text-center" style="color: #2A91FF;">
                <img src="{{ asset('images/icons/lotus-flower.svg') }}" width="70" height="70">
                <div class="mt-3" style="font-size: 26px; line-height: 30px; font-weight: bold;">
                    Bienestar <br>Integral
                </div>
            </div>
        </div>

        <div class="text-white text-center" style="background-color: #2A91FF; padding: 8% 10%; font-size: 26px; line-height: 36px;">
            Si tienes algún tema de valor que ofrecernos, envíanos tu propuesta y con gusto nuestro comité de talentos medirá y expondrá las posibilidades que podemos ofrecerte a través de un proceso formal de varios filtros, porque como ya lo mencionamos, nuestra principal preocupación es la calidad de la información que ofrecemos, una vez que pase todas las validaciones, te contactaremos por teléfono y correo a los datos que nos dejaste en tu formulario para proceder con una entrevista online y coordinar detalles de relación comercial, derechos de uso, producción y post producción.
            
            <div class="mt-5">
                <a type="button" class="btn" style="background-color: #1C1E21; color: white; font-size: 25px; font-weight: bold; border-radius: 15px !important; padding: 10px 20px;" href="{{ route('log').'?act=1' }}">Regístrate Aquí</a>
            </div>
        </div>

        <div class="text-center" style="background-color: #FFFFFF; padding: 8% 15%; font-size: 26px; line-height: 36px; color: #696969;">
            Solicitamos tu empatía y paciencia durante el proceso, contamos con muchas solicitudes y el trabajo de todos es importante. Esperamos pronto sumarte a nuestro equipo de talentos.
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