# Router

##### Notes

- Route parameters cannot contain the - character. Use an underscore (_) instead.


##### Optional paramenters use '?'

    Route::get('user/{name?}', function ($name = null) {
    	return $name;
    });

##### Make a 'home' page. This page can use 'redirect()->home();' to access.

    Route::get('/', ['as' => 'home', function () {
        // ...
    }]);
