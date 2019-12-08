import requests


def test_get_storage():
  assert requests.get("http://storage_node_local/storage/test.txt").text.strip() == "Hello world!"
