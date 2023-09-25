import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        foregroundColor: Colors.cyan,
        backgroundColor: Colors.black,
        title: Text('KODLUYORUZ'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.cyan,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              child: Text(
                'DRAWER',
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Ana Sayfa'),
              iconColor: Colors.white,
              textColor: Colors.white,
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'HI-KOD MOBIL ATOLYE',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'WİDGET-1',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 16),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 6, 150, 59),
                          ),
                        ),
                        SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Widget-1 Başlığı '),
                                  content: Text('Widget-1 Butonuna Tıkladınız'),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Kapat'),
                                        style: TextButton.styleFrom(
                                          primary: Colors.yellow,
                                        ))
                                  ],
                                );
                              },
                            );
                          },
                          child: Text('Open the text'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'WİDGET- 2',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 16),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 6, 150, 59),
                          ),
                        ),
                        SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Widget-2 Başlığı '),
                                  content: Text('Widget-2 Butonuna Tıkladınız'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Kapat'),
                                      style: TextButton.styleFrom(
                                        primary: Colors.yellow,
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Text('Open the text'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Floating Action Button'),
                content: Text('Floating Action Button\'a Tıkladınız'),
                backgroundColor: Colors.red,
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Kapat'),
                    style: TextButton.styleFrom(primary: Colors.yellow),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.cyan,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
