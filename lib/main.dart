import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pet_app_ui/constant.dart';
import 'package:pet_app_ui/pages/home_page.dart';
import 'package:pet_app_ui/pages/search_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet App UI',
      theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
          scaffoldBackgroundColor: appBackground),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<BottomNavigationBarItem> itemsTab = [
    BottomNavigationBarItem(
      icon: Icon(LineIcons.home),
      title: Padding(
        padding: EdgeInsets.only(top: 12),
        child: Text("Inicio",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(LineIcons.search),
      title: Padding(
        padding: EdgeInsets.only(top: 12),
        child: Text("Buscar",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(LineIcons.book),
      title: Padding(
        padding: EdgeInsets.only(top: 12),
        child: Text("Articulos",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(LineIcons.bell),
      title: Padding(
        padding: EdgeInsets.only(top: 12),
        child: Text("Notificaciones",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle),
      title: Padding(
        padding: EdgeInsets.only(top: 12),
        child: Text("Perfil",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
      ),
    ),
  ];
  int selectedIndex = 0;
  List<Widget> pages = [
    HomePage(),
    SearchPage(),
    Center(child: Text("Articulos", style: TextStyle(fontSize: 40))),
    Center(child: Text("Notificaciones", style: TextStyle(fontSize: 40))),
    Center(child: Text("Perfil", style: TextStyle(fontSize: 40)))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          items: itemsTab,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primary,
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }

  Widget getBody() {
    return pages.elementAt(selectedIndex);
  }
}
