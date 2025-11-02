from http.server import HTTPServer, SimpleHTTPRequestHandler
import time

class Handler(SimpleHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.end_headers()
        self.wfile.write(b"hello \n")

srv = HTTPServer(("", 8080), Handler)
print("serving on :8080")
srv.serve_forever()