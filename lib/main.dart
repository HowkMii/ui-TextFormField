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
  final GlobalKey<FormState> _formKey = GlobalKey();
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
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Auth"),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child:SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: "Email"),
                  keyboardType: TextInputType.emailAddress,
                  validator:(val){
                    if(val.isEmpty || !val.contains('@')){
                      return "Invailed email!";
                    }return null;
                  },
                  onSaved:(val){
                    _authData['email']=val;
                    print(_authData['email']);

                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Password"),
                  controller: _passwordController,
                  obscureText: true,
                  validator:(val){
                    if(val.isEmpty || val.length<3 ){
                      return "passwordcis too short";
                    }return null;
                  },
                  onSaved:(val){
                    _authData['password']=val;
                    print(_authData['password']);

                  },
                ),
TextFormField(
                  decoration: InputDecoration(labelText: "Password"),
                  controller: _passwordController,
                  obscureText: true,
                  validator:(val){
                    if(val.isEmpty || val.length<3 ){
                      return "passwordcis too short";
                    }return null;
                  },
                  onSaved:(val){
                    _authData['password']=val;
                    print(_authData['password']);

                  },
                ),
TextFormField(
                  decoration: InputDecoration(labelText: "Password"),
                  controller: _passwordController,
                  obscureText: true,
                  validator:(val){
                    if(val.isEmpty || val.length<3 ){
                      return "passwordcis too short";
                    }return null;
                  },
                  onSaved:(val){
                    _authData['password']=val;
                    print(_authData['password']);

                  },
                ),
TextFormField(
                  decoration: InputDecoration(labelText: "Password"),
                  controller: _passwordController,
                  obscureText: true,
                  validator:(val){
                    if(val.isEmpty || val.length<3 ){
                      return "passwordcis too short";
                    }return null;
                  },
                  onSaved:(val){
                    _authData['password']=val;
                    print(_authData['password']);

                  },
                ),
TextFormField(
                  decoration: InputDecoration(labelText: "Password"),
                  controller: _passwordController,
                  obscureText: true,
                  validator:(val){
                    if(val.isEmpty || val.length<3 ){
                      return "passwordcis too short";
                    }return null;
                  },
                  onSaved:(val){
                    _authData['password']=val;
                    print(_authData['password']);

                  },
                ),
TextFormField(
                  decoration: InputDecoration(labelText: "Password"),
                  controller: _passwordController,
                  obscureText: true,
                  validator:(val){
                    if(val.isEmpty || val.length<3 ){
                      return "passwordcis too short";
                    }return null;
                  },
                  onSaved:(val){
                    _authData['password']=val;
                    print(_authData['password']);

                  },
                ),
TextFormField(
                  decoration: InputDecoration(labelText: "Password"),
                  controller: _passwordController,
                  obscureText: true,
                  validator:(val){
                    if(val.isEmpty || val.length<3 ){
                      return "passwordcis too short";
                    }return null;
                  },
                  onSaved:(val){
                    _authData['password']=val;
                    print(_authData['password']);

                  },
                ),
TextFormField(
                  decoration: InputDecoration(labelText: "Password"),
                  controller: _passwordController,
                  obscureText: true,
                  validator:(val){
                    if(val.isEmpty || val.length<3 ){
                      return "passwordcis too short";
                    }return null;
                  },
                  onSaved:(val){
                    _authData['password']=val;
                    print(_authData['password']);

                  },
                ),
                if(_authMode ==AuthMode.SignUp)
                  TextFormField(
                    enabled: _authMode==AuthMode.SignUp,
                    decoration: InputDecoration(labelText: 'Confirm Password'),
                    obscureText: true,
                    validator: _authMode==AuthMode.SignUp?(value){
                      if(value!=_passwordController.text){
                        return 'Password do not match';
                      }return null;

                    }
                      :null,

                  ),
               
                RaisedButton(
                  child: Text(_authMode == AuthMode.Login? 'Login':'SignUp'),
                  onPressed: _submit,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 8),
                    color: Theme.of(context).primaryColor,
                    textColor: Theme.of(context).primaryTextTheme.button.color,
                ),
                FlatButton(
                  child: Text(
                    '${_authMode==AuthMode.Login?'SignUp':'Login'} INSTED'
                  ),
                  onPressed: _switchAuthMode,
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 4),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  textColor: Theme.of(context).primaryColor,
                )
              ],
            ),
          ) ,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _submit() {
    if(_formKey.currentState.validate()){
      return;

    };
    _formKey.currentState.save();
    if(_authMode==AuthMode.Login){

    }else{

    }
  }
}
