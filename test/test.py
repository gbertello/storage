import requests
import unittest


class NodeTest(unittest.TestCase):
  def test_can_download_document(self):
    r = requests.get("http://node_local/storage/test.txt")
    self.assertEqual(r.text.strip(), "Hello World!")


if __name__ == "__main__":
  unittest.main()
