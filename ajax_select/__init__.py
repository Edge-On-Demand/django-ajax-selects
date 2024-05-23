"""JQuery-Ajax Autocomplete fields for Django Forms."""

# pylint: disable=wrong-import-position

VERSION = (1, 7, 1)
__version__ = ".".join(map(str, VERSION))

__author__ = "crucialfelix"
__contact__ = "crucialfelix@gmail.com"
__homepage__ = "https://github.com/Edge-On-Demand/django-ajax-selects/"

from django.apps import AppConfig  # noqa

from ajax_select.registry import registry, register  # noqa
from ajax_select.helpers import make_ajax_form, make_ajax_field  # noqa
from ajax_select.lookup_channel import LookupChannel  # noqa

# django 1.7+ will use the new AppConfig api
# It will load all your lookups.py modules
# and any specified in settings.AJAX_LOOKUP_CHANNELS
# It will do this after all apps are imported.
default_app_config = "ajax_select.apps.AjaxSelectConfig"
