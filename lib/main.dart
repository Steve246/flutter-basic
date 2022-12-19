import "package:flutter/material.dart";
// material dart buat kasih widget di aplikasi kita, kayak homebar dibawah, dll

// https://www.youtube.com/watch?v=1xipg02Wu8s&t=19s&ab_channel=Fireship
// sampe scalfold magic di video

// var generatedColor
void main() {
  runApp(const MyApp());
  // harus define class dibawah yang sesuai namanya
}

class MyApp extends StatefulWidget {
  // klik kanan di extends my app, refactor jadi statefull widget
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  void initState() {
    // TODO: fetch data from firebase or BE
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // yang di return bisa macem", tapi kita pake material app
    // pokoknya taro yang mau di display dibawah
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.green,
              title: const Text("My App First Time")),

          // bikin tombol nambah, state widget

          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                count++;
              });
            },
          ),
          body: Center(
            child: Text("$count"),
          )

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

          // body: Row(
          //   // setiap icon nempatin space yang equal atau sama
          //   // bikin row, jadinya dia ditambilin per row
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   children: const [
          //     // bisa pake flexible atay expanded widget
          //     Expanded(flex: 4, child: Icon(Icons.backpack)),
          //     Icon(Icons.backpack),
          //     Icon(Icons.leaderboard),
          //     Icon(Icons.person)
          //   ],
          // ),

          // body: ListView.builder(
          //   itemBuilder: (_, index) {
          //     return Container(
          //       color: randomColor(),
          //       width: 500,
          //       height: 500,
          //     );
          //   },
          // ),

          // body: ListView(
          //   // dibikin biar dia bisa scroll ke kanan, pake horizontal
          //   // scroll ke atas bawah pake axis vertical
          //   scrollDirection: Axis.horizontal,
          //   // addAutomaticKeepAlives: false,
          //   children: [
          //     Container(
          //       color: Colors.green,
          //       width: 500,
          //       height: 500,
          //     ),
          //     Container(
          //       color: Colors.yellow,
          //       width: 500,
          //       height: 500,
          //     ),
          //     Container(
          //       color: Colors.blue,
          //       width: 500,
          //       height: 500,
          //     ),
          //   ],
          // ),

          // floatingActionButton: FloatingActionButton(
          //   child: Icon(Icons.add),
          //   onPressed: () {
          //     print('pressed!');
          //   },
          // ),

          // bottomNavigationBar: BottomNavigationBar(
          //   items: const [
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.home),
          //       label: "Home",
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.business_center),
          //       label: "Bussines",
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.school),
          //       label: "School",
          //     ),
          //   ],
          // ),

          // drawer: Drawer(
          //   child: Text('Yo!'),
          // ),
          ),
    );
  }
}
