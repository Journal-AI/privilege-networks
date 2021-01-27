from datetime import datetime, timedelta
import math
import json
from flask import Flask, make_response, request
import sys
import os

def create_app(test_config=None):
    # create and configure the app
    app = Flask(__name__, instance_relative_config=True)
    app.config.from_mapping(
        SECRET_KEY='dev',
    )

    if test_config is None:
        # load the instance config, if it exists, when not testing
        app.config.from_pyfile('config.py', silent=True)
    else:
        # load the test config if passed in
        app.config.from_mapping(test_config)

    # ensure the instance folder exists
    try:
        os.makedirs(app.instance_path)
    except OSError:
        pass

    return app

app = create_app()

@app.route('/ephemeric/<string:lat>/<string:lng>/<string:timestamp>')
def hello(lat, lng, timestamp):
    d = pd.Timestamp(timestamp)
    pos = suncalc.getPosition(d.to_pydatetime(), float(lat), float(lng))
    d = dict(zip(['azimuth', 'altitude'], [pos['azimuth'], pos['altitude']]))
    enc = json.JSONEncoder()
    response = make_response(enc.encode(d))
    response.headers['Content-Type'] = 'application/json'
    return response

@app.route('/azimuth_altitude_write', methods=['POST'])
def write_text():
    dataURLArray = request.get_data()
    decoder = json.JSONDecoder()
    dataURLArray = decoder.decode(dataURLArray.decode())
    res = []
    print(dataURLArray, file=sys.stderr)
    for fileno, dataUrl in enumerate(list(dataURLArray.values())):
        f = open('azimuth_altitude_canvas_file' + (fileno+1).__str__(), 'w')
        f.write(dataUrl)
        f.flush()
        f.close()
        res.append(1)
    enc = json.JSONEncoder()
    response = make_response(enc.encode(res))
    response.headers['Content-Type'] = 'application/json'
    return response

