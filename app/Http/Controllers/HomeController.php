<?php
namespace App\Http\Controllers;
use View;
use Illuminate\Support\Facades\Input;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Redirect;
class Account extends Model{
        protected $table = "account_info";
}

class HomeController extends Controller{

    public function index(){

        
        $posts=Account::all();
        return View::make('site.home')
                ->with('title','首頁')
                ->with('posts',$posts);
    }
    public function show($id){
        $posts=Account::find($id);
        return View::make('site.show')
                ->with('title','帳號頁')
                ->with('post',$posts);
    }

    public function create(){
        
        $posts=new Account;
        
        $posts->user=$_POST["user"];
        $posts->username=$_POST["username"];
        $posts->gender=$_POST["gender"];
        $posts->birthday=$_POST["birthday"];
        $posts->email=$_POST["email"];
        $posts->Remarks=$_POST["Remarks"];
        $posts->save();
      
        return Redirect::to('posts');


    }
    public function edit($id){

        $posts=Account::find($id);
        return Redirect::to('posts');

    }
    public function destory($id){

        $posts=Account::find($id);
        $posts->delete();
        return Redirect::to('posts');

    }
    public function insert(){

        $post=new Account;
        $post->user='test1';
        $post->username='will';
        $post->gender='man';
        $post->birthday='1989-9-1';
        $post->email='123@gmail.com';
        $post->Remarks='test';
        $post->save();

        return "insert ok";
            
    }
    


}