@extends('layouts.dashboardnew')

@push('script')
   <script>
      function loadForm($opc){
         if ($opc == 1){
            $("#images-div").css('display', 'none');
            $("#form-div").css('display', 'block');
         }else{
            $("#form-div").css('display', 'none');
            $("#images-div").css('display', 'block');
         }  
      }
   </script>
@endpush

@section('content')
  {{-- información --}}
   <div class="col-xs-12">
      @if (Session::has('msj-exitoso'))
         <div class="alert alert-success">
            <strong>{{ Session::get('msj-exitoso') }}</strong>
         </div>
      @endif

      @if (Session::has('msj-erroneo'))
         <div class="alert alert-danger">
            <strong>{{ Session::get('msj-erroneo') }}</strong>
         </div>
      @endif
    
      <div class="box box-info mostrar" id="images-div">
         <div class="box-header with-border">
            <div class="box-title white">
               <h3>Información del Sistema</h3>
            </div>
         </div>
    
         <div class="box-title white">
            <h3 style="text-align: center;">Slider Home</h3>
         </div>
    
    
         @foreach($component as $item)
            <div class="col-sm-3 col-xs-12" style="margin-bottom: 20px;">
               <div class="fav">
                  <h3 class="text-center"></h3>
                  <h5 class="text-center">
                     <img src="{{asset('drop/'.$item->slider)}}" alt="" class="circular-log">
               
                     <center>
                        <a href="{{route('setting-delete-drop', $item->id)}}">
                           <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                        </a>
                     </center>
                  </h5>
               </div>
            </div>
         @endforeach
     
      
         <div class="box-footer">
            <button class="btn green btn-block mostrar" onclick="loadForm(1);">Editar</button>
         </div>
      </div>

      <div class="box box-info mostrar" id="form-div" style="display:none;">
         <div class="box-body">
            {{-- formulario 7 --}}
            <div class="col-xs-12">
               <div class="box">
                  <div class="box-header with-border">
                     <div class="box-title white">
                        Slider del Home
                     </div>
                  </div>
                  <div class="box-body">
                     <div class="alert alert-info" role="alert">
                        <h5><strong>Nota: El tamaño de la imagen adecuado es 1069 X 240 pixeles</strong></h5>
                     </div>
            
                     <form method="post" action="{{route('setting-save-home')}}" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <input class="form-control" type="file" name="file" required>
                        <br>
                        <div class="tex-center">
                           <input type="submit" class="btn btn-primary" value="Cargar Imagen">
                           <a type="button" class="btn btn-danger" onclick="loadForm(2);">Cancelar</a>
                        </div>
                     </form>
                  </div>
               </div>
            </div>
            {{-- fin formulario 7 --}}
         </div>
      </div>
   </div>
@endsection

@push('script')
<script type="text/javascript">
        Dropzone.options.dropzone =
         {
             
            maxFiles: 5, 
            dictDefaultMessage: 'Arrastre o Pulse aqui las imagenes',
            dictFallbackMessage: 'Lo sentimos su navegador no es compatible',
            dictCancelUploadConfirmation: 'Esta seguro que desea cancelar ?',
            dictCancelUpload: 'Cancelar',
            dictRemoveFile: 'Eliminar',
            
            maxfilesexceeded: function(file) {
            
             confirm("A superado el maximo de archivos subidos");    
             this.removeAllFiles();
           
            },
            
            renameFile: function(file) {
                var dt = new Date();
                var time = dt.getTime();
               return time+file.name;
            },
            addRemoveLinks: true,
            acceptedFiles: ".jpeg,.jpg,.png,.gif",
            timeout: 5000,

                    
            success: function(file, response) 
            {
                console.log(response);
            },
            error: function(file, response)
            {
               return false;
            }
        };

 </script>
 @endpush
