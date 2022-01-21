import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),
      borderSide: BorderSide(
        color: const Color(0xFFeceff1), width: 2));


    const linkTextStyle = TextStyle(
      fontSize: 16,
        color: Color(0xFF0079D0),
    );


    return MaterialApp(
      home: Scaffold(
        body:Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/space3.jpeg'),
              fit: BoxFit.cover,
            )
          ),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 150,),
              const SizedBox(width: 130, height: 94, child: const Image(image: AssetImage('assets/space2.png')),),
              SizedBox(height: 20,),
              Text('Введите логин в виде 10 цифр номера телефона',
              style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),),
              SizedBox(height: 20,),
              SizedBox(width: 244,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: 'Телефон',
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(width: 244,
                child: TextField(
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: 'Пароль',
                  ),
                ),
              ),
              SizedBox(height: 28,),
              SizedBox(width: 154, height: 42,child:
               ElevatedButton(onPressed: () {},
                  child: Text('Войти'),
                   style: ElevatedButton.styleFrom(primary: Color(0xFF0079D0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36.0),
                ),
              ),
               ),
              ),



              SizedBox(height: 62,),
              InkWell(child: const Text('Регистрация',
                style: linkTextStyle), onTap:() {}),
              SizedBox(height: 20,),
              InkWell(child: Text('Забыли пароль',
                style: linkTextStyle,), onTap:() {}),
            ],),
          ),
        )
      ),
    );
  }
}

