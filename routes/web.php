<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/test', function () {
    $test="ok";
    return $test;
});

Route::get('/posts', 'SimpleController@index');
Route::get('/posts/insert', 'SimpleController@insert');	
Route::get('/posts/{id}','SimpleController@show');
Route::delete('/posts/{id}','SimpleController@destory');
Route::post('/posts/create', 'SimpleController@create');	
Route::post('/posts/login', 'SimpleController@login');	

Route::get('/posts/{id}/edit', 'SimpleController@edit');	
Route::get('del', 'SimpleController@deltest');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
