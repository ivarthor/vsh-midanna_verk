from sys import argv
import bottle
from bottle import *
import urllib.request, json



@route("/")
def index():
    return """
        <h2>Miðanna-verkefni</h2
        <p><a href="/index">Bensin söluaðilar á íslandi</a></p>
    """
with urllib.request.urlopen("http://apis.is/petrol") as url:
    data = json.loads(url.read().decode())

@route("/index")
def index():
    return template("index.tpl",data = data)

@route("/company/<company>")
def company_index(company):
    return template('company.tpl',data=data,co=company)

@route("/moreinfo/<key>")
def moreinfo_index(key):
    return template('moreinfo.tpl',data = data,k = key)


###############################################
@route("/static/<skra>")
def static_skra(skra):
    return static_file(skra, root = "./static")

@error(404)
def error404(error):
    return "ERROR"


bottle.run(host="0.0.0.0",port=argv[1])
#bottle.run(host="localhost", port=7000, debug=True)
