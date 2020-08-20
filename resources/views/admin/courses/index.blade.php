@extends('layouts.dashboardnew')

@push('script')
	<script>
		$(document).ready( function () {
			$('#mytable').DataTable( {
				responsive: true,
			});

			$('.editar').on('click',function(e){
 				e.preventDefault();

 				var route = $(this).attr('data-route');
 				$.ajax({
	                url:route,
	                type:'GET',
	                success:function(ans){
	                	$("#content-modal").html(ans); 
	                    $("#modal-edit").modal("show");
	                }
	            });
			});
		});

		function loadSubcategories($metodo){
			if ($metodo == 'add'){
				var categoria = document.getElementById("category_id").value;
			}else{
				var categoria = document.getElementById("category_id2").value;
			}
			
			//var route = "https://www.transformatepro.com/ajax/cargar-subcategorias/"+categoria;
	        var route = "http://localhost:8000/admin/courses/categories/load-subcategories/"+categoria;
	                        
	        $.ajax({
	            url:route,
	            type:'GET',
	            success:function(ans){
	            	if ($metodo == 'add'){
		                document.getElementById("subcategory_id").innerHTML = "";
		                document.getElementById("subcategory_id").innerHTML  += '<option value="" selected disabled>Seleccione una subcategoría...</option>';
		                for (var i = 0; i < ans.length; i++){
		                    document.getElementById("subcategory_id").innerHTML += '<option value="'+ans[i].id+'">'+ans[i].title+'</option>';
		                }
		              	document.getElementById("subcategory_id").disabled = false;
		            }else{
		            	document.getElementById("subcategory_id2").innerHTML = "";
		                document.getElementById("subcategory_id2").innerHTML  += '<option value="" selected disabled>Seleccione una subcategoría...</option>';
		                for (var i = 0; i < ans.length; i++){
		                    document.getElementById("subcategory_id2").innerHTML += '<option value="'+ans[i].id+'">'+ans[i].title+'</option>';
		                }
		            }
	            }
	        });
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
				<div style="text-align: right;">
					<a data-toggle="modal" data-target="#modal-new" class="btn btn-info descargar"><i class="fa fa-plus-circle"></i> Nuevo Curso</a>
				</div>
				
				<br class="col-xs-12">

				<table id="mytable" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th class="text-center">#</th>
							<th class="text-center">Título</th>
							<th class="text-center">Categoría</th>
							<th class="text-center">Subcategoría</th>
							<th class="text-center">Acción</th>
						</tr>
					</thead>
					<tbody>
						@foreach($cursos as $curso)
							<tr>
								<td class="text-center">{{ $curso->id }}</td>
								<td class="text-center">{{ $curso->title }}</td>
								<td class="text-center">{{ $curso->category->title }}</td>
								<td class="text-center">{{ $curso->subcategory->title }}</td>
								<td class="text-center">
									<a class="btn btn-info editar" data-route="{{ route('admin.courses.edit', $curso->id) }}"><i class="fa fa-edit"></i></a>
									@if ($curso->status == 1)
										<a class="btn btn-danger" href="{{ route('admin.courses.change-status', [$curso->id, 0]) }}" title="Deshabilitar"><i class="fa fa-ban"></i></a>
									@else
										<a class="btn btn-success" href="{{ route('admin.courses.change-status', [$curso->id, 1]) }}" title="Habilitar"><i class="fa fa-check"></i></a>
									@endif
								</td>
							</tr>
						@endforeach
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<!-- Modal Agregar Curso-->
	<div class="modal fade" id="modal-new" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h5 class="modal-title" id="exampleModalLabel">Crear Curso</h5>
      			</div>
      			<form action="{{ route('admin.courses.store') }}" method="POST" enctype="multipart/form-data">
			        {{ csrf_field() }}
				    <div class="modal-body">
				        <div class="container-fluid">
	    					<div class="row">
						        <div class="col-md-12">
						            <div class="form-group">
						                <label>Título del Curso</label>
						            	<input type="text" class="form-control" name="title" required>
						            </div>
						        </div>
						         <div class="col-md-12">
						            <div class="form-group">
						                <label>Categoría</label>
						                <select class="form-control category" name="category_id" id="category_id" onchange="loadSubcategories('add');" required>
						                	<option value="" selected disabled>Seleccione una categoría..</option>
						                	@foreach ($categorias as $categoria)
						                		<option value="{{ $categoria->id }}">{{ $categoria->title }}</option>
						                	@endforeach
						                </select>
						            </div>
						        </div>
						        <div class="col-md-12">
						            <div class="form-group">
						                <label>Subcategoría</label>
						            	<select class="form-control" name="subcategory_id" id="subcategory_id" disabled required>
						                	<option value="" selected disabled>Seleccione una subcategoría..</option>
						                </select>
						            </div>
						        </div>
						        <div class="col-md-12">
						            <div class="form-group">
						                <label>Descripción</label>
						            	<textarea class="form-control" name="description"></textarea> 
						            </div>
						        </div>
						        <div class="col-md-12">
						            <div class="form-group">
						                <label>Imagen de Cover</label>
						            	<input type="file" class="form-control" name="cover" >
						            </div>
						        </div>
						    </div>
						</div>
				        
				    </div>
	      			<div class="modal-footer">
	        			<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
	        			<button type="submit" class="btn btn-primary">Crear Curso</button>
	      			</div>
	      		</form>
    		</div>
  		</div>
	</div>

	<!-- Modal Editar Curso-->
	<div class="modal fade" id="modal-edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h5 class="modal-title" id="exampleModalLabel">Modificar Curso</h5>
      			</div>
      			<form action="{{ route('admin.courses.update') }}" method="POST" enctype="multipart/form-data">
			        {{ csrf_field() }}
				    <div class="modal-body">
				        <div class="container-fluid" id="content-modal">
	    					
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
