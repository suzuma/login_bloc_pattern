import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
        key: this.scaffoldKey,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(10),
                height: size.height,
                child: _ponerEncabezado(context),
              ),
            )
          ],
        ),
      ),
    );
  }

  _ponerEncabezado(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildEncabezado(context),
            _buildFormulario(context),
          ],
        )
      ],
    );
  }

  _buildEncabezado(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Image.asset('assets/logo.png'),
          width: size.width * 0.4,
          //height: size.height * 0.4,
          margin: EdgeInsets.only(
            top: size.height * 0.05,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Sistema de Administración',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black54,
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }

  _buildFormulario(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: size.height * 0.20,
            maxWidth: size.width * 0.9,
          ),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                _buildEmailInput(),
                _buildPasswordInput(),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: size.height * 0.9,
            maxWidth: size.width * 0.9,
          ),
          child: CupertinoButton(
            onPressed: () {},
            child: Text(
              'Ingresar',
              style: TextStyle(fontSize: 18),
            ),
            padding: EdgeInsets.symmetric(
              vertical: 17,
              horizontal: 100,
            ),
            color: Colors.pinkAccent,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '¿No recuerdas tu clave?',
              style: TextStyle(fontSize: 16, color: Colors.black26),
            ),
            CupertinoButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'remember');
              },
              child: Text(
                '¡click Aquí!',
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildEmailInput() {
    return TextFormField(
      autocorrect: true,
      decoration: InputDecoration(
        hintText: "empleado@donbeto.com",
        hintStyle: TextStyle(fontSize: 12, color: Colors.black54),
        labelText: "Usuario",
        labelStyle: TextStyle(fontSize: 16, color: Colors.black45),
        suffixIcon: Icon(Icons.edit_attributes),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget _buildPasswordInput() {
    return TextFormField(
      autocorrect: false,
      maxLength: 8,
      decoration: InputDecoration(
        labelText: "Clave de Acceso",
        labelStyle: TextStyle(
          fontSize: 16,
          color: Colors.black45,
        ),
        suffixIcon: Icon(
          Icons.edit_attributes,
        ),
      ),
      keyboardType: TextInputType.text,
      obscureText: true,
    );
  }
}
