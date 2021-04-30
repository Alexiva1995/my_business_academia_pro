@extends('layouts.dashboardnew')

@push('script')
	<script src="//cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>

	<script>
		$(document).ready( function () {
			$('#mytable').DataTable( {
				responsive: true,
			});
		});
		function editar($banner){
	        $("#banner_id").val($banner.id);
	        $("#title").val($banner.title);
	        $("#page option[value="+$banner.page+"]").attr("selected", true);
			$("#url").val($banner.url);
            $("#modal-edit").modal("show");
		}
	</script>
@endpush

@section('content')
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

		<div class="box">
			<div class="box-body">
                @if (!is_null($banner))
				<div style="text-align: right;">
                    <a onclick="editar({{$banner}});" class="btn btn-danger descargar"><i class="fa fa-edit"></i> Editar Banner</a>
				</div>
                @endif
                <br class="col-xs-12">
                @if (!is_null($banner))
                    <div class="container-fluid" style="margin-bottom: 50px;">
                        <img src="{{ asset('uploads/images/banners/'.$banner->image) }}" class="d-block w-75 img-fluid" style="max-width:100%;">

                    </div>
                @else
                <h3 class="white"> No se encontro banner para esta sección...</h3>
                @endif
				
			</div>
		</div>
	</div>

	<!-- Modal Editar Banner-->
	<div class="modal fade" id="modal-edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h5 class="modal-title" id="exampleModalLabel">Modificar Banner</h5>
      			</div>
      			<form action="{{ route('admin.banners.update') }}" method="POST" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <input type="hidden" name="banner_id" id="banner_id">
				    <div class="modal-body">
				        <div class="container-fluid" id="content-modal">
                            <div class="col-md-12">
						        <div class="form-group">
						            <label>Título del Banner</label>
						            <input type="text" class="form-control" name="title" id="title" required>
						        </div>
						    </div>
						    <div class="col-md-12">
						        <div class="form-group">
						            <label>Ubicación</label>
						            <select class="form-control" name="page" id="page" required>
                                        <option value="Soporte">Soporte</option>
					                </select>
						        </div>
						    </div>
						    <div class="col-md-12">
						        <div class="form-group">
					                <label>Imagen</label>
					            	<input type="file" class="form-control" name="image">
					            </div>
					        </div>
						    <div class="col-md-12">
						        <div class="form-group">
					                <label>Link (Opcional)</label>
					            	<input type="url" class="form-control" name="url" id="url">
					            </div>
					        </div>
						</div>
				    </div>
	      			<div class="modal-footer">
	        			<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
	        			<button type="submit" class="btn btn-primary">Guardar Cambios</button>
	      			</div>
	      		</form>
    		</div>
  		</div>
	</div>


@endsection

