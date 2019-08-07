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

Route::get('/posts', 'HomeController@index');
Route::get('/posts/insert', 'HomeController@insert');	
Route::get('/posts/{id}','HomeController@show');
Route::delete('/posts/{id}','HomeController@destory');
Route::post('/posts/create', 'HomeController@create');	
Route::get('/posts/{id}/edit', 'HomeController@edit');	
Route::get('del', 'HomeController@deltest');