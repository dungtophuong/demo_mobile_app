import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/services/injection_container.dart';
import 'package:flutter_application_1/features/auth/presentation/bloc/user/user_event.dart';
import 'features/auth/presentation/bloc/user/user_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/features/auth/presentation/screens/account_screen.dart';
import 'package:flutter_application_1/features/auth/presentation/screens/home_screen.dart';
import 'package:flutter_application_1/features/auth/presentation/screens/setting_screen.dart';
import 'config/theme/app_themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(MaterialApp(
    home: const MyApp(),
    theme: theme(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  List<Widget> body = const [HomeScreen(), AccountScreen(), SettingScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: body[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Account'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings')
          ]),
    );
  }
}
