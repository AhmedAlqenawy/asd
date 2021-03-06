import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'Home.dart';
import 'model/users.dart';
import 'dart:async';

class Registration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return stateRegistration();
  }
}
//                        Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage()) );
class stateRegistration extends State<Registration>
{
  var check =true; String note; String Gender='Male',Uname="",Upass1="",Upass2="",Uemail="";

  bool validation(){
    bool check=true;
    if(Uname==""||Uname.length<=7)
      check= false;
    if(Uemail=="")
      check= false;
    if(Upass1==""||Upass1.length<=7)
      check= false;
    if(Upass2==""||Upass2.length<=7)
      check= false;
    return check;
  }

  void done() async{

    if(validation()==true){
    int add=await UsData().create({
      'Uname':Uname,
      'Pass':Upass1,
      'Gender':Gender,
      'Uemail':Uemail,
    });
    print(add);
    Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()) );
    }
    else{
      print("error");
    }

  }

  void onchange(val){
    print(val);
    setState(() {
      check=val;
    });
  }
  void Gnderchange(val){
    print(val);
    setState(() {
      Gender=val;
    });
  }
  void ChUname(val){
    //print(val);
    setState(() {
      Uname=val;
    });
  }
  void ChUmail(val){
    //print(val);
    setState(() {
      Uemail=val;
    });
  }

    void ChUpass2(val){
      //print(val);
      setState(() {
        Upass2=val;
      });}

      void ChUpass1(val) {
        //print(val);
        setState(() {
          Upass1 = val;
        });
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(

          children: <Widget>[
            Container(
              width:MediaQuery.of(context).size.width ,
              height:755,

              child:Column(
                children :<Widget>[
                  Padding(
                    child: Image.asset("images/images.png",width: 150,height: 100,),
                    padding: EdgeInsets.only(top: 70),

                  ),
                  SizedBox(
                    width:MediaQuery.of(context).size.width ,
//              height:MediaQuery.of(context).size.height ,

                    child: Row(
                      children :<Widget>[
                        Card(

                          child: SizedBox(
                            //width: 430,
                            // height: 500,
                            child: Column(
                              children :<Widget>[
                                Card(

                                    margin: EdgeInsets.fromLTRB(10,20, 10, 5),
                                    //color: Colors.lime,
                                    child:SizedBox(

                                      height: 50,width: 300,
                                      child: TextFormField(

                                        maxLines: 1, maxLength: 20,
                                        cursorColor: Colors.lime,
                                        autofocus: true,
                                        style: TextStyle(
                                          decorationColor: Colors.limeAccent,
                                          wordSpacing: .5,  fontSize: 15, // height: 20,
                                          fontStyle: FontStyle.italic,

                                        ),
                                        onChanged: ChUname,
                                        keyboardType: TextInputType.visiblePassword,
                                        textInputAction: TextInputAction.next,
                                        //obscureText: true,

                                        decoration: InputDecoration(

                                          //hintText: "Enter Password" ,
                                          prefixIcon: Icon(Icons.account_circle),
                                          prefixText: "Name :- ",
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.amber,
                                              width: 02.0,
                                              style: BorderStyle.solid,
                                            ),
                                            borderRadius: BorderRadius.circular(50.0),
                                          ),
                                          labelText:  "Enter Name",
                                        ),
                                      ),
                                    )

                                ),
                                Card(

                                    margin: EdgeInsets.fromLTRB(10,20, 10, 5),
                                    //color: Colors.lime,
                                    child:SizedBox(

                                      height: 50,width: 300,
                                      child: TextFormField(

                                        maxLines: 1, maxLength: 20,
                                        cursorColor: Colors.lime,
                                        autofocus: true,
                                        style: TextStyle(
                                          decorationColor: Colors.limeAccent,
                                          wordSpacing: .5,  fontSize: 15, // height: 20,
                                          fontStyle: FontStyle.italic,
                                        ),
                                        onChanged: ChUmail,
                                        keyboardType: TextInputType.visiblePassword,
                                        textInputAction: TextInputAction.next,
                                        //obscureText: true,

                                        decoration: InputDecoration(

                                          //hintText: "Enter Password" ,
                                          prefixIcon: Icon(Icons.account_circle),
                                          prefixText: "Email :- ",
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.amber,
                                              width: 02.0,
                                              style: BorderStyle.solid,
                                            ),
                                            borderRadius: BorderRadius.circular(50.0),
                                          ),
                                          labelText:  "Enter Email",
                                        ),
                                      ),
                                    )

                                ),
                                Card(
                                    margin: EdgeInsets.fromLTRB(10,20, 10, 5),
                                    //color: Colors.lime,
                                    child: SizedBox(
                                      height: 50,width: 300,
                                      child: TextFormField(
                                        onChanged: ChUpass1,
                                        maxLines: 1, maxLength: 20,
                                        cursorColor: Colors.lime,
                                        autofocus: true,
                                        style: TextStyle(
                                          decorationColor: Colors.limeAccent,
                                          wordSpacing: .5,  fontSize: 15, // height: 20,
                                          fontStyle: FontStyle.italic,

                                        ),
                                        keyboardType: TextInputType.visiblePassword,
                                        textInputAction: TextInputAction.next,
                                        obscureText: true,
                                        decoration: InputDecoration(

                                          //hintText: "Enter Password" ,
                                          prefixIcon: Icon(Icons.lock_outline),
                                          prefixText: "Password :- ",
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.amber,
                                              width: 3.0,
                                              style: BorderStyle.solid,
                                            ),
                                            borderRadius: BorderRadius.circular(50.0),
                                          ),
                                          labelText:  "Enter Password",
                                        ),
                                      ),
                                    )

                                ),
                                Card(
                                    margin: EdgeInsets.fromLTRB(10,20, 10, 5),
                                    //color: Colors.lime,
                                    child: SizedBox(
                                      height: 50,width: 300,
                                      child: TextFormField(
                                        onChanged: ChUpass2,
                                        maxLines: 1, maxLength: 20,
                                        cursorColor: Colors.lime,
                                        autofocus: true,
                                        style: TextStyle(
                                          decorationColor: Colors.limeAccent,
                                          wordSpacing: .5,  fontSize: 15, // height: 20,
                                          fontStyle: FontStyle.italic,

                                        ),
                                        keyboardType: TextInputType.visiblePassword,
                                        textInputAction: TextInputAction.next,
                                        obscureText: true,
                                        decoration: InputDecoration(

                                          //hintText: "Enter Password" ,
                                          prefixIcon: Icon(Icons.lock_outline),
                                          prefixText: "Confirm Password :- ",
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.amber,
                                              width: 3.0,
                                              style: BorderStyle.solid,
                                            ),
                                            borderRadius: BorderRadius.circular(50.0),
                                          ),
                                          labelText:  "Confirm Password",
                                        ),
                                      ),
                                    )

                                ),
                                Card(
                                  margin: EdgeInsets.fromLTRB(10,20, 10,10),
                                  //color: Colors.lime,
                                  child: SizedBox(

                                      height:45,width: 250,
                                      child:DropdownButton<String>(
                                        value: Gender,
                                        onChanged: Gnderchange,
                                        hint: Text("Gender"),
                                        items: <String>['Male','Femail']
                                            .map<DropdownMenuItem<String>>((String value){
                                              return DropdownMenuItem<String>(
                                                child: Text(value),
                                                value: value,
                                              );
                                        }).toList()
                                      ,
                                      )

                                  ),
                                ),

                                Card(
                                    margin: EdgeInsets.fromLTRB(10,20, 10,10),
                                    //color: Colors.lime,
                                    child: SizedBox(
                                        height: 30,width: 100,
                                        child:FlatButton(

                                          onPressed: done,
                                          //label: Text('Done'),
                                          child: Text("Log In"),

                                        )

                                    )

                                ),
                                Card(
                                    child: SizedBox(
                                      //height: 30,width: 100,
                                      child: Divider(
                                        height: 2,
                                        color: Colors.red,
                                        indent: 300,
                                        thickness: 50,
                                      ),
                                    )
                                ),
                                Card(
                                    //margin: EdgeInsets.fromLTRB(0,20, 10,10),
                                    //color: Colors.lime,
                                    child: SizedBox(
                                      //height: 30,width: 100,
                                      child: Text("Designed by YllaSale"),
                                    )
                                ),

                              ],
                            ),
                          ),
                          //color: Colors.lime,
                          margin: EdgeInsets.fromLTRB(40, 0/*it will change*/, 20, 100),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // color:Colors.green ,

            ),
          ]

      ),
      appBar: AppBar(
        title: Text("Registration"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
    );
  }
}