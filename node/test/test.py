import os
import requests


def test_get_storage():
  assert requests.get("http://%s:80/storage/test.txt" % (os.getenv("IMAGE").replace("pytest", "test"))).text.strip() == "Hello world!"
