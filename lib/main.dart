import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute:WelcomeScreen.wid,
      routes: {
        WelcomeScreen.wid:(context) => WelcomeScreen(),
        LoginScreen.lid :(context) => LoginScreen(),
        RegistrationScreen.rid:(context)=> RegistrationScreen(),
        ChatScreen.cid :(context)=> ChatScreen(),
      },
    );
  }
}
