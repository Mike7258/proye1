import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador Criminalistico',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ContadorCriminal(title: 'Contador Criminalistico'),
    );
  }
}

class ContadorCriminal extends StatefulWidget {
  const ContadorCriminal({super.key, required this.title});

  final String title;

  @override
  State<ContadorCriminal> createState() => ContadorCriminalito();
}

class ContadorCriminalito extends State<ContadorCriminal> {
  double _counter = 0;

  void incrementarContador() {
    setState(() {
      _counter++;
    });
  }
  void bajarContador() {
    setState(() {
      _counter--;
    });
  }

  void cortarALaMitad() {
    setState(() {
      _counter /= 2;
    });
  }

  void multiplicarPorDos() {
    setState(() {
      _counter *= 2;
    });
  }

  void reiniciarContador() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Aura:',
            ),
            Text(
              _counter.toStringAsFixed(2),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                FloatingActionButton.extended(
                  onPressed: incrementarContador,
                  tooltip: 'Sumar',
                  backgroundColor: const Color.fromARGB(255, 138, 226, 161) ,
                  //para este verde me meti en canva a buscarlo xdddd
                  label: const Text('1'),
                  icon: const Icon(Icons.add),
                  foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                ),

                FloatingActionButton.extended(
                  onPressed: bajarContador,
                  tooltip: 'Restar',
                  backgroundColor: const Color.fromARGB(255, 255, 138, 138),
                  label: const Text('1'),
                  icon: const Icon(Icons.remove),
                  foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
 
                FloatingActionButton.extended(
                  onPressed: cortarALaMitad,
                  backgroundColor: const Color.fromARGB(255, 230, 214, 233),
                  tooltip: 'Dividir a la mitad',
                  label: const Text('2'),
                  icon: const Icon(Icons.percent),
                  foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                ),
 
                FloatingActionButton.extended(
                  onPressed: multiplicarPorDos,
                  backgroundColor: const Color.fromARGB(255, 199, 231, 14),
                  tooltip: 'Multiplicar por 2',
                  label: const Text('2'),
                  icon: const Icon(Icons.close),
                  foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                ),

                FloatingActionButton.extended(
                  onPressed: reiniciarContador,
                  tooltip: 'Reiniciar',
                  label: const Text('Reiniciar'),
                  icon: const Icon(Icons.refresh),
                  foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}