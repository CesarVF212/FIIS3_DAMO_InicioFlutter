// La clase que representa la pantalla de la calculadora (simple)

import 'package:flutter/material.dart';

class CalculadoraPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CalculadoraState();
  }
}

// Luego la estructura de la propia clase será.

// -> CALCULADORA PAGE.
//    -> Scaffold.
//    -> Appbar.
//        -> Text
//    -> Body.
//        -> Center.
//            -> Column.
//            -> Row.
//                -> TextField (varios).
//            -> Button.
//                -> Text
//            -> Text.


class CalculadoraState extends State<CalculadoraPage> {
  int resultado = 0;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora APP")),
      body: Container(
        padding: EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Por favor introduce los operandos que vas a utilizar"),
              Padding(padding: EdgeInsets.only(bottom: 24.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Primer número",
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 12.0, right: 12.0)),
                  Expanded(
                    child: TextField(
                      controller: controller2,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Segundo número",
                      ),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 24)),
              ElevatedButton(onPressed: (){
                int operando1 = int.parse(controller1.text);
                int operando2 = int.parse(controller2.text);
                setState(() {
                  resultado = operando1 + operando2;
                });
              }, child: Text("Calcular")),
              Padding(padding: EdgeInsets.only(bottom: 24)),
              Text("Resultado: $resultado")
            ],
          ),
        ),
      ),
    );
  }
}

// MaterialApp -> CalculadoraPage -> Scaffold -> AppBar(Texto)/Body(center->Columna->Texto/Row(TextField*/TextField*))/Button(Text)/Text
// TODO: versión final. Operaciones anidadas.