import 'package:flutter/material.dart';

void main() => runApp(const Miapp());

class Miapp extends StatelessWidget {
  const Miapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0xffffffff),
          appBarTheme: const AppBarTheme(color: Color(0xff9a83e5))),
      home: const Actividad2(),
    );
  }
}

class Actividad2 extends StatefulWidget {
  const Actividad2({super.key});

  @override
  State<Actividad2> createState() => _Actividad2State();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _Actividad2State extends State<Actividad2> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jmas'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.document_scanner),
            ),
            Tab(
              icon: Icon(Icons.baby_changing_station),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(top: 35, bottom: 35),
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, left: 10, right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green[200],
                      border: Border.all(
                        width: 4, //                   <--- border width here
                      ),
                    ),
                    child: const Text(
                      'Sergio Ivan Gurrola Cervantes',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )),
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: const Divider(
                        color: Colors.green,
                        thickness: 10,
                        indent: 50,
                        endIndent: 50,
                      )),
                ),
                ClipRRect(
                    //No se que chuchas es el ClipRRect
                    borderRadius: BorderRadius.circular(10.0),
                    child:
                        const Image(image: AssetImage('assets/images/yo.jpg'))),
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: const Divider(
                        color: Colors.green,
                        thickness: 10,
                        indent: 50,
                        endIndent: 50,
                      )),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 35, bottom: 35),
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, left: 10, right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.green[200],
                      border: Border.all(
                        width: 4, //                   <--- border width here
                      ),
                    ),
                    child: const Text(
                      '6i Programacion',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )),
              ],
            ),
          ),
          const Center(
            child: Text("No se"),
          ),
          const Center(
            child: Text("Bebes"),
          ),
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Stack(
                children: [
                  const Positioned(
                    bottom: 8.0,
                    left: 4.0,
                    child: Text(
                      "Jmas Abu",
                      style: TextStyle(color: Color(0xff000000), fontSize: 20),
                    ),
                  )
                ],
              ),
              decoration: const BoxDecoration(
                color: Color(0xff8675ab),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://raw.githubusercontent.com/SergioIvanGurrolaCervantes/img_proyecto/main/piolin.png",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.account_box),
              title: const Text("About"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.grid_3x3_outlined),
              title: const Text("Products"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text("Contact"),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
