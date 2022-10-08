import 'package:flutter/material.dart';

//? ListViewda 30 ta element memoryga yozildi yani 30 element memorydan joy egaladi
//? Bizda ListView.builder Widgetimiz bor unda bajariladigan ish ListView bilan bir hilda
//? faqat ListViewdan farqi u berilgan elementlarning hammasini ramda yozmaydi faqat ekranda ko'rinib tugan qismini yozadi
//? bizda 100 element bo'lsa shundan 10 tasi ekranga ko'rinayotgan bo'lsa shu 10 ta joy egallaydi holos qolganini ramda ushlab turmaydi

class ExampleTwo extends StatelessWidget {
  List items = List.generate(30, (index) => index);
  ExampleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("ListView"),
          Expanded(
            child: ListView(
                children: items
                    .map((e) => const Card(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://source.unsplash.com/random/1'),
                            ),
                            title: Text("Abdulloh"),
                            subtitle: Text("20:00"),
                            trailing: Icon(Icons.call),
                          ),
                        ))
                    .toList()),
          ),
          const Card(),
          const Text("ListViewBuilder"),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                debugPrint("Index: $index");
                return const Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage('https://source.unsplash.com/random/1'),
                    ),
                    title: Text("Abdulloh"),
                    subtitle: Text("20:00"),
                    trailing: Icon(Icons.call),
                  ),
                );
              },
              //! itemCount -> itemlar soni agar buni bermasak cheksiz turadi
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
