import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
//import 'package:flutter_colorpicker/flutter_colorpicker.dart';

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

  final li =List<String>.generate(20,(index)=>"Item Num ${index + 1}");
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Center(
      
      ),

    );
  }

  ListView PercentIndicator() {
    return ListView(
          children: <Widget>[
            new CircularPercentIndicator(
              radius: 100.0,
              lineWidth: 10.0,
              percent: 0.8,
              header: new Text("Icon header"),
              center: new Icon(
                Icons.person_pin,
                size: 50.0,
                color: Colors.blue,
              ),
              backgroundColor: Colors.grey,
              progressColor: Colors.blue,
            ),
            new CircularPercentIndicator(
              radius: 130.0,
              animation: true,
              animationDuration: 1200,
              lineWidth: 15.0,
              percent: 0.4,
              center: new Text(
                "40 hours",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              circularStrokeCap: CircularStrokeCap.butt,
              backgroundColor: Colors.yellow,
              progressColor: Colors.red,
            ),
            new CircularPercentIndicator(
              radius: 120.0,
              lineWidth: 13.0,
              animation: true,
              percent: 0.7,
              center: new Text(
                "70.0%",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              footer: new Text(
                "Sales this week",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.purple,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 5.0,
                percent: 1.0,
                center: new Text("100%"),
                progressColor: Colors.green,
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new CircularPercentIndicator(
                    radius: 45.0,
                    lineWidth: 4.0,
                    percent: 0.10,
                    center: new Text("10%"),
                    progressColor: Colors.red,
                  ),
                  new Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                  new CircularPercentIndicator(
                    radius: 45.0,
                    lineWidth: 4.0,
                    percent: 0.30,
                    center: new Text("30%"),
                    progressColor: Colors.orange,
                  ),
                  new Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                  new CircularPercentIndicator(
                    radius: 45.0,
                    lineWidth: 4.0,
                    percent: 0.60,
                    center: new Text("60%"),
                    progressColor: Colors.yellow,
                  ),
                  new Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                  new CircularPercentIndicator(
                    radius: 45.0,
                    lineWidth: 4.0,
                    percent: 0.90,
                    center: new Text("90%"),
                    progressColor: Colors.green,
                  )
                ],
              ),
            )
          ]);
  }
   /*ListView.builder(
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

      ),*/

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