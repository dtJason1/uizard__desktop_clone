import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  double width(BuildContext context, double size) {
    return  size * MediaQuery.of(context).size.width / 1440;
  }

  double height(BuildContext context, double size) {
    return  size * MediaQuery.of(context).size.height / 900;
  }
  bool cloud = false;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: height(context, 64), color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:  EdgeInsets.fromLTRB(width(context, 20),height(context, 16),0,height(context, 16)),
                    child: Container(width:width(context, 358), height: height(context, 28) , child: Text("Carbon Cloud Dashboard", style: TextStyle(color: Colors.white, fontSize: 24),)),
                  ),
                  Container(width:width(context, 480), height:height(context, 41),
                      child:TextFormField(

                        style: TextStyle(color: Color.fromRGBO(198, 198, 198, 1), fontSize: 14,),

                        cursorColor: Color.fromRGBO(198, 198, 198, 1),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(198, 198, 198, 1), width: 1)
                            ),
                          filled: true,
                          fillColor: Color.fromRGBO(38,38,38, 1),
                          suffixIcon: InkWell(
                            onTap: () => print("sdf"),
                            child: Container(
                              height: 25,
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                          hintText: 'Search resources...',
                           hintStyle: TextStyle(fontSize: 14.0, color: Color.fromRGBO(198, 198, 198, 1),),
                        ),
                      )
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.fromLTRB(0,height(context, 16),width(context, 20),height(context, 16)),
                        child: Icon(Icons.edit, color: Colors.white,),
                      ),
                      Padding(
                        padding:  EdgeInsets.fromLTRB(0,height(context, 16),width(context, 20),height(context, 16)),
                        child: Icon(Icons.notifications, color: Colors.white,),
                      ),
                      Padding(
                        padding:  EdgeInsets.fromLTRB(0,height(context, 16),width(context, 20),height(context, 16)),
                        child: Icon(Icons.person, color: Colors.white,),
                      ),
                    ],
                  )
                  // Icon(Icons.person),
                ],
              ),
            ),


                 Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                       width: width(context,72),
                       color: Colors.white,
                       child: Column( // 버튼
                         children: [
                           Padding(
                             padding:  EdgeInsets.symmetric(vertical: height(context,20), horizontal: width(context, 20)),
                             child: Container(width:width(context, 25), height:height(context, 20) ,child: FittedBox(child: Icon(Icons.list))),
                           ),
                           Padding(
                             padding:  EdgeInsets.symmetric(vertical: height(context,20), horizontal: width(context, 20)),
                             child: Container(width:width(context, 25), height:height(context, 20) ,child: FittedBox(child: InkWell(onTap:(){setState(() {
                               cloud = false;
                             });},child: Icon(Icons.home)))),
                           ),
                           Padding(
                             padding:  EdgeInsets.symmetric(vertical: height(context,20), horizontal: width(context, 20)),
                             child: Container(width:width(context, 25), height:height(context, 20) ,child: FittedBox(child: InkWell(onTap:(){setState(() {
                               cloud = true;
                             });},child: Icon(Icons.cloud)))),
                           ),
                           Padding(
                             padding:  EdgeInsets.symmetric(vertical: height(context,20), horizontal: width(context, 20)),
                             child: Container(width:width(context, 25), height:height(context, 20) ,child: FittedBox(child: Icon(Icons.money))),
                           ),
                           Padding(
                             padding:  EdgeInsets.symmetric(vertical: height(context,20), horizontal: width(context, 20)),
                             child: Container(width:width(context, 25), height:height(context, 20) ,child: FittedBox(child: Icon(Icons.code))),
                           ),
                           Padding(
                             padding:  EdgeInsets.symmetric(vertical: height(context,20), horizontal: width(context, 20)),
                             child: Container(width:width(context, 25), height:height(context, 20) ,child: FittedBox(child: Icon(CupertinoIcons.person_2_fill))),
                           ),
                           Padding(
                             padding:  EdgeInsets.symmetric(vertical: height(context,20), horizontal: width(context, 20)),
                             child: Container(width:width(context, 25), height:height(context, 20) ,child: FittedBox(child: Icon(CupertinoIcons.arrow_2_circlepath_circle))),
                           ),
                           Padding(
                             padding:  EdgeInsets.symmetric(vertical: height(context,20), horizontal: width(context, 20)),
                             child: Container(width:width(context, 25), height:height(context, 20) ,child: FittedBox(child: Icon(CupertinoIcons.plus))),
                           ),

                         ],
                       ),
                      ), // 버튼
                      Builder(
                        builder: (context) {
                          if(!cloud)
                            return Container(
                            child: Column(
                              children: [
                                Row(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Padding(
                                    padding:  EdgeInsets.fromLTRB(0,height(context, 20),0,0),
                                    child: Container(width: width(context,436), height: height(context, 211), color: Color.fromRGBO(244, 244, 244, 1),
                                      child: Padding(
                                        padding:  EdgeInsets.symmetric(vertical: height(context, 20), horizontal: width(context, 20)),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("AI", style: TextStyle(fontSize: 32),),
                                            Padding(
                                              padding:  EdgeInsets.symmetric(vertical: height(context, 20)),
                                              child: Text("work efficientyhly with ai", style: TextStyle(fontSize: 16),),
                                            ),
                                            TextButton(onPressed: (){}, child: Container(
                                              width: width(context, 160),
                                              height: height(context, 42),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Get STARTED",style: TextStyle(color: Color.fromRGBO(15, 98, 254, 1)),),
                                                  Icon(Icons.arrow_forward, color: Color.fromRGBO(15, 98, 254, 1) ,)
                                                ],
                                              ),
                                            ), style: ButtonStyle(
                                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.zero ,side: BorderSide(color: Color.fromRGBO(15, 98, 254, 1))),)
                                            ),)

                                          ],
                                        ),

                                      ),
                                    ),
                                  ),
                                    Padding(
                                      padding:  EdgeInsets.fromLTRB(width(context, 20),height(context, 20),0,0),
                                      child: Container(width: width(context,436), height: height(context, 211), color: Color.fromRGBO(244, 244, 244, 1),
                                        child: Padding(
                                          padding:  EdgeInsets.symmetric(vertical: height(context, 20), horizontal: width(context, 20)),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Infrastructure", style: TextStyle(fontSize: 32),),
                                              Padding(
                                                padding:  EdgeInsets.symmetric(vertical: height(context, 20)),
                                                child: Text("Enhance your infrastructure. ", style: TextStyle(fontSize: 16),),
                                              ),
                                              TextButton(onPressed: (){}, child: Container(
                                                width: width(context, 160),
                                                height: height(context, 42),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("Get STARTED",style: TextStyle(color: Color.fromRGBO(15, 98, 254, 1)),),
                                                    Icon(Icons.arrow_forward, color: Color.fromRGBO(15, 98, 254, 1) ,)
                                                  ],
                                                ),
                                              ), style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.zero ,side: BorderSide(color: Color.fromRGBO(15, 98, 254, 1))),)
                                              ),)

                                            ],
                                          ),

                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.fromLTRB(width(context, 20),height(context, 20),width(context, 20),0),
                                      child: Container(width: width(context,436), height: height(context, 211), color: Color.fromRGBO(244, 244, 244, 1),
                                        child: Padding(
                                          padding:  EdgeInsets.symmetric(vertical: height(context, 20), horizontal: width(context, 20)),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Services", style: TextStyle(fontSize: 32),),
                                              Padding(
                                                padding:  EdgeInsets.symmetric(vertical: height(context, 20)),
                                                child: Text("Check out all our services and status. ", style: TextStyle(fontSize: 16),),
                                              ),
                                              TextButton(onPressed: (){}, child: Container(
                                                width: width(context, 160),
                                                height: height(context, 42),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("Get STARTED",style: TextStyle(color: Color.fromRGBO(15, 98, 254, 1)),),
                                                    Icon(Icons.arrow_forward, color: Color.fromRGBO(15, 98, 254, 1) ,)
                                                  ],
                                                ),
                                              ), style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.zero ,side: BorderSide(color: Color.fromRGBO(15, 98, 254, 1))),)
                                              ),)

                                            ],
                                          ),

                                        ),
                                      ),
                                    ),

                                ],),
                                Row(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.fromLTRB(0,height(context, 20),0,0),
                                      child: Container(width: width(context,892), height: height(context, 210),
                                        decoration: BoxDecoration(image: DecorationImage(image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSerAbP6OZtkC68arVEEYeIBDljIgc4xu5rrtLUk_NHkQ&s"),fit: BoxFit.fitWidth)),
                                        child:
                                            Padding(
                                            padding:  EdgeInsets.symmetric(vertical: height(context, 20), horizontal: width(context, 20)),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Smart Grid", style: TextStyle(fontSize: 32, color: Colors.white),),
                                                Padding(
                                                  padding:  EdgeInsets.symmetric(vertical: height(context, 20)),
                                                  child: Text("Try out our newest feature Smart Grid. \nKeep all your stuff in control. ", style: TextStyle(fontSize: 16, color: Colors.white),),
                                                ),
                                                TextButton(onPressed: (){}, child: Container(
                                                  width: width(context, 160),
                                                  height: height(context, 42),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text("Get STARTED",style: TextStyle(color: Color.fromRGBO(15, 98, 254, 1)),),
                                                      Icon(Icons.arrow_forward, color: Color.fromRGBO(15, 98, 254, 1) ,)
                                                    ],
                                                  ),
                                                ), style: ButtonStyle(
                                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.zero ,side: BorderSide(color: Color.fromRGBO(15, 98, 254, 1))),)
                                                ),)

                                              ],
                                            ),

                                          ),

                                      ),
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.fromLTRB(width(context, 20),height(context, 20),width(context, 20),0),
                                      child: Container(width: width(context,436), height: height(context, 211), color: Color.fromRGBO(244, 244, 244, 1),
                                        child: Padding(
                                          padding:  EdgeInsets.symmetric(vertical: height(context, 20), horizontal: width(context, 20)),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("AI", style: TextStyle(fontSize: 32),),
                                              Padding(
                                                padding:  EdgeInsets.symmetric(vertical: height(context, 20)),
                                                child: Text("work efficientyhly with ai", style: TextStyle(fontSize: 16),),
                                              ),
                                              TextButton(onPressed: (){}, child: Container(
                                                width: width(context, 160),
                                                height: height(context, 42),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("Get STARTED",style: TextStyle(color: Color.fromRGBO(15, 98, 254, 1)),),
                                                    Icon(Icons.arrow_forward, color: Color.fromRGBO(15, 98, 254, 1) ,)
                                                  ],
                                                ),
                                              ), style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.zero ,side: BorderSide(color: Color.fromRGBO(15, 98, 254, 1))),)
                                              ),)

                                            ],
                                          ),

                                        ),
                                      ),
                                    ),

                                  ],),

                                Row(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.fromLTRB(0,height(context, 20),0,0),
                                      child: Container(width: width(context,436), height: height(context, 210), color: Color.fromRGBO(244, 244, 244, 1),
                                        child: Padding(
                                          padding:  EdgeInsets.symmetric(vertical: height(context, 20), horizontal: width(context, 20)),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("AI", style: TextStyle(fontSize: 32),),
                                              Padding(
                                                padding:  EdgeInsets.symmetric(vertical: height(context, 20)),
                                                child: Text("work efficientyhly with ai", style: TextStyle(fontSize: 16),),
                                              ),
                                              TextButton(onPressed: (){}, child: Container(
                                                width: width(context, 160),
                                                height: height(context, 42),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("Get STARTED",style: TextStyle(color: Color.fromRGBO(15, 98, 254, 1)),),
                                                    Icon(Icons.arrow_forward, color: Color.fromRGBO(15, 98, 254, 1) ,)
                                                  ],
                                                ),
                                              ), style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.zero ,side: BorderSide(color: Color.fromRGBO(15, 98, 254, 1))),)
                                              ),)

                                            ],
                                          ),

                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.fromLTRB(width(context, 20),height(context, 20),width(context, 20),0),
                                      child: Container(width: width(context,892), height: height(context, 211),
                                        decoration: BoxDecoration(image: DecorationImage(image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSerAbP6OZtkC68arVEEYeIBDljIgc4xu5rrtLUk_NHkQ&s"),fit: BoxFit.fitWidth)),

                                        child: Padding(
                                          padding:  EdgeInsets.symmetric(vertical: height(context, 20), horizontal: width(context, 20)),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Fast Data Transfer", style: TextStyle(fontSize: 32,color: Colors.white), ),
                                              Padding(
                                                padding:  EdgeInsets.symmetric(vertical: height(context, 20)),
                                                child: Text("Save time and money thnaks to Fast Data Transfer.\nLearn more.", style: TextStyle(fontSize: 16,color: Colors.white),),
                                              ),
                                              TextButton(onPressed: (){}, child: Container(
                                                width: width(context, 160),
                                                height: height(context, 42),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("Get STARTED",style: TextStyle(color: Color.fromRGBO(15, 98, 254, 1)),),
                                                    Icon(Icons.arrow_forward, color: Color.fromRGBO(15, 98, 254, 1) ,)
                                                  ],
                                                ),
                                              ), style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.zero ,side: BorderSide(color: Color.fromRGBO(15, 98, 254, 1))),)
                                              ),)

                                            ],
                                          ),

                                        ),
                                      ),
                                    ),

                                  ],),


                              ],
                            ),
                          );
                          else{
                            return Container(child:Text("cloud"));

                          }
                        }
                      )
                    ],


                  ),

                )


          ],
        ),
      ),

    );
  }
}
