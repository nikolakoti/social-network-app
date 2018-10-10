@extends('front.layout')

@section('head_title', $user->first_name . ' ' . $user->last_name)

@section('content')

<div class="row">
    <div class="col-12 col-md-5 mt-5">
        <ul class="list-inline">
            <li class="list-inline-item">
                <i class="fa fa-user-circle fa-2x pr-2" aria-hidden="true"></i>
            </li>
            <li class="list-inline-item">
                <h5>{{$user->first_name . ' ' . $user->last_name}}</h5>
            </li>
        </ul>
    </div>
</div>
<div class="row">
    <div class="col-12 col-md-5 mt-5">
        <div id="accordion">
            <div class="card">
                <div class="card-header" id="headingOne">
                    <h5 class="mb-0">
                        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            Direct friends
                        </button>
                    </h5>
                </div>

                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">

                    <div class="card-body">
                        <ul class="list-inline">
                            @foreach($user->friends() as $friend)
                            <li class="list-inline-item">
                                <a href="{{route('profile', ['id' => $friend->id])}}">{{$friend->first_name . ' ' . $friend->last_name}}</a>
                            </li>
                            @endforeach
                        </ul>
                    </div>

                </div>
            </div>
            <div class="card">
                <div class="card-header" id="headingTwo">
                    <h5 class="mb-0">
                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            Friends of friends
                        </button>
                    </h5>
                </div>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                    @foreach($user->friends() as $friend)
                    <p class="pl-4">{{$friend->first_name . ' ' . $friend->last_name}}
                        @if($friend->friends()->count() === 1)
                        friend:
                        @else
                        friends:
                        @endif

                    </p>
                    <div class="card-body">
                        <ul class="list-inline">
                            @foreach($friend->friends() as $ff)
                            <li class="list-inline-item">
                                <a href="{{route('profile', ['id' => $ff->id])}}">{{$ff->first_name . ' ' . $ff->last_name}}</a>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                    @endforeach

                </div>
            </div>
            <div class="card">
                <div class="card-header" id="headingThree">
                    <h5 class="mb-0">
                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            Suggested friends
                        </button>
                    </h5>
                </div>
                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                    <div class="card-body">

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection