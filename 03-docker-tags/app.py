#!/usr/bin/env python3

import http.server as hs

class HTTPHandler(hs.BaseHTTPRequestHandler):

    def do_GET(self):
        self.send_response(200)
        self.end_headers()
        self.wfile.write('Raichu!'.encode('utf-8'))

server = hs.HTTPServer(('', 8080), HTTPHandler)
server.serve_forever()
