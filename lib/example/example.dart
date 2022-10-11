import 'package:flutter/material.dart';
import 'package:flutter_three/example/model/usermodel.dart';

class Examplee extends StatelessWidget {
  //? List.generate bilan list ichini to'ldir
  //? nima bilan to'ldir UserModel bilan
  //?Nameni ageni jinsini berib bo'lgandan so'ng users degan listga qo'sh
  List<UserModel> users = List.generate(
    15,
    (index) => UserModel(
      name: "Name: $index",
      age: index,
      jins: index.isEven ? true : false,
    ),
  );
  Examplee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return Card(
          color: users[index].jins! ? Colors.green : Colors.pink,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage("https://source.unsplash.com/random/$index"),
            ),
            title: Text(
              users[index].name.toString(),
            ),
            subtitle: Text(users[index].age.toString()),
            trailing: const Icon(Icons.navigate_next_rounded),
          ),
        );
      },itemCount: users.length,),
    );
  }
}
