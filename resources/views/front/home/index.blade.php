@extends('front.layout')

@section('head_title', 'Users list')

@section('content')

<div class="col-12 col-md-8 offset-md-2 mt-5">
    <div class="list-group">
        @foreach($users as $user)
        <a href="{{route('profile', ['id' => $user->id])}}" class="list-group-item list-group-item-action">
            <ul class="list-inline">
                <li class="list-inline-item">
                    <i class="fa fa-user-circle fa-2x pr-2" aria-hidden="true"></i>
                </li>
                <li class="list-inline-item">
                    <h5>{{$user->first_name . ' ' . $user->last_name}}</h5>
                </li>
            </ul>
        </a>
        @endforeach
    </div>
</div>
<div class="col-12 col-md-8 offset-md-2 mt-5">
    {{$users->links()}}
</div>

@endsection
