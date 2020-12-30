@extends('layouts.dashboardnew')

@section('content')


<div class="col-xs-12">
    <div><h1 class="text-center text-primary font-weight-bold">Base de Conocimiento</h1></div><br>


    <div class="col-md-offset-2">
            <div class="form-group col-md-9" style="border:none;">
                <form action="{{route('admin.soporte.search.questions')}}" method="GET">
                 <div class="input-group">
                      <div class="input-group-addon" style="background:none; border:none;">
                        <button class="btn btn-none border-0" type="submit" style="background:none!important;"><i class="fa fa-search fa-2x white" aria-hidden="true"></i></button>
                      </div>
                      
                          <input type="text" placeholder="Busca tu pregunta" class="question-search form-control social white" id="question-search" value="" name="question-search">     
                </div>
                </form>
            </div>
    </div>
    <br><br><br>

    <div class="col-md-offset-2">
                <div class="row">
                        <div class="col-md-3 cajita centroc"><a href="{{route('admin.soporte.search.frecuent_questions')}}" class="white"><h3 style="font-size:18px!important; font-weight:bold;"><i class="far fa-comments text-primary"></i>Preguntas frecuentes</h3></a></div>
                <div class="col-md-3 cajita centroc"><a href="{{route('soporte.academy')}}" class="white"><h3 style="font-size:18px!important; font-weight:bold;"><i class="fas fa-graduation-cap text-primary"></i>Academia</h3></a></div>
                        <div class="col-md-3 cajita centroc"><a href="{{ route ('admin.soporte.affiliates')}}" class="white"><h3 style="font-size:18px!important; font-weight:bold;"><i class="fas fa-user-plus text-primary"></i>Afiliados</h3></a></div>

                </div>
    </div>

    <div class="col-md-8 col-md-offset-2 text-center" style="margin-bottom: 30px;">
        <h3 class="white">Para nosotros lo mas importante es que tengas una buena experiencia, explora cada una de las opciones y si no encuentras lo que buscas <a href="{{route('soporte.tickets')}}" class="text-primary font-weight-bold">crea un ticket</a></h3>

    </div>

    @if (!is_null($banner))
    <div class="container-fluid" style="margin-bottom: 50px;">
        <img src="{{ asset('uploads/images/banners/'.$banner->image) }}" class="d-block w-100 img-fluid" alt="..." style="max-width:100%;">

    </div>
    @endif              


</div>

@endsection
