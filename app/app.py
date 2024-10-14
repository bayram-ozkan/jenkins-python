from flask import Flask

# Flask uygulamasını başlatıyoruz
app = Flask(__name__)

# Ana sayfa için route tanımlıyoruz
@app.route('/')
def hello_world():
    return '---------------- Merhaba Dünya! --------------------'

# Uygulamayı çalıştırıyoruz
if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000)
