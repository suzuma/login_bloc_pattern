import 'package:flutter/material.dart';
import 'package:login_bloc_pattern/models/message_state.dart';

import 'package:login_bloc_pattern/widgets/loading_screen.dart';

class LoaddingPage extends StatefulWidget {
  LoaddingPage({Key key}) : super(key: key);

  @override
  _LoaddingPageState createState() => _LoaddingPageState();
}

class _LoaddingPageState extends State<LoaddingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LoadingScreen(
          initializers: <dynamic>[TimeMessages.timer],
          title: RichText(
            text: TextSpan(
              text: 'Bienvenido en nuestra aplicación',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          loaderColor: Colors.white,
          navigateToWidget: 'login',
          image: Image.asset(
            'assets/fondo.png',
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.white,
          styleTextUnderTheLoader: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Colors.black45),
        ),
      ),
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     centerTitle: true,
    //     title: Text('Autentificando...'),
    //   ),
    //   body: SafeArea(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Center(
    //           child: CircularProgressIndicator(
    //             strokeWidth: 2,
    //           ),
    //         ),
    //         SizedBox(
    //           height: 10,
    //         ),
    //         Text(
    //           'Conectando...',
    //           style: TextStyle(fontSize: 12, color: Colors.black38),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}

class TimeMessages {
  static Future timer(BuildContext context, MessageState state) async {
    while (true) {
      await Future.delayed(Duration(seconds: 5), () {
        //state.setMessage = DateTime.now().toIso8601String();
      });
    }
  }
}
