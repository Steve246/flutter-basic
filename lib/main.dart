import "package:flutter/material.dart";
// material dart buat kasih widget di aplikasi kita, kayak homebar dibawah, dll

void main() {
  runApp(MyApp());
  // harus define class dibawah yang sesuai namanya
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // yang di return bisa macem", tapi kita pake material app
    // pokoknya taro yang mau di display dibawah
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text("My App First Time")),
        // body: Center(
        //   child: Container(
        //     child: const Text("hi yang liat"),
        //     margin: const EdgeInsets.all(50),
        //     padding: const EdgeInsets.all(10),
        //     color: Colors.green,
        //     height: 100,
        //     width: 100,
        //   ),
        // )
        // bisa direfactor, dengan cara klik center terus pilih opsi refactor
        // terus pencet center

        // body bisa kita atur, mau row or column

        body: Row(
          // setiap icon nempatin space yang equal atau sama
          // bikin row, jadinya dia ditambilin per row
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            // bisa pake flexible atay expanded widget
            Expanded(flex: 4, child: Icon(Icons.backpack)),
            Icon(Icons.backpack),
            Icon(Icons.leaderboard),
            Icon(Icons.person)
          ],
        ),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('pressed!');
          },
        ),
      ),
    );
  }
}
