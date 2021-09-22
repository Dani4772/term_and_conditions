import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Term and Conditions',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool? agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Term and conditions'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(
          children: [
            Checkbox(
              value: agree,
              onChanged: (bool? value) {
                setState(() {
                  agree = value;
                });
              },
            ),
            Text(
              'I have read and accept terms and conditions',
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
        ElevatedButton(
            onPressed: () {
              if (agree == true) {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Dani()));
              }
              setState(() {});
            },
            child: Text('go')),
      ]),
    );
  }
}

class Dani extends StatefulWidget {
  const Dani({Key? key}) : super(key: key);

  @override
  State<Dani> createState() => _DaniState();
}

class _DaniState extends State<Dani> {
  String? dropdown = 'Pakistan';
  List<String> country = ['Pakistan', 'India', 'Afganistan', 'Canada'];
  bool? index;
  bool? index1 = false;
  bool index2 = false;
  DateTime selectdate = DateTime.now();
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: Center(
          child: Column(
            children: [
              DropdownButton<String>(
                value: dropdown,
                onChanged: (String? value) {
                  dropdown = value;
                  setState(() {});
                },
                items: country
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CupertinoSwitch(
                    value: index2,
                    onChanged: (bool value) {
                      index2 = value;
                      setState(() {});
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Hello world'),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        backgroundColor: Colors.black,
                        behavior: SnackBarBehavior.floating,
                        duration: Duration(seconds: 10),
                        action: SnackBarAction(
                          label: 'Done',
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ));
                    },
                    child: Text('Snack bar')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext ctx) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 16),
                                  child: Text('New',style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'assets/images/folder.png',
                                              width: 20,
                                              height: 20,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Text('Folder'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'assets/images/upload.png',
                                              width: 20,
                                              height: 20,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Text('Upload'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'assets/images/scan.png',
                                              width: 20,
                                              height: 20,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Text('Scan'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'assets/images/docs.png',
                                              width: 20,
                                              height: 20,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Text('Google Docs'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'assets/images/sheets.png',
                                              width: 20,
                                              height: 20,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Text('Google Sheets'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'assets/images/google.png',
                                              width: 20,
                                              height: 20,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 10),
                                              child: Text('Google Slides'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          });
                    },
                    child: Text('Sheet1')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext ctx) {
                            return ListView(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: ListTile(
                                    leading: Icon(Icons.tv),
                                    title: Text('All Credentials',style: TextStyle(fontWeight: FontWeight.bold),),
                                    trailing: Icon(Icons.account_box_outlined),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  leading: Icon(Icons.person_add),
                                  title: Text('Add people'),
                                ),
                                ListTile(
                                  leading: Icon(Icons.link),
                                  title: Text('Link Sharing'),
                                  trailing: Switch(
                                    value: isSwitched,
                                    onChanged: (value) {
                                      setState(() {
                                        isSwitched = value;
                                        print(isSwitched);
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  leading: Icon(Icons.copy),
                                  title: Text('Copy link'),
                                ),
                                Divider(
                                  indent: 70,
                                ),

                                ListTile(
                                  leading: Icon(Icons.event_available),
                                  title: Text('Avalible Offline'),
                                  trailing: Switch(
                                    value: isSwitched,
                                    onChanged: (value) {
                                      setState(() {
                                        isSwitched = value;
                                        print(isSwitched);
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  leading: Icon(Icons.open_with_outlined),
                                  title: Text('Open with'),
                                ),
                                ListTile(
                                  leading: Icon(Icons.share),
                                  title: Text('Send a copy'),
                                ),
                              ],
                            );
                          });
                    },
                    child: Text('Sheet2')),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext xyz) {
                            return Container(
                              color: Colors.brown,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Hello World'),
                                  Text('Hello World'),
                                  Text('Hello World'),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('close'))
                                ],
                              ),
                            );
                          });
                    },
                    child: Text('Dialogue')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        barrierDismissible: true,
                        context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children:[
                                    Image.asset('images/sweet.jpeg'),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20,bottom: 20),
                                      child: Text('Granny Eating Chocolate',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 20),
                                      child: Text('This is a granny eating chocolate dialog box.'
                                          'This library helps you easily create fancy giffy dialog',
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5,bottom: 10,left: 25,right: 25),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          ElevatedButton(
                                            child: Text("Ok"),

                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),

                                          ElevatedButton(
                                            child: Text("CANCEL"),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      ),
                                    )
                                  ]
                              ),

                            );
                          },
                        );
                 setState(() {

                 });

                    },
                    child: Text('Alert')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    onPressed: () async {
                      DateTime? dob = await showDatePicker(
                          context: context,
                          initialDate: selectdate,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(3000));
                      if (dob != null && dob != selectdate) {
                        setState(() {
                          selectdate = dob;
                        });
                      }
                      ;
                    },
                    child: Text('DATE')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('${selectdate.toIso8601String()}'),
              ),
            ],
          ),
        ));
  }
}
