
@extends('site.layouts.default')
	@section('content') 	
    {{ Html::style('css/site/webstyle.css') }}
    {{ Html::script('js/user.js') }}
    
                  <h1 class="toptitle">{{ $title }}</h1>
                  <span id="t2"></span>
                  <div id="dialog-1" title="會員註冊">
                        <form action="posts/create" method="post" name="myForm" onsubmit="return validateForm()">
                            {{csrf_field()}}
                            帳號:<input type="text" name="user" onkeyup="value=value.replace(/[\W]/g,'') "
onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">
                            密碼:<input type="password" name="password" onkeyup="value=value.replace(/[\W]/g,'') "
onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">
                            姓名:<input type="text" name="username">
                            性別:<input type="text" name="gender">
                            生日:<input type="text" name="birthday">
                            信箱:<input type="text" name="email">
                            備註:<input type="text" name="Remarks">
                            <input type="submit">
                        </form>
                  </div>
                   
                   
                   <br> 
                   <!-- @if (isset($posts)) -->
                    
                        <div id="min">
                            {{ Form::open(['url'=>'posts/login', 'method'=>'post']) }}
                                <span class="mininput">帳號:<span class="length">{{Form::text('user')}}</span></span>
                                <span class="mininput">密碼:<span class="length">{{Form::password('password')}}</span></span>
                                <div id="min2">
                                    {{ Form::submit('確定') }}
                                    <button type="button" class="minbutn"  id="opener">註冊帳號</button>
                                </div>
                            {{Form::close()}}    
                        </div>
                    <!-- @endif -->

@stop
         
         
         
         
         
         