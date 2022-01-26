import 'package:flutter/material.dart';

class NavigationDrawerScreen extends StatefulWidget {
  const NavigationDrawerScreen({Key? key}) : super(key: key);

  @override
  _NavigationDrawerScreenState createState() => _NavigationDrawerScreenState();
}

class _NavigationDrawerScreenState extends State<NavigationDrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Container(
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                        height: 100,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50.0))
                        ),
                        child: Image.network("https://upload.wikimedia.org/wikipedia/commons/4/44/Google-flutter-logo.svg"),
                        ),
                        const Text('Навигация по Flutter'),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.one_k),
                  title: const Text('Каталог'),
                  onTap: () {
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.two_k),
                  title: const Text('Корзина'),
                  onTap: () {
                  },
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: const Text('Профиль'),
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Настройки'),
                  onTap: () {
                  },
                ),

              ],
            ),

          ),
          body: Center(child: Text ('Содержимое экрана')),
        )
    );
  }
}
