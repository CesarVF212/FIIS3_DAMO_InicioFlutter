import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Clase que representa la aplicación entera. No se guardan datos, es stateless.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Se devuelve de forma obligatoria un Widget.
  // Hacer de dos tipos:
  // - cupertino:   renderización con aspecto iOS.
  // - material:    renderización Android. También vale para multiplataforma.
  // - widget:      renderización general, para cualquier desarrollo.

  // En Flutter podemos revisar este tipo de objetos.

  @override
  Widget build(BuildContext context) {
    // Utilizamos Material. Se utilizan siempre parámetros nominales.
    return MaterialApp(
      // Title es lo que se muestra como "nombre" de la app.
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const CalculadoraPage(),
    );
  }
}

// Esto contiene la primera página. Es Stateful ya que guarda datos.
class MyHomePage extends StatefulWidget {
  // Se le pasa la key y el título.
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

  // Se incrementa de uno en uno e identifica a la aplicación.
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Función para devolver cualquier Widget. Puede ser lo que sea.
  // El primer elemento que se retorna es un Scaffold, que es la estructura
  // general de la aplicación. Tiene tres características:
  // AppBar, Floating Action Button (FAB) y Body.

  // Podemos ver más de esto en docs.flutter, acerca de Scaffold Class.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // En el caso de este cuerpo. Directamente centra todos los elementos.
      body: Center(
        // Por defecto se configura una columna, que se centrará por
        // herencia de la clase padre.
        child: Column(
          // Por defecto tiene dos atributos:
          // -> El alineamiento del eje principal. En este caso habla del
          // eje horizontal. Centrados dentro de la columna.
          mainAxisAlignment: MainAxisAlignment.center,

          // Este es un array de Widgets. Que formarán la columna principal.
          // Se pueden definir como constante en el caso de no cambiar.
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              // Al texto se le aplica el estilo que tengamos definido por contexto.
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
