@extends('layouts.landing')

@push('styles')
    <style>
        .color-green {
            color: #6ab742;
        }

        .btn-color-green {
            background-color: #56c08f;
        }
        .btn-color-blue{
            background-color: #2B93FF;
        }
        .btn-color-purple{
            background-color: #717bd5;
        }
        .btn-color-amarillo{
            background-color: #fbb62b;
        }
        .bg-grey-alt {
            background: #313335;
        }
        .text-amarillo{
            color: #fbb62b;
        }
        .text-verde{
            color: #56c08f;
        }
        .text-morado{
            color: #717bd5;
        }
        
    </style>
@endpush

@section('content')
    <div class="title-page-one_course col-md border-bottom-2">
        <h6>Membresias</h6>
        <hr style="border: 1px solid #707070;opacity: 1;" />
    </div>

    @if (!Auth::guest())
    <div class="title-page-course col-md"><span class="text-white" style="text-align:center;">
            <h3 class="mb-2"><span class="text-white">Hola</span><span class="text-primary"> {{Auth::user()->display_name}}</span><span class="text-white"> ¡Nos alegra verte hoy!</span></h3>
    </div>
    @endif

    <div class="col-md-12 col-xs-12">
        <div class="row">
            <section class="pricing">
                <div class="ml-5 mr-5 mb-5">
                    <div class="row">
                        @foreach ($membresias as $membresia)
                            @switch($membresia->id)
                                @case(1)
                                    <!-- Free Tier -->
                                    <div class="col-lg-3 mt-4 mb-5">
                                        <div class="card mb-5 mb-lg-0">
                                            <div class="card-header-azul-price" style="position: absolute;">
                                                <h1 class="card-title text-white text-uppercase text-center">{{$membresia->name}}</h1>
                                            </div>
                                            <div class="card-body" style="position: relative; top:55px; z-index: 1;">
                                                <div class="row" style="padding:10px 20px;">
                                                    <div class="col-md-12">
                                                        <h4 class="card-price text-azul-claro text-center" style="font-size: 38px; font-weight: bold;"><del style="font-size: 28px;">${{$membresia->price}}/Mes</del> ${{$membresia->descuento}}/Mes</h4>
                                                    </div>
                                                </div>
                                                <h5 class="p-2 text-white text-center">¡Aquí podrás dar el primer paso para Aprender lo que deseas <u>SER</u> aquí!</h5>
                                                <h5 class="p-2 text-white text-center"><strong class="text-azul-claro">En este primer nivel podrás acceder a:</strong></h5>
                                                <h5 class="p-2 text-white text-center">+ De 100 videos con increíbles especialistas en los diversos temas de Desarrollo Humano (Liderazgo, Comunicación, Inteligencia Emocional, Coaching, etc.) Y Contenido especial de Educación Financiera Finanzas.</h5>
                                                <h4 class="p-2 text-azul-claro text-center" style="font-weight: bold;">+ 4 Live Streaming <br> Al Mes</h4>
                                                
                                                <h4 class="card-price text-azul-claro text-center mb-4" style="font-size: 34px; font-weight: bold;"><del style="font-size: 28px;">${{$membresia->price_annual}}</del> ${{$membresia->discount_annual}}<span style="font-size: 28px;">/Anual</span></h4>
                                                    
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Mensual'])}}" class="btn btn-color-blue text-white btn-block">Plan Mensual</a>
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Anual'])}}" class="btn btn-color-purple text-white btn-block">Plan Anual</a>
                                                <br>
                                                <div class="card">
                                                    <div class="card-body">
                                                    <h5 class="p-2 text-white text-center" style="font-size: 12px!important;">SI ADQUIERES TU MEMBRESIA EN FORMATO ANUAL TENDRÁS ACCESO A LOS  <b class="text-azul-claro">4 STREAMING + CONTENIDO VIP + 2 GRATIS </b> DE NUESTRO PARTNER <b class="text-azul-claro">FTX LIVE </b></h5>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @break

                                @case(2)
                                    <div class="col-lg-3 mt-4 mb-5">
                                        <div class="card mb-5 mb-lg-0">
                                            <div class="card-header-orange-price" style="position: absolute;">
                                                <h1 class="card-title text-white text-uppercase text-center">{{$membresia->name}}</h1>
                                            </div>
                                            <div class="card-body" style="position: relative; top:55px; z-index: 1;">
                                                <div class="row" style="padding: 10px 10px;">
                                                    <div class="col-md-12">
                                                        <h4 class="card-price text-amarillo text-center" style="font-size: 38px; font-weight: bold;"><del style="font-size: 28px;">${{$membresia->price}}/Mes</del> ${{$membresia->descuento}}/Mes</h4>
                                                    </div>
                                                </div>
                                                <h5 class="p-2 text-white text-center"> ¡Nos alegra que estés pasando al segundo escalón!</h5>
                                                <h5 class="p-2 text-amarillo text-center">Aquí encontrarás todo lo que necesitas saber para <u>HACER</u> y lograr.</h5>
                                                <h5 class="p-2 text-white text-center">Disfrutarás de todo el contenido de este nivel y del anterior</h5>
                                                <h5 class="p-2 text-white text-center">+ De 150 videos con increíbles especialistas en los diversos temas de Ventas (Estrategia, mkt digital, publicidad, etc)</h5>
                                                <h5 class="text-white text-center">+ Emprendurismo (Modelos de negocio, fondeo, legalidad, etc)</h5>
                                                <h5 class="text-white text-center"> + Desarrollo Humano y Finanzas.</h5>
                                                <h4 class="p-2 text-amarillo text-center" style="font-weight: bold;">+ 6 Live Streaming <br> Al Mes</h4>
                                                
                                                <h4 class="card-price text-amarillo text-center mb-4" style="font-size: 34px; font-weight: bold;"><del style="font-size: 28px;">${{$membresia->price_annual}}</del> ${{$membresia->discount_annual}}<span style="font-size: 28px;">/Anual</span></h4>
                                                
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Mensual'])}}" class="btn btn-color-amarillo text-white btn-block">Plan Mensual</a>
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Anual'])}}" class="btn btn-color-blue text-white btn-block">Plan Anual</a>
                                                <br>
                                                <div class="card">
                                                    <div class="card-body">
                                                    <h5 class="p-2 text-white text-center" style="font-size: 12px!important;">SI ADQUIERES TU MEMBRESIA EN FORMATO ANUAL TENDRÁS ACCESO A LOS  <b class="text-orange">6 STREAMING + CONTENIDO VIP
                                                    + 4 GRATIS </b> DE NUESTRO PARTNER <b class="text-amarillo">FTX LIVE </b></h5>
                                                    </div>
                                                </div>
                                            
                                            </div>
                                        </div>
                                    </div>
                                @break

                                @case(3)
                                    <div class="col-lg-3 mt-4 mb-5">
                                        <div class="card mb-5 mb-lg-0">
                                            <div class="card-header-verde-price" style="position: absolute;">
                                                <h1 class="card-title text-white text-uppercase text-center" >{{$membresia->name}}</h1>
                                            </div>
                                            <div class="card-body" style="position: relative; top:55px; z-index: 1;">
                                                <div class="row" style="padding:10px 10px;">
                                                    <div class="col-md-12">
                                                        <h4 class="card-price text-verde text-center" style="font-size: 38px; font-weight: bold;"><del style="font-size: 28px;">${{$membresia->price}}/Mes</del> ${{$membresia->descuento}}/Mes</h4>
                                                    </div>
                                                </div>
                                                <h5 class="p-2 text-white text-center"> ¡WOW! Siéntete orgulloso de ti si creces a este nivel en tu formación, lo mejor está por venir.</h5>
                                                <h5 class="text-white text-center">Aprenderás la ciencia y el arte de: <u>TENER</u> </h5>
                                                <h5 class="p-2 text-verde text-center">Accederás:</h5>
                                                <h5 class="text-white text-center">A todo el contenido de este nivel y los 2 anteriores</h5>
                                                <h5 class="p-2 text-white text-center">+ De 200 videos con increíbles especialistas en los diversos temas de Fintech (criptomonedas, analisis tecnico, riesgos, retornos, etc</h5>
                                                <h5 class="text-white text-center">+ Real Estate (Inversiones, legalidad, fix & flip, valuaciones, ROI, etc.)</h5>
                                                <h5 class="text-white text-center">+ Ventas, Emprendurismo, Desarrollo Humano y Finanzas</h5>
                                                <h4 class="p-2 text-verde text-center" style="font-weight: bold;">+ 8 Live Streaming <br> Al Mes</h4>

                                                <h4 class="card-price text-verde text-center mb-4" style="font-size: 34px; font-weight: bold;"><del style="font-size: 28px;">${{$membresia->price_annual}}</del> ${{$membresia->discount_annual}}<span style="font-size: 28px;">/Anual</span></h4>
                                                
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Mensual'])}}" class="btn btn-color-green text-white btn-block">Plan Mensual</a>
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Anual'])}}" class="btn btn-color-amarillo text-white btn-block">Plan Anual</a>
                                                <br>
                                                <div class="card">
                                                    <div class="card-body">
                                                    <h5 class="p-2 text-white text-center" style="font-size: 12px!important;">SI ADQUIERES TU MEMBRESIA EN FORMATO ANUAL TENDRÁS ACCESO A LOS  <b class="text-verde-claro">8 STREAMING + CONTENIDO VIP + 6 GRATIS </b> DE NUESTRO PARTNER <b class="text-verde">FTX LIVE </b></h5>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @break

                                @case(4)
                                    <div class="col-lg-3 mt-4 mb-5">
                                        <div class="card mb-5 mb-lg-0">
                                            <div class="card-header-purple-price" style="position: absolute;"><h1 class="card-title text-white text-uppercase text-center">{{$membresia->name}}</h1></div>
                                            <div class="card-body" style="position: relative; top:55px; z-index: 1;">
                                                <div class="row" style="padding:10px 10px;">
                                                    <div class="col-md-12">
                                                        <h4 class="card-price text-morado text-center" style="font-size: 38px; font-weight: bold;"><del style="font-size: 28px;">${{$membresia->price}}/Mes</del> ${{$membresia->descuento}}/Mes</h4>
                                                    </div>
                                                </div>
                                                <h5 class="p-2 text-white text-center">¡FELICIDADES!</h5>
                                                <h5 class="p-2 text-white text-center">¡Estas a punto de convertirte en un <u>PRO</u> de los Negocios globales!</h5>
                                                <h5 class="p-2 text-purple text-center">Gozarás de todo el contenido de este nivel y de lo anterior.</h5>
                                                <h5 class="p-2 text-white text-center">+ De 250 videos con increíbles especialistas en los diversos temas Enseñanza (Tecnicas instruccionales y de aprendizaje, tecnologia, uso de tu voz, etc.).</h5>
                                                <h5 class="p-2 text-white text-center">+ Bienestar (Nutrición, fitness, equilibrio)</h5>
                                                <h5 class="p-2 text-white text-center">+ Fintech, Real Estate, Ventas, Emprendurismo, Desarrollo Humano y Finanzas.</h5>
                                                <h4 class="p-2 text-morado text-center" style="font-weight: bold;">+ 10 Live Streaming <br> Al Mes</h4>

                                                <h4 class="card-price text-morado text-center mb-4" style="font-size: 34px; font-weight: bold;"><del style="font-size: 28px;">${{$membresia->price_annual}}</del> ${{$membresia->discount_annual}}<span style="font-size: 28px;">/Anual</span></h4>
                                                
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Mensual'])}}" class="btn btn-color-purple text-white btn-block">Plan Mensual</a>
                                                <a href="{{route('shopping-cart.store', [$membresia->id, 'membresia', 'Anual'])}}" class="btn btn-color-green text-white btn-block">Plan Anual</a>
                                                <br>
                                                <div class="card">
                                                    <div class="card-body">
                                                        <h5 class="p-2 text-white text-center" style="font-size: 12px!important;">SI ADQUIERES TU MEMBRESIA EN FORMATO ANUAL TENDRÁS ACCESO A LOS <b class="text-purple">10 STREAMING + CONTENIDO VIP + 8 GRATIS </b> DE NUESTRO PARTNER <b class="text-morado">FTX LIVE </b></h5>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @break
                            @endswitch
                        @endforeach
                    </div>
                </div>
            </section>
        </div>
    </div>

@endsection