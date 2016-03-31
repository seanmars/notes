# Router

##### Make a "home" page. This page can use "redirect()->home();" to access.

    Route::get('/', ['as' => 'home', function () {
        // ...
    }]);
