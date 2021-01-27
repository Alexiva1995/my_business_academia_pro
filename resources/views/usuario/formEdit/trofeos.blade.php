<div class="col-md-12" id="anotaciones_section">
    <div class="box" style="border-radius: 10px;">
        <div class="box-body">
            <h3 class="box-title white" style="margin-top: -5px; margin-bottom: 20px; padding: 15px 20px;border-radius: 20px; background-color: #005aff; color: white;">Mis Trofeos</h3>
            @if(!$trofeos->isEmpty())
                <div class="row">
                    @foreach ($trofeos as $trofeo)
                        <div class="col-xl-4 col-lg-4 col-12">
                            <div class="card" style="text-align: center;">
                                <img src="{{ asset('uploads/images/memberships/awards/'.$trofeo->image) }}" class="card-img-top" style="width: 300px; height: 300px;">
                                <div class="card-body" style="text-align: center;">
                                    <h5 class="card-title" style="color: white; font-size: 30px;">{{ $trofeo->name }}</h5>
                                    <div style="color: white; font-size: 20px;">(Membresía: {{ $trofeo->membership->name }})</div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            @else
                <div class="col-md-12 m-3">
                    <h3 class="white">Usted no posee trofeos aún...</h3>
                </div>
            @endif
        </div>
    </div>
</div>
