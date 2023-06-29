import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:testapp/pages/home_page.dart';
import 'firebase_options.dart';

//inicio de firebase
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

//fin inicio de firebase
//inicio del mainapp
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', //ruta inicial
      //Definir rutas
      routes: {
        '/': (context) =>
            const HomePage(), // se define la ruta inicial / = homepage
        // Agregar rutas segun la interfaz
      },
    );
  }
}
//fin del mainapp
