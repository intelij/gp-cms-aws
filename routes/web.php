<?php

use \TCG\Voyager\Models\Post;
use Illuminate\Http\Request;
use App\Contact;

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
    $posts = Post::where('status', 'PUBLISHED')->get();

    return view('welcome')->with('posts', $posts);
});

Route::get('/home', function () {
    $posts = Post::where('status', 'PUBLISHED')->get();

    return view('welcome')->with('posts', $posts);
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('faq', function() {
    return view('faq');
});

Route::get('terms', function() {
    return view('terms');
});


Route::get('awards', function() {

    $posts = Post::where('status', 'PUBLISHED')->get();

    return view('awards')->with('posts', $posts);

});


Route::post('contact', function(Request $request) {

    $input = $request->all();

    $contact = new Contact;

    $name = $contact->name = $input['name'];
    $email = $contact->email = $input['email'];
    $message = $contact->message = $input['message'];

    $contact->save();

    $posts = Post::where('status', 'PUBLISHED')->get();

    $formatted_message = "$name \n\r $email \n\r $message";

    mail('info@gyapom.com', 'Gyapom: Website Request Form', $formatted_message);

    return view('welcome')->with('message', 'Message Sent. Thank you')->with('posts', $posts);

});
