
@extends('site.layouts.default')
	@section('content') 	
    
    {{ Html::script('js/user.js') }}
       
                  <h1>{{ $title }}</h1>
                  <span id="t2"></span>
                  <div id="dialog-1" title="會員註冊">
                        <form action="posts/create" method="post" name="myForm" onsubmit="return validateForm()">
                            {{csrf_field()}}
                            帳號:<input type="text" name="user" onkeyup="value=value.replace(/[\W]/g,'') "
onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">
                            姓名:<input type="text" name="username">
                            性別:<input type="text" name="gender">
                            生日:<input type="text" name="birthday">
                            信箱:<input type="text" name="email">
                            備註:<input type="text" name="Remarks">
                            <input type="submit">
                        </form>
                  </div>
                   <!-- <button id="opener">Open Dialog</button> -->
                   <a  id="opener" class="btn-floating btn-large waves-effect waves-light red " id="opener"><i class="material-icons">add</i></a>
                   <br> 
                   @if (isset($posts))
                   <span class="badge badge-light">{{ count($posts)}}筆資料</span>
                   <br>
                      <ul class="collection">
                          @foreach($posts as $post)			
                              <li class="collection-item">
                                {{  link_to('posts/'.$post->id,$post->user) }}
                                
                                <a class="opener2">編輯</a>
                               
                                {{ Form::open(['url'=>'posts/'.$post->id, 'method'=>'delete']) }}<button type="submit">刪除</button>{{ Form::close() }} 						
                             </li>
                         @endforeach	
                     </ul>
                     
                     <div class="dialog-2" title="編輯帳戶資料">
                                    <form action="posts/{{$post->id}}" method="get">
                                        {{csrf_field()}}
                                        帳號:<input type="text" name="user" value="{{$post->user}}">
                                        <input type="submit">
                                    </form>
                    </div>
                     
                    @endif
                   



@stop
         
         
         
         
         
         