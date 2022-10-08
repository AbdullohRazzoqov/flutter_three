import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 25),
            height: 200,
            width: double.infinity,
            color: Colors.yellow,
          ),
          //! ListTile -> Container o'rniga
          const ListTile(
            leading: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://source.unsplash.com/random/x400")),
            title: Text("Anna"),
            subtitle: Text("20:10"),
            trailing: Icon(Icons.call),
          ),
          //!Divider -> ListTiledan keyingi chiziq
          const Divider(),
          //! Card -> ListTileni tagidagi chiqiq o'zi qo'yadi
          const Card(
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://source.unsplash.com/random/4")),
              title: Text("Scott"),
              subtitle: Text("20:30"),
              trailing: Icon(Icons.call),
            ),
          ),
          const Card(
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://source.unsplash.com/random/1")),
              title: Text("Don"),
              subtitle: Text("20:40"),
              trailing: Icon(Icons.call),
            ),
          )
        ],
      ),
    );
  }
}

