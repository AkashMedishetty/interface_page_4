import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0c66f7),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Topshade.png'),
                    fit: BoxFit.contain,
                    repeat: ImageRepeat.repeatY
                )
            ),
          ),
          centerTitle: true,
          toolbarHeight: 200,
        ),
        body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 20, 0),
            child: ListView(
              children: <Widget>[
            SizedBox(height: 50,),
                Container(
                  width: MediaQuery.of(context).size.width/22,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 20, 0),
                    child: Text("  VERIFY PHONE NUMBER" , style: TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.bold ), textAlign: TextAlign.center,),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff0c66f7),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 10,
                        blurRadius: 14,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                    SizedBox(height: 15,),
                    Container(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Expanded(
                            child: Divider(
                              indent: 20.0,
                              endIndent: 10.0,
                              thickness: 3,
                            ),
                          ),
                          Text(
                            "OR",
                            style: TextStyle(color: Colors.blueGrey,  fontSize: 20,),
                          ),
                          Expanded(
                            child: Divider(
                              indent: 10.0,
                              endIndent: 20.0,
                              thickness: 3,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 15,),
                Container(
                  width: MediaQuery.of(context).size.width/22,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 20, 0),
                    child: Text("    VERIFY EMAIL" , style: TextStyle(fontSize: 28,color: Colors.white, fontWeight: FontWeight.bold ), textAlign: TextAlign.center,),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff0c66f7),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 10,
                        blurRadius: 14,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),


             ] )

    )) );
  }
}