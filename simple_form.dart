import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Insira aqui as variáveis de estado
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titulocontroller = TextEditingController();
  final TextEditingController _duracaocontroller = TextEditingController();
  final TextEditingController _generocontroller = TextEditingController();
  final TextEditingController _artistacontroller = TextEditingController();
  final TextEditingController _albumcontroller = TextEditingController();
  final TextEditingController _anocontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro de Música"),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Center(
            child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(children: [
              // Título
              TextFormField(
                controller: _titulocontroller,
                decoration: const InputDecoration(
                  labelText: "Título: ",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Campo obrigatório";
                  }
                },
              ),

              // Duração
              TextFormField(
                controller: _duracaocontroller,
                decoration: const InputDecoration(
                  labelText: "Duração: ",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Campo obrigatório";
                  }
                },
              ),

              // Gênero
              TextFormField(
                controller: _generocontroller,
                decoration: const InputDecoration(
                  labelText: "Gênero: ",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Campo obrigatório";
                  }
                },
              ),

              // Artista
              TextFormField(
                controller: _artistacontroller,
                decoration: const InputDecoration(
                  labelText: "Artista: ",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Campo obrigatório";
                  }
                },
              ),

              // Álbum
              TextFormField(
                controller: _albumcontroller,
                decoration: const InputDecoration(
                  labelText: "Álbum: ",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Campo obrigatório";
                  }
                },
              ),

              // Ano Lançamento
              TextFormField(
                controller: _anocontroller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Ano de Lançamento: ",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Campo obrigatório";
                  }
                },
              ),

              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      debugPrint("Música cadastrada com sucesso!");
                      Fluttertoast.showToast(
                          msg: "Música cadastrada com sucesso!",
                          gravity: ToastGravity.CENTER_LEFT,
                          backgroundColor: Colors.green);
                    }
                  },
                  child: const Text("Cadastrar")),
            ]),
          ),
        )),
      ),
    );
  }
}
