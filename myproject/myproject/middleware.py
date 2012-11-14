# See: http://mirobetm.blogspot.se/2012/03/ive-been-lighttpd-fastcgi-django-user.html
class XForwardedForMiddleware(object):
    def process_request(self, request):
        if "HTTP_X_FORWARDED_FOR" in request.META:
            ip = request.META["HTTP_X_FORWARDED_FOR"]
            if ip.startswith('::ffff:'):
                ip = ip[len('::ffff:'):]
            request.META["REMOTE_ADDR"] = ip
            request.META["REMOTE_HOST"] = None