# Controller
- Must extend Controller
- Can route to the controller action
- Middleware may be assigned to the controller's routes

##### Route to controller

	Route::get('user/{id}', 'UserController@showProfile');

UserController

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
