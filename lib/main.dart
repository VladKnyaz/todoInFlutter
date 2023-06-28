import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Todo List",
    home: AppWidget(),
  ));
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true,
            title: const Text("Super todo list"),
            backgroundColor: const Color.fromRGBO(61, 61, 68, 1),
            elevation: 0,
        ),
        backgroundColor: const Color.fromRGBO(61, 61, 68, 1),
        body: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return ItemWidget(key: super.key, itemname: "dasdsas");
          },
        ),
    );
  }
}

// class _AppWidgetState

class ItemWidget extends StatelessWidget {
  String itemname = "";

  ItemWidget({super.key, required this.itemname});

  @override
  Widget build(BuildContext context) {
    // return TextButton(
    //     onPressed: () => {},
    //     // child: Text(itemname, style: const TextStyle(color: Colors.white),
    //     child: Container(
    //         height: 50,
    //         // width: 50,
    //         decoration: const BoxDecoration(color: Colors.blueAccent),
    //         child: const Center(
    //             child: Text("test", style: TextStyle(color: Colors.white))
    //         ),
    //     ),
    // );
    return Container(
          margin: const EdgeInsets.only(bottom: 10),
          height: 60,
          // decoration: const BoxDecoration(color: Color(0xff6d86dcff)),
          child: ListTile(
              tileColor: const Color(0xff6d86dcff),
              title: const Text("test", style: TextStyle(color: Colors.white)),
              trailing: Container(
                  width: 140,
                  child: Row(
                    children: [
                      TextButton(onPressed: ()=>{
                        print("54qew")
                      }, child: const Text("Ред.", style: TextStyle(color: Colors.white))),

                      TextButton(onPressed: ()=>{
                        showDialog(context: context, builder: (context) {
                          return  SimpleDialog(
                              title: const Text("Ред.", style: TextStyle(color: Colors.lime)),
                              children: [
                                Container(margin: const EdgeInsets.all(26), width: 150,child: TextField(
                                    onChanged: (v) => print(v),
                                    decoration: const InputDecoration(
                                      labelText: 'Enter Name',
                                      border: OutlineInputBorder(),
                                    )),
                                ),
                                TextButton(onPressed: () {
                                  print("hello");
                                }, child: const Text("Изменить", style: TextStyle(color: Colors.lime)))
                              ],
                          );
                        })

                      }, child: const Text("Удалить", style: TextStyle(color: Colors.white))),

                    ],
                  ),

              ),

        ),
      );
  }
}


// Row(
// children: [
// const Text("0", style: TextStyle(color: Colors.white)),
//
// TextButton(onPressed: ()=>{
// print("54qew")
// }, child: const Text("Удалить", style: TextStyle(color: Colors.white))),
// TextButton(onPressed: ()=>{
// print("54qew")
// }, child: const Text("Удалить", style: TextStyle(color: Colors.white))),
//
// ],
// ),
