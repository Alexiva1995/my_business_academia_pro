<option value="" selected disabled>Seleccione una categoría..</option>
@foreach ($categories as $category)
	<option value="{{ $category->id }}">{{ $category->title }}</option>
@endforeach