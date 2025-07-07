from flask import Flask, jsonify
from datetime import datetime

app = Flask(__name__)

@app.get('/api/v1/timestamp')
def get_timestamp():
    response = {
        'timestamp': datetime.now().isoformat(),
        'message': 'Automate All The Things'
    }
    return jsonify(response)

if __name__ == '__main__':
    app.run(debug=True)
