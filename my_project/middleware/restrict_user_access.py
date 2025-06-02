from django.shortcuts import redirect

class RestrictUserAccessMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        path = request.path.rstrip('/')

        if path in ['', '/', '/login', '/register', '/logout']:
            return self.get_response(request)

        if not request.user.is_authenticated:
            return redirect('/login')

        username = request.user.username.lower()

        if username == "balaji" or request.user.is_superuser:
            if not path.startswith('/admin'):
                return redirect('/admin')

        elif username == "dckap_admin" :
            if not path.startswith('/myadmin'):
                return redirect('/myadmin')

        elif username in ["bala_pw_dpt", "lokesh_ws_dpt", "vicky_elect_dpt", "gopi_wm_dpt"] or request.user.is_staff:
            if not path.startswith('/staff'):
                return redirect('/staff')

        else:
            if not path.startswith('/user'):
                return redirect('/user')

        return self.get_response(request)