# Controller

- Must stored the file under the `app/Http/Controllers`
- Must extend Controller
- Can route to the controller action
- Middleware may be assigned to the controller's routes
- Route caching does not work with Closure based routes. To use route caching, you must convert any Closure routes to use controller classes.

### Route to controller

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

### Namespaces

- The root namepsaces is `App\Http\Controllers`
- If the namepsaces is `App\Http\Controllers`, simply use the specific class name relative to the `App\Http\Controllers` root namespace.
- if your full controller class is `App\Http\Controllers\Photos\AdminController`, you would register a route like so:

>

    Route::get('photo', 'Photos\PhotoController@metod');

### Naming

	Route::get('photo', ['uses' => 'PhotoController@method', 'as' => 'show']);

### Middleware

##### Assigned to controller's router :

	Route::get('profile', [
	    'middleware' => 'auth',
	    'uses' => 'UserController@showProfile'
	]);

##### Use middleware in controller :

	class UserController extends Controller
	{
	    /**
	     * Instantiate a new UserController instance.
	     *
	     * @return void
	     */
	    public function __construct()
	    {
	        $this->middleware('auth');
	
	        $this->middleware('log', ['only' => [
	            'fooAction',
	            'barAction',
	        ]]);
	
	        $this->middleware('subscribed', ['except' => [
	            'fooAction',
	            'barAction',
	        ]]);
	    }
	}

### RESTful Resource Controllers

##### Create resource controller :

	php artisan make:controller PhotoController --resource

##### Register a resourceful route to the controller :

	Route::resource('photo', 'PhotoController');

##### Actions handled :

| Verb      | Path                | Action  | Route Name    |
|-----------|---------------------|---------|---------------|
| GET       | /photo              | index   | photo.index   |
| GET       | /photo/create       | create  | photo.create  |
| POST      | /photo              | store   | photo.store   |
| GET       | /photo/{photo}      | show    | photo.show    |
| GET       | /photo/{photo}/edit | edit    | photo.edit    |
| PUT/PATCH | /photo/{photo}      | update  | photo.update  |
| DELETE    | /photo/{photo}      | destroy | photo.destroy |

##### Add additional routes to a resource :

	Route::get('photos/popular', 'PhotoController@method');
	Route::resource('photos', 'PhotoController');

##### PhotoController.php

	class PhotoController extends Controller
	{
	    /**
	     * Display a listing of the resource.
	     *
	     * @return \Illuminate\Http\Response
	     */
	    public function index()
	    {
	        //
	    }
	
	    /**
	     * Show the form for creating a new resource.
	     *
	     * @return \Illuminate\Http\Response
	     */
	    public function create()
	    {
	        //
	    }
	
	    /**
	     * Store a newly created resource in storage.
	     *
	     * @param \Illuminate\Http\Request $request
	     *
	     * @return \Illuminate\Http\Response
	     */
	    public function store(Request $request)
	    {
	        //
	    }
	
	    /**
	     * Display the specified resource.
	     *
	     * @param int $id
	     *
	     * @return \Illuminate\Http\Response
	     */
	    public function show()
	    {
	        //
	    }
	
	    /**
	     * Show the form for editing the specified resource.
	     *
	     * @param int $id
	     *
	     * @return \Illuminate\Http\Response
	     */
	    public function edit($id)
	    {
	        //
	    }
	
	    /**
	     * Update the specified resource in storage.
	     *
	     * @param \Illuminate\Http\Request $request
	     * @param int                      $id
	     *
	     * @return \Illuminate\Http\Response
	     */
	    public function update(Request $request, $id)
	    {
	        //
	    }
	
	    /**
	     * Remove the specified resource from storage.
	     *
	     * @param int $id
	     *
	     * @return \Illuminate\Http\Response
	     */
	    public function destroy($id)
	    {
	        //
	    }

		public function popular()
		{
			//
		}
	}

##### Singular

	Route::resource('users.photos', 'PhotoController', [
	    'parameters' => 'singular'
	]);

##### Actions handled with singular

| Verb      | Path                             | Actino  | Route Name           |
|-----------|----------------------------------|---------|----------------------|
| GET       | users/{user}/photos              | index   | users.photos.index   |
| GET       | users/{user}/photos/create       | create  | users.photos.create  |
| POST      | users/{user}/photos              | store   | users.photos.store   |
| GET       | users/{user}/photos/{photo}      | show    | users.photos.show    |
| GET       | users/{user}/photos/{photo}/edit | edit    | users.photos.edit    |
| PUT/PATCH | users/{user}/photos/{photo}      | update  | users.photos.update  |
| DELETE    | users/{user}/photos/{photo}      | destroy | users.photos.destroy |

#### Use `Route::resourceParameters` to set names

	Route::resourceParameters([
	    'user' => 'person', 'photo' => 'image'
	]);

#### Naming priority :

1. The parameters explicitly passed to `Route::resource`.
2. The global parameter mappings set via `Route::resourceParameters`.
3. The `singular` setting passed via the `parameters` array to `Route::resource` or set via `Route::singularResourceParameters`.
4. The default behavior.

### Dependency Injection

##### Constructor Injection
##### Method Injection
