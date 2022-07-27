import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sqflite_database_learn/page/notes_page.dart';
import 'package:sqflite_database_learn/sqllite/home_card.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Notes With SQLite';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          primaryColor: Colors.black,
          // scaffoldBackgroundColor: Colors.blueGrey.shade900,
          scaffoldBackgroundColor: Color.fromARGB(255, 6, 67, 97),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
        // home: NotesPage(),
        home: SqlliteHomePage(),
      );
}
