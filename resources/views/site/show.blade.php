@extends('site.layouts.default')

@section('content')
    <h1>{{$post->user}}</h1>
    @if(isset($post))    
        <div class="row">
            <div class="col s12 m6">
                <div class="card blue-grey darken-1">
                    <div class="card-content white-text">
						<span class="card-title">姓名:{{$post->username}}</span>
						<span class="card-title">性別:{{$post->gender}}</span>
						<span class="card-title">生日:{{$post->birthday}}</span>
						<span class="card-title">信箱:{{$post->email}}</span>
						<span class="card-title">備註:{{$post->Remarks}}</span>
						
					</div>
                </div>
            </div>
        </div>
    @endif
    <h3>{{ link_to(URL::previous(),'回上一頁') }}</h3>
@stop