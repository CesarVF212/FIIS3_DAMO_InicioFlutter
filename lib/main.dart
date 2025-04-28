import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Clase que representa la aplicación entera. No se guarden datos, es stateless.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Se devuelve de forma obligatorio un Widget.
  // Hacer de dos tipos:
  // - cupertino:   renderización con aspecto IOS.
  // - material:    renderización android. También vale para multiplataforma.
  // - widget:      renderización general, para cualquier desarrollo.

  // En FLutter podemos revisar este tipo de objetos.

  @override
  Widget build(BuildContext context) {
    // Utilizamos Material. Se utilizan siempre parámetros mnominales.
    return MaterialApp(
      // Title es lo que se muestra como "nombre" de la app.
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// Esto contiene la primera página. Es Statefull ya que guarda datos.
class MyHomePage extends StatefulWidget {

  // Se le pasa la key el título.
  const MyHomePage({super.key, required this.title});

  // Se iguala en tiempo de ejecución, por eso es final.
  final String title;

  // Devuelve el estado de este Widget.
  // Devuelve una instancia de la clase _MyHomePageState.
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Es un estado.
class _MyHomePageState extends State<MyHomePage> {
  // La variable counter.
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Función para devolver cualquier Widget. Puede ser lo que sea.
  // El primer elemento que se retorna es un Scaffold, que es la estructura
  // general de la aplicación. Tiene tres características:

  // Appbar.
  // Floating Action Button (FAV).
  // Body.

  // Podemos ver mas de esto en docs.flutter, acerca de Scaffold Class.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
