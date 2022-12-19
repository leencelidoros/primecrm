<?php

use Illuminate\Support\Facades\Route;

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



Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function () {
    Route::get('/', function () {
        return view('pages.home.index');
    });
    Route::resource('/users', '\App\Http\Controllers\UsersController');
    Route::get('/my-profile', '\App\Http\Controllers\UsersController@getProfile');
    Route::get('/my-profile/edit', '\App\Http\Controllers\UsersController@getEditProfile');
    Route::patch('/my-profile/edit', '\App\Http\Controllers\UsersController@postEditProfile');

    Route::resource('/permissions', '\App\Http\Controllers\PermissionsController');

    Route::resource('/roles', '\App\Http\Controllers\RolesController');

    Route::get('/users/role/{id}', '\App\Http\Controllers\UsersController@getRole');

    Route::put('/users/role/{id}', '\App\Http\Controllers\UsersController@updateRole');



    Route::resource('/documents', '\App\Http\Controllers\DocumentsController');
    Route::get('/documents/{id}/assign', '\App\Http\Controllers\DocumentsController@getAssignDocument');
    Route::put('/documents/{id}/assign', '\App\Http\Controllers\DocumentsController@postAssignDocument');


    Route::resource('/contacts', '\App\Http\Controllers\ContactsController');
    Route::get('/contacts/{id}/assign', '\App\Http\Controllers\ContactsController@getAssignContact');
    Route::put('/contacts/{id}/assign', '\App\Http\Controllers\ContactsController@postAssignContact');



    Route::get('/api/contacts/get-contacts-by-status', '\App\Http\Controllers\ContactsController@getContactsByStatus');
    Route::resource('/tasks', '\App\Http\Controllers\TasksController');
    Route::get('/tasks/{id}/assign', '\App\Http\Controllers\TasksController@getAssignTask');
    Route::put('/tasks/{id}/assign', '\App\Http\Controllers\TasksController@postAssignTask');
    Route::get('/tasks/{id}/update-status', '\App\Http\Controllers\TasksController@getUpdateStatus');
    Route::put('/tasks/{id}/update-status', '\App\Http\Controllers\TasksController@postUpdateStatus');

    Route::get('/forbidden', function () {
        return view('pages.forbidden.forbidden_area');
    });
});
Route::get('/', function () {
    return redirect()->to('/admin');
});
Auth::routes();
