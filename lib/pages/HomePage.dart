import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Mandado.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sigma",
        ),
        centerTitle: true,
      ),
      body: _body(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: _text("Cabeçalho"),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              leading: Icon(Icons.note, textDirection: TextDirection.ltr,),
              title: _text("Mandado"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Mandado()));
              },
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: _text("Diligência"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: _text("Mapa"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.track_changes),
              title: _text("Radar"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.directions_car),
              title: _text("Rota"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: _text("Relatório"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: _text("Buscar Mandado"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: _text("Sair"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }

  _body() {
    return Container(
      color: Colors.yellow,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[_button(), _button(), _button()],
      ),
    );
  }

  _img() {
    return Image.asset(
      "assets/images/dog1.png",
      fit: BoxFit.contain,
    );
  }

  _text(String msg) {
    return Text(
      msg,
      style: TextStyle(
        fontSize: 20,
        color: Colors.black,
        //fontWeight: FontWeight.bold,
        //decoration: TextDecoration.underline,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.wavy,
      ),
    );
  }

  _button() {
    return RaisedButton(
      color: Colors.blue,
      child: Text(
        "Ok",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      onPressed: () => _onClickOk(),
    );
  }

  void _onClickOk() {
    print("Olá");
  }

  _menu() {
    return Container(
      color: Colors.white,
    );
  }
}
