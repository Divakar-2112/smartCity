from django.shortcuts import redirect

# middleware access

class RestrictUserAccessMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        path = request.path.rstrip('/')

    # make page accessable for all the users
    
        if path in ['', '/', '/login', '/register', '/logout']:
            return self.get_response(request)

    # user authentication
    
        if not request.user.is_authenticated:
            return redirect('/login')

        username = request.user.username.lower()

    # superuser page access
    
        if username == "balaji" or request.user.is_superuser:
            if not path.startswith('/admin'):
                return redirect('/admin')
            
    # admin page access

        elif username == "dckap_admin" :
            if not path.startswith('/myadmin'):
                return redirect('/myadmin')
            
    # department staff page access

        elif username in ["bala_pw_dpt", "lokesh_ws_dpt", "vicky_elect_dpt", "gopi_wm_dpt"] or request.user.is_staff:
            if not path.startswith('/staff'):
                return redirect('/staff')

    # citizen page access
    
        else:
            if not path.startswith('/user'):
                return redirect('/user')

        return self.get_response(request)