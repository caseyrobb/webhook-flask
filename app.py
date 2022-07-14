from flask import Flask, request, Response
import json

app = Flask(__name__)

@app.route('/webhook', methods=['POST'])
def return_response():
    print(json.dumps(request.json));
    return Response(status=200)

if __name__ == "__main__":
	app.run(host='0.0.0.0')
