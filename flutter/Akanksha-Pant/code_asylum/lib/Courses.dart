import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: OtherPages(),
      ),
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.black,
        actions: <Widget>[
          Image.asset("Images/logo.png"),
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TrendingTechnologies(),
          SizedBox(height: 100,),
          CareerCourses(),
          SizedBox(height: 100,)
        ],
      )),
    );
  }
}

class TrendingTechnologies extends StatefulWidget {
  @override
  _TrendingTechnologiesState createState() => _TrendingTechnologiesState();
}


class _TrendingTechnologiesState extends State<TrendingTechnologies> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[900],
      padding: EdgeInsets.only(top: 30, left: 50, right: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          RaisedButton(
            color: Colors.deepOrange,
              padding: EdgeInsets.only(top: 20, left: 20),
            onPressed: (){},
            child: Container(
            color: Colors.white,
              height: 250,
              width: 225,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("FULL STACK WEB DEVLOPMENT + DSA",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                  Text("14th July 2020",
                    style: TextStyle(
                        fontSize: 14,
                    ),),

                ],
              ),
          )),
          SizedBox(height: 20,),
          RaisedButton(
            color: Colors.deepOrange,
            padding: EdgeInsets.only(top: 20, left: 20),
            onPressed: (){},
              child: Container(
                color: Colors.white,
                height: 250,
                width: 225,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("Machine Learning + DSA".toUpperCase(),
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),),
                    Text("14th July 2020",
                      style: TextStyle(
                        fontSize: 14,
                      ),),

                  ],
                ),
              )
          ),
          SizedBox(height: 20,),
          RaisedButton(
              color: Colors.deepOrange,
              padding: EdgeInsets.only(top: 20, left: 20),
              onPressed: (){},
              child: Container(
                color: Colors.white,
                height: 250,
                width: 225,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("Virgin Algorithms  + DSA".toUpperCase(),
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),),
                    Text("14th July 2020",
                      style: TextStyle(
                        fontSize: 14,
                      ),),

                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}

class CareerCourses extends StatefulWidget {
  @override
  _CareerCoursesState createState() => _CareerCoursesState();
}

class _CareerCoursesState extends State<CareerCourses> {
  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width - 20,
            height: 75,
          color: Colors.blueGrey[900],
            padding: EdgeInsets.all(10),
            child: Text(
              "Career Courses",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.white
              ),
            ),
          )
                ],
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
                padding: EdgeInsets.all(8),
                children: [
                  RaisedButton(
                    elevation: 0,
                    onPressed: (){},
                    padding: EdgeInsets.all(0),
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Image.asset("Images/ML.png",
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),),
                  RaisedButton(
                    elevation: 0,
                    onPressed: (){},
                    padding: EdgeInsets.all(0),
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Image.asset("Images/FullStack.png",
                          fit: BoxFit.cover,
                        ),
                      ],
                  ),),
                  RaisedButton(
                    onPressed:(){} ,
                    padding: EdgeInsets.all(0),
                      color: Colors.white,
                      elevation: 0,
                    child: Column(
                      children: <Widget>[
                        Image.asset("Images/VirginAlgo.png",
                          fit: BoxFit.cover,),
                      ],
                    )
                  ),
                ],),]
    ));
  }
}
class OtherPages extends StatefulWidget {
  @override
  _OtherPagesState createState() => _OtherPagesState();
}

class _OtherPagesState extends State<OtherPages> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawerHeader(
          child: Image.asset("Images/logo.png"),
          decoration: BoxDecoration(
            color: Colors.black
          ),
        ),
        ListTile(
          title: Text("Home"),
          onTap: (){},
        ),
        ListTile(
          title: Text("Courses"),
          onTap: (){},
        ),
        ListTile(
          title: Text("Culture"),
          onTap: (){},
        ),
        ListTile(
          title: Text("Mentors"),
          onTap: (){},
        ),
        ListTile(
          title: Text("Our Team"),
          onTap: (){},
        ),
        ListTile(
          title: Text("Campus Ambassadors"),
          onTap: (){},
        ),
      ],
    );
  }
}
