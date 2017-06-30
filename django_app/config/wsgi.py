# config.settings.wsgi.__init__
# 이 내용이 없으면 runserver실행 불가능
import os

from django.core.wsgi import get_wsgi_application

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "config.settings")

application = get_wsgi_application()