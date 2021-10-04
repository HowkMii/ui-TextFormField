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
/*  Color currentC = Colors.teal;
  void changeC(Color color)=>setState(() => currentC=color);
  
  final List<Color> _defaultColors = [
  Colors.red,
  Colors.pink,
  Colors.purple,
  Colors.deepPurple,
  Colors.indigo,
  Colors.blue,

];

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
  }*/
  final li =List<String>.generate(20,(index)=>"Item Num ${index + 1}");
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: li.length,
        itemBuilder: (ctx, index){
          final items = li[index];
          return Dismissible(
            key: Key(items),
            onDismissed: (DismissDirection dir){
              setState(()=>li.removeAt(index));
              Scaffold.of(ctx).showSnackBar(
                SnackBar(
                  content:Text(dir==DismissDirection.startToEnd?"$items Delete":"$items Liked") ,
                  action: SnackBarAction(
                    label:"Undo" ,
                    onPressed:(){
                      setState(() {
                        li.insert(index, items);
                      });
                    } ,
                  ),));
            },
            confirmDismiss: (DismissDirection dir)async{
              if(dir ==DismissDirection.startToEnd){
                final bool res= await showDialog(
                  context: context,
                  builder: (BuildContext ctx){
                    return AlertDialog(
                      content: Text("Are you sure you want to delete $items?"),
                      actions: <Widget>[
                        FlatButton(
                          onPressed: (){
                            Navigator.of(ctx).pop();
                          }, 
                          child: Text("Cancel",style: TextStyle(color: Colors.black),)
                        ),
                        FlatButton(
                          onPressed: (){
                            setState(() {
                              li.removeAt(index);
                            });
                            Navigator.of(ctx).pop();
                          }, 
                          child: Text("Delete",style: TextStyle(color: Colors.red),)
                        ),
                      ],
                    );
                  }

                );
                return res;

              }else{
                return true;
              }
            },
            child: ListTile(title: Center(child:Text(items))  ),
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerLeft,
              child: Icon(Icons.delete),
            ),
            secondaryBackground: Container(
              color: Colors.green,
              alignment: Alignment.centerRight,
              child: Icon(Icons.thumb_up),

            ),
            
            
          );
            
        },

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
