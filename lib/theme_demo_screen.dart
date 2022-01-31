import 'package:app2/utils/global_theme.dart';
import 'package:app2/utils/strings.dart';
import 'package:flutter/material.dart';

class ThemeDemoApp extends StatelessWidget {
  const ThemeDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: globalTheme(),
      home: ThemeDemoScreen(),
    );
  }
}

class ThemeDemoScreen extends StatefulWidget {
  const ThemeDemoScreen({Key? key}) : super(key: key);

  @override
  _ThemeDemoScreenState createState() => _ThemeDemoScreenState();
}

class _ThemeDemoScreenState extends State<ThemeDemoScreen> {
  double _currentSliderValue = 20;
  bool _isDarkTheme = false;

  Widget _navigationDraw() =>Drawer(
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
                      borderRadius:
                      BorderRadius.all(Radius.circular(50.0))),
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/4/44/Google-flutter-logo.svg"),
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
          onTap: () {},
        ),
      ],
    ),
  );

PreferredSizeWidget _appBar() =>AppBar(
  title: const Text('Демо АппБАр'),
  actions: [
    IconButton(
        icon: const Icon(Icons.add_alert),
  tooltip: 'Уведомления',
  onPressed: () {},
        ),
  IconButton(
  icon: const Icon(Icons.settings),
  tooltip: 'Уведомления',
  onPressed: () {},
  ),
  ],
);

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      drawer: _navigationDraw(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text('Заголовок', style: Theme
                  .of(context)
                  .textTheme
                  .headline5),
              Container(
                height: 100,
                color: Theme
                    .of(context)
                    .colorScheme
                    .secondary,
              ),
              Row(
                children: const [
                  Text('Логин:'),
                  Expanded(child: TextField()),
                ],
              ),
              Row(
                children: const [
                  Text('Логин:'),
                  Expanded(child: TextField()),
                ],
              ),
              ElevatedButton(onPressed: () {}, child: Text('Войти')),
              Text(Strings.longBodyText),
              Slider(
                value: _currentSliderValue,
                max: 100,
                divisions: 5,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
              SwitchListTile(
                  title: Text('Темная сторона'),
                  value: _isDarkTheme,
                  onChanged: (val) {
                    setState(() {
                      _isDarkTheme = !_isDarkTheme;
                      if (_isDarkTheme) {

                      }
                    });
                  }),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),

    );
  }
}
