import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('New App'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Yash Arora"),
              accountEmail: Text("yasharora9416@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGd1eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
              ),
            ),
            // DrawerHeader(
            //   child: Text("Hi I am a Drawer"),
            //   decoration: BoxDecoration(color: Colors.purpleAccent),
            // ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Yash Arora"),
              subtitle: Text("Developer"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("yasharora9416@gmail.com"),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: Column(
            children: [
              Image.asset(
                'assets/bg.png',
                // width: 200,
                // height: 200,
                // fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 20,
              ),
              Text("Change My Name"),
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
        mini: false,
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
