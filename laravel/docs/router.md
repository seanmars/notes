# Router

### #Notes

- Route parameters cannot contain the - character. Use an underscore (_) instead.

### #Router Methods :

	Route::get($uri, $callback);
	Route::post($uri, $callback);
	Route::put($uri, $callback);
	Route::patch($uri, $callback);
	Route::delete($uri, $callback);
	Route::options($uri, $callback);

### #Define A Router ?

	// get
	Route::get('foo', function () {
	    return 'Hello World';
	});

	// match, both get and post
	Route::match(['get', 'post'], '/', function () {
	    //
	});

	// any
	Route::any('foo', function () {
	    //
	});

### #Use Paramenters :

##### Default

	Route::get('user/{name}', function ($name) {
    	return $name;
    });

	Route::get('posts/{post}/comments/{comment}', function ($postId, $commentId) {
	    //
	});

##### Optional Parameters '?'

    Route::get('user/{name?}', function ($name = null) {
    	return $name;
    });

##### Regular Expression Constraints

	Route::get('user/{name}', function ($name) {
	    //
	})
	->where('name', '[A-Za-z]+');
	
	Route::get('user/{id}/{name}', function ($id, $name) {
	    //
	})
	->where(['id' => '[0-9]+', 'name' => '[a-z]+']);

### #Named Routes

##### Use ['as' => 'name']

	Route::get('user/profile', ['as' => 'profile', function () {
	    //
	}]);

##### Use chain
 
	Route::get('user/profile')->name('profile');

##### Generating URLs by name

	$url = route('profile');

##### Generating Redirects by name

	return redirect()->route('profile');

#####Make a 'home' page. This page can use 'redirect()->home();' to access.

    Route::get('/', ['as' => 'home', function () {
        // ...
    }]);

### #Route Groups

Route groups allow you to share route attributes, such as `middleware` or `namespaces`, across a large number of routes without needing to define those attributes on each individual route. Shared attributes are specified in an array format as the first parameter to the `Route::group` method.

##### Middleware

	Route::group(['middleware' => 'auth'], function () {
	    Route::get('/', function ()    {
	        // Uses Auth Middleware
	    });
	
	    Route::get('user/profile', function () {
	        // Uses Auth Middleware
	    });
	});

##### Namespaces

Assigning the same PHP namespace to a group of controllers. You may use the `namespace` parameter in your group attribute array to specify the namespace for all controllers within the group:

	Route::group(['namespace' => 'Admin'], function()
	{
	    // Controllers Within The "App\Http\Controllers\Admin" Namespace
	
	    Route::group(['namespace' => 'User'], function() {
	        // Controllers Within The "App\Http\Controllers\Admin\User" Namespace
	    });
	});

##### Sub-Domain Routing

	Route::group(['domain' => '{account}.myapp.com'], function () {
	    Route::get('user/{id}', function ($account, $id) {
	        //
	    });
	});

##### Route Prefixes

	Route::group(['prefix' => 'admin'], function () {
	    Route::get('users', function ()    {
	        // Matches The "/admin/users" URL
	    });
	});

	Route::group(['prefix' => 'accounts/{account_id}'], function () {
	    Route::get('detail', function ($accountId)    {
	        // Matches The "/accounts/{account_id}/detail" URL
	    });
	});
