import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomAppBar extends PreferredSize {
  final Widget child;
  final double height;

  CustomAppBar({@required this.child, this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: preferredSize.height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          boxShadow: [BoxShadow(color: Colors.black87)],
        ),
        child: this.child);
  }
}
class Professional extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Image.asset('assets/codeasylum.png'),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Exit'),
              
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        height: 115,
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Builder(
                    builder: (context) => FlatButton.icon(
                        onPressed: () => Scaffold.of(context).openDrawer(),
                        icon: Icon(Icons.menu,color: Colors.white,),
                        label: Text('')),
                  ),
                SizedBox(width: 65),
                Image.asset(
                  'assets/code.jpg',
                  height: 70,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text(
                'Bootstrap yourself into coding with courses especially tailored for working professional!',
                style: GoogleFonts.abel(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    fontSize: 12)),
          ),
          SizedBox(
            height: 0,
          ),
          AvatarGlow(
            glowColor: Colors.purple,
            endRadius: 155.0,
            duration: Duration(milliseconds: 2000),
            repeat: true,
            showTwoGlows: true,
            repeatPauseDuration: Duration(milliseconds: 100),
            child: Material(
              elevation: 8.0,
              shape: CircleBorder(),
              child: ClipRRect(
                              
                              borderRadius: BorderRadius.circular(8.0),child: Image.asset(
                  'assets/teacher.jpg',
                  height: 200,
                  
                ),
              ),
            ),
          ),
          SizedBox(height: 0),
          Row(children: <Widget>[
            SizedBox(width: 105),
            AvatarGlow(
              glowColor: Colors.white,
              endRadius: 30.0,
              duration: Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: Duration(milliseconds: 100),
              child: Material(
                elevation: 8.0,
                shape: CircleBorder(),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  child: Image.asset(
                    'assets/google.png',
                    height: 50,
                  ),
                  radius: 15.0,
                ),
              ),
            ),
            AvatarGlow(
              glowColor: Colors.white,
              endRadius: 30.0,
              duration: Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: Duration(milliseconds: 100),
              child: Material(
                elevation: 8.0,
                shape: CircleBorder(),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  child: Image.asset(
                    'assets/microsoft.png',
                    height: 50,
                  ),
                  radius: 15.0,
                ),
              ),
            ),
            AvatarGlow(
              glowColor: Colors.white,
              endRadius: 30.0,
              duration: Duration(milliseconds: 2000),
              repeat: true,
              showTwoGlows: true,
              repeatPauseDuration: Duration(milliseconds: 100),
              child: Material(
                elevation: 8.0,
                shape: CircleBorder(),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  child: Image.asset(
                    'assets/facebook.png',
                    height: 50,
                  ),
                  radius: 15.0,
                ),
              ),
            ),
          ]),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(
                width: 150,
              ),
              SizedBox(
                width: 120,
                child: TypewriterAnimatedTextKit(
                    pause: Duration(milliseconds: 400),
                    repeatForever: true,
                    onTap: () {
                      print("Tap Event");
                    },
                    text: ['Professional?'],
                    textStyle: TextStyle(
                        fontSize: 21.0,
                        fontFamily: "Agne",
                        color: Colors.white),
                    textAlign: TextAlign.start,
                    alignment:
                        AlignmentDirectional.topStart // or Alignment.topLeft
                    ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text('Ace Developer',
              style: GoogleFonts.abel(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 15)),
          SizedBox(height: 50),
          FlatButton.icon(
            onPressed: null,
            icon: Icon(Icons.arrow_forward_ios),
            label: Text(
              "Let's plan a career transformation",
              style: GoogleFonts.abel(color: Colors.white,fontWeight: FontWeight.bold)
              
            ),
            disabledColor: Colors.purple,
          )
        ],
      ),
    );
  }
}