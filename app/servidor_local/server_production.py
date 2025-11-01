import http.server
import socketserver
import os

PORT = 3000
base_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', 'leitor'))
os.chdir(base_dir)

class CORSRequestHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Cache-Control', 'no-cache, no-store, must-revalidate')
        http.server.SimpleHTTPRequestHandler.end_headers(self)

with socketserver.TCPServer(("", PORT), CORSRequestHandler) as httpd:
    print(f"🔥 Servidor local rodando em http://localhost:{PORT}")
    print("🌐 Modo ONLINE ativado — carregando scripts da web")
    print("✅ Pressione Ctrl+C para parar o servidor.")
    httpd.serve_forever()


