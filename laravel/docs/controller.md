# Controller
- Must stored the file under the `app/Http/Controllers`
- Must extend Controller
- Can route to the controller action
- Middleware may be assigned to the controller's routes

##### Route to controller

	Route::get('user/{id}', 'UserController@showProfile');

UserController.js

	<?php
	
	namespace App\Http\Controllers;
	
	use App\User;
	use App\Http\Controllers\Controller;
	
	class UserController extends Controller
	{
	    /**
	     * Show the profile for the given user.
	     *
	     * @param  int  $id
	     * @return Response
	     */
	    public function showProfile($id)
	    {
	        return view('user.profile', ['user' => User::findOrFail($id)]);
	    }
	}

##### Namespaces

- The root namepsaces is `App\Http\Controllers`
- If the namepsaces is `App\Http\Controllers`, simply use the specific class name relative to the `App\Http\Controllers` root namespace.
- if your full controller class is `App\Http\Controllers\Photos\AdminController`, you would register a route like so:

>

    Route::get('foo', 'Photos\AdminController@method');
