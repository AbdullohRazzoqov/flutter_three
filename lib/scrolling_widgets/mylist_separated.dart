import 'package:flutter/material.dart';
//? ListView.separated => Bizning biror bir itemdan keyin biror boshqa
//? narsa qo'yish kerak bo'lsa ishlatishimiz mumkin

class MyListSeparated extends StatelessWidget {
  const MyListSeparated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return const Card(
                child: ListTile(
              leading: Text("Reklama"),
              trailing: Icon(Icons.person),
              title: Text(("Abdulloh")),
            ));
          },
          separatorBuilder: (context, index) {
            return Container(
              color: Colors.amber,
              width: 100,
              height: 20,
              child: const Text(
                  "Mana shunday har bir itemdan keyin Container joylashdirdi"),
            );
          },
          itemCount: 15),
    );
  }
}
