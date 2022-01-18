import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          width: double.infinity,
          child: Column(children: [
            SizedBox(height: 80,),
            SizedBox(width: 110, height: 84, child: Placeholder(),),
            SizedBox(height: 20,),
            Text('Введите логин в виде 10 цифр номера телефона'),
            SizedBox(height: 20,),
            SizedBox(width: 244,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFeceff1),
                  labelText: 'Телефон',
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(width: 244,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFeceff1),
                  labelText: 'Пароль',
                ),
              ),
            ),
            SizedBox(height: 28,),
            SizedBox(width: 154, height: 42,child: ElevatedButton(onPressed: () {}, child: Text('Войти'))),
            SizedBox(height: 62,),
            InkWell(child: Text('Регистрация'),onTap:() {}),
            SizedBox(height: 20,),
            InkWell(child: Text('Забыли пароль'),onTap:() {}),
          ],),
        )
      ),
    );
  }
}

