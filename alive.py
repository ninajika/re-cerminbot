import os
import time

import requests

BASE_URL = os.environ.get("BASE_URL_OF_BOT", None)
try:
    if len(BASE_URL) == 0:
        raise TypeError
except TypeError:
    BASE_URL = None
PORT = os.environ.get("PORT", None)
if PORT is not None and BASE_URL is not None:
    while True:
        time.sleep(600)
        status = requests.get(BASE_URL).status_code
