import 'package:flutter/material.dart';
import 'package:projectone/ui/todocard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Moday, 27th April 2023'),
          backgroundColor: const Color.fromRGBO(0, 0, 0, 0.5),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.manage_search),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
              color: Colors.white,
            ),
          ],
        ),
        body: 
        Column(
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: const Color.fromRGBO(0, 0, 0, 0.6),
                      child: ListView(
                        children: const <Widget>[
                          ListTile(
                              title: Icon(Icons.dashboard_rounded,
                                  color: Colors.white)),
                          ListTile(
                              title: Text("29/12",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 11),
                                  textAlign: TextAlign.center)),
                          ListTile(
                              title: Icon(Icons.task_alt_rounded,
                                  color: Colors.white)),
                          ListTile(
                              title: Icon(Icons.star_half_rounded,
                                  color: Colors.white)),
                          ListTile(
                              title: Icon(Icons.category_rounded,
                                  color: Colors.white)),
                          ListTile(
                              title: Icon(Icons.dashboard_customize_rounded,
                                  color: Colors.white)),
                          ListTile(
                              title: Icon(Icons.settings_rounded,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child:Container(
                      height:MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: const Color.fromRGBO(0, 0, 0, 0.25),
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(horizontal:10),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.sort_rounded),
                                color: Colors.black,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 0, bottom: 20, right: 20, top: 15),
                                child: Text(
                                  'Sort by',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(
                                      left: 75, bottom: 0, right: 0, top: 15),
                                  child: Text("4 Task Remaining",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 15),
                                      textAlign: TextAlign.right)),
                            ],
                          ),
                          Column(
                            children:[
                              ToDoCard(),
                              ToDoCard(),
                              ToDoCard(),
                              ToDoCard(),
                              ToDoCard(),
                              ToDoCard(),
                              ToDoCard(),
                              ToDoCard(),
                              ToDoCard(),
                              ToDoCard(),
                            ]
                          )
                        ],
                      ),
                    ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
