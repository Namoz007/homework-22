import 'dart:isolate';

import 'package:flutter/material.dart';

//---------------------1-task---------------------------
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View')),
      body: ListView.builder(itemCount: 1000,itemBuilder: (context,index){
        return ItemWidget(index: index);
      }),
    );
  }
}


class ItemWidget extends StatelessWidget {
  final int index;

  const ItemWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Builder(
        builder: (context) {
          return Text('Item $index');
        },
      ),
    );
  }
}
//---------------------2-task---------------------------
// class Homepage extends StatefulWidget {
//   const Homepage({super.key});
//
//   @override
//   State<Homepage> createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//
//   dynamic count = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     final receivePort = ReceivePort();
//
//     Isolate.spawn(isolateFunction, receivePort.sendPort);
//
//     receivePort.listen((data) {
//       setState(() {
//         count = data;
//       });
//     });
//   }
//
//   static void isolateFunction(SendPort sendPort) {
//     int sum = 0;
//     for (int i = 0; i < 100000; i++) {
//       sum += i;
//     }
//     sendPort.send(sum);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Heavy Computation')),
//       body: Center(
//         child: count > 0 ? Text('Hisoblandi: $count'): Text('Hisoblanmoqda'),
//       ),
//     );
//   }
// }
//---------------------3-task---------------------------
// class Homepage extends StatefulWidget {
//   const Homepage({super.key});
//
//   @override
//   State<Homepage> createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FadeInImage(
//         placeholder: AssetImage('assets/imgs/img.png'),
//         image: NetworkImage('https://media.istockphoto.com/id/1672317574/photo/ama-dablam-mountain-peak.jpg?b=1&s=170667a&w=0&k=20&c=Ea8yDEHpUemrRuMZUKGPDBE11YTWVksIupMN8FkEBf8='),
//       ),
//     );
//   }
// }

