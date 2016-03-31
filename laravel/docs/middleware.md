# Middleware

##### Run some codes before and after application to the Request and Response objects as you want.
Some scenarios:
  - To protect the app from cross-site request forgery(CSRF)
  - Authenticate requests before do something.


##### Use "response", "redirect", or "$next($request)" in handle($request, Closure $next).

    public function handle($request, Closure $next, $guard = null)
    {
    	if (Auth::guard($guard)->guest()) {
          if ($request->ajax() || $request->wantsJson()) {
            return response('Unauthorized.', 401);
          } else {
            return redirect()->guest('login');
          }
    	}
    	
    	return $next($request);
    }
