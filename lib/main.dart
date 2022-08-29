import 'package:flutter/material.dart';

void main() {
  runApp( BascketBallCounter());
}

class BascketBallCounter extends StatefulWidget {
  const BascketBallCounter({Key? key}) : super(key: key);

  @override
  State<BascketBallCounter> createState() => _BascketBallCounterState();
}

class _BascketBallCounterState extends State<BascketBallCounter> {
  late int teamAPoints=0;

  late  int teamBPoints=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          title: Text('Points Counter'),
          backgroundColor: Colors.orange,
        ),

        body: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '$teamAPoints',
                        style: TextStyle(
                          fontSize: 150,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton(
                        style:ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size (150,50),
                        ),
                        onPressed: (){
                          setState(() {
                            teamAPoints++;
                          });
                        },
                        child:Text('Add 1 Point',style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),)),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                          style:ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size (150,50),
                          ),
                          onPressed: (){
                            setState(() {
                              teamAPoints+=2;
                            });
                          },
                          child:Text('Add 2 Point',style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),)),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                          style:ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size (150,50),
                          ),
                          onPressed: (){
                            setState(() {
                              teamAPoints+=3;
                            });
                          },
                          child:Text('Add 3 Point',style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),)),
                    ],
                  ),
                  Container(
                    height: 450,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 15,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '$teamBPoints',
                        style: TextStyle(
                          fontSize: 150,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton(
                          style:ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size (150,50),
                          ),
                          onPressed: (){
                            setState(() {
                              teamBPoints++;
                            });



                          },
                          child:Text('Add 1 Point',style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),)),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                          style:ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size (150,50),
                          ),
                          onPressed: (){
                            setState(() {
                              teamBPoints+=2;
                            });
                          },
                          child:Text('Add 2 Point',style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),)),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                          style:ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size (150,50),
                          ),
                          onPressed: (){
                            setState(() {
                              teamBPoints+=3;
                            });
                          },
                          child:Text('Add 3 Point',style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40,),
              ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    minimumSize: Size (150,50),
                  ),
                  onPressed: (){
                    setState(() {
                      teamAPoints=0;
                      teamBPoints=0;
                    });
                  },
                  child:Text('Reset',style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),)),
            ],
          ),

        ),
      ),
    );
  }
}
