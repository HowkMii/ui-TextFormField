import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

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
  
  final List<Color> _defaultColors = [
  Colors.red,
  Colors.pink,
  Colors.purple,
  Colors.deepPurple,
  Colors.indigo,
  Colors.blue,

];

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

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Auth"),
          bottom: TabBar(
            tabs:<Widget> [
              const Tab(text: 'HSV'),
              const Tab(text: 'Material'),
              const Tab(text: 'Block'),
            ],
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children:<Widget>[
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               RaisedButton(
                 elevation: 3.0,
                 onPressed: (){
                   showDialog(
                     context: context, 
                     builder: (BuildContext context){
                       return AlertDialog(
                         titlePadding: const EdgeInsets.all(0.0) ,
                         contentPadding: const EdgeInsets.all(0.0),
                         content: SingleChildScrollView(
                           child: ColorPicker(
                             onColorChanged:changeC,
                             pickerColor: currentC,
                            ),
                          ),

                       );
                     }
                    );

                 },
                ),
             ],
          ),
          ]
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
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
