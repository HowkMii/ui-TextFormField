import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
enum AuthMode{SignUp,Login}

class _MyHomePageState extends State<MyHomePage> {
  Color currentC = Colors.teal;
  void changeC(Color color)=>setState(() => currentC=color);

 /* final GlobalKey<FormState> _formKey = GlobalKey();
  AuthMode _authMode= AuthMode.Login;
  Map<String, String> _authData ={
    'email':'',
    'password':'',

  };
  var _isLoading = false;
  final _passwordController = TextEditingController();
  void _switchAuthMode(){
    if(_authMode==AuthMode.Login){
      setState(() {
              _authMode=AuthMode.SignUp;
            });
    }else{
      setState(() {
              _authMode=AuthMode.Login;
            });
    }
  }*/

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Auth"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('change my color'),
          color: currentC,
          onPressed: (){
            showDialog(
              context: context,
              builder: (BuildContext context){
                return AlertDialog(
                  title: Text('Select a color'),
                  content: Column(
                    children: <Widget>[
                      SingleChildScrollView(
                        child: null,
                      ),
                      RaisedButton(
                        child:Text("Close") ,
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      )

                    ],
                  ),
                );
              }
              );
          },

          ),
        
        

      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

 /* void _submit() {
    if(_formKey.currentState.validate()){
      return;

    };
    _formKey.currentState.save();
    if(_authMode==AuthMode.Login){

    }else{

    }
  }*/
}
