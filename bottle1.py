import pymongo
from pymongo import MongoClient
from bottle import *
import pytz
from datetime import datetime
import bottle_session
from bottle.ext import beaker
session_opts = {
    'session.type': 'file',
    'session.cookie_expires': 300,
    'session.data_dir': './data',
    'session.auto': True
}

app = beaker.middleware.SessionMiddleware(app(), session_opts)

@route('/')
def index():
    return template("template/home.tpl")

@route('/welcome',method="POST")
def mainpage():
    k1=""
    k2=""
    k1=request.forms.get('uname')
    k2=request.forms.get('upass')
    print(k1,k2)
    connection=MongoClient('localhost',27017)
    db=connection.app1
    names=db.u1
    op=names.find({"name":k1,"pass":k2})
    p=1
    for i in op:
        if i['name']==k1 and i['pass']==k2:
            p=0
            s = request.environ.get('beaker.session')
            s['user']=k1
            return template("template/main.tpl",name=s['user'])
    if p==1:
        return "Sorry Can't Find You!"
            
    #if(k1==op['name'] and k2==op['pass']):
    #    print("Welcome "+k1)
    #    return "Welcome"+k1
    #else:
    #    return "Sorry Can't Find You!"

@route('/shift')
def shift():
    return template("template/signup.tpl")
    
@route('/shift2')
def shift():
    return template("template/home.tpl")

@route('/welcome1',method="POST")
def king():
    fo={}
    po=[]
    fe="ER"
    k1=request.forms.get('pname')
    connection=MongoClient('localhost',27017)
    db=connection.app1
    s=request.environ.get('beaker.session')
    print(s['user'])
    intz = pytz.timezone('Asia/Kolkata')
    nowdt = datetime.now(intz)
    query={"name":s['user'],"comments":k1,"time":nowdt}
    names=db.u2
    names.insert_one(query)
    k=names.find({})
    for i in k:
        print(i)
        s1=""
        #s1+="Added By  : "+i['name']+"\n"
        #s1+="Post Time : "+str(i['time'].strftime("%Y-%m-%d %H:%M"))+"\n\n"
        s1+=i['comments']+"\n"
        po.append(s1)
    po.reverse()
    fo[fe]=po
    print(fo)
    for i in fo.items():
        print(i)
    for i in fo["ER"]:
        print(i)
    print("Added Finally")
    print("---------------------")
    return template("template/main1.tpl",fo,name=s['user'])


@route('/welcome3')
def queen():
    fo={}
    po=[]
    fe="ER"
    connection=MongoClient('localhost',27017)
    db=connection.app1
    s=request.environ.get('beaker.session')
    print(s['user'])
    intz = pytz.timezone('Asia/Kolkata')
    nowdt = datetime.now(intz)
    names=db.u2
    k=names.find({})
    for i in k:
        print(i)
        s1=""
        #s1+="Added By  : "+i['name']+"\n"
        #s1+="Post Time : "+str(i['time'].strftime("%Y-%m-%d %H:%M"))+"\n\n"
        s1+=i['comments']+"\n"
        po.append(s1)
    po.reverse()
    fo[fe]=po
    print(fo)
    for i in fo.items():
        print(i)
    for i in fo["ER"]:
        print(i)
    print("Added Finally")
    print("---------------------")
    return template("template/main1.tpl",fo,name=s['user'])





@route('/welcome2',method="POST")
def signin():
    #connection=MongoClient('location',27017)
    #db=connection.app1
    #names=db.u1 #users
    f1=request.forms.get('sname')
    f2=request.forms.get('semail')
    f3=request.forms.get('spass')
    #print(f1+f2+f3)
    query={"name":f1,"email":f2,"pass":f3}
    print(query)
    #names.insert_one({"name":f1,"email":f2,"pass":f3})
    connection=MongoClient('localhost',27017)
    db=connection.app1
    names=db.u1
    names.insert_one(query)
    #print(item['name'])
    print("Added Finally")
    return "Great Work"
    
@route('/logout')
def logout():
    s=request.environ.get('beaker.session')
    if s['user']!="" and s['user']!=None:
        s['user'] = False
        return template("template/home.tpl")
    
    

run(app=app,host="localhost",port=8080)
