import 'package:body_mas_app/constants/app_constants.dart';
import 'package:body_mas_app/widgets/left_bar.dart';
import 'package:body_mas_app/widgets/right_bar.dart';
import 'package:flutter/material.dart';

 
 class HomeScreen extends StatefulWidget {
  static String routeName;

   @override
   _HomeScreenState createState() => _HomeScreenState();
 }
 
 class _HomeScreenState extends State<HomeScreen> {
   TextEditingController _heightController = TextEditingController();
   TextEditingController _weighttController = TextEditingController();
   double _bmiResult = 0;
   String _textResult = "";



   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('BMI CALCULATOR', 
         style: TextStyle(color: accentHexColor,
         fontWeight: FontWeight.w300),),
         backgroundColor: Colors.transparent,
         elevation: 0,
         centerTitle: true,

       ),
        drawer: Drawer(  
        child: ListView(  
          // Important: Remove any padding from the ListView.  
          padding: EdgeInsets.zero,  
          children: <Widget>[  
            UserAccountsDrawerHeader(  
              accountName: Text("Ahmed jaad"),  
              accountEmail: Text("jaad12@gmail.com"),  
              currentAccountPicture: CircleAvatar(  
                backgroundColor: Colors.orange,  
                child: Text(  
                  "A",  
                  style: TextStyle(fontSize: 40.0),  
                ),  
              ),  
            ),  
            ListTile(  
              leading: Icon(Icons.home), title: Text("Home"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
            ListTile(  
              leading: Icon(Icons.add_box_outlined), title: Text("About us"),  
              onTap: () {  
                //Navigator.pop(context);  
                Navigator.popAndPushNamed(context, '/about');
              },  
            ),  
            ListTile(  
              leading: Icon(Icons.contacts), title: Text("Contact Us"),  
              onTap: () {  
                //Navigator.pop(context);  
                 Navigator.popAndPushNamed(context, '/contact_me');
              },  
            ),  
          ],  
        ),  
      ),  
  
       backgroundColor: mainHexColor,
       body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height:20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 130,
                    child: TextField(
                      controller: _heightController,
                      style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: accentHexColor),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Height',
                          hintStyle: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8)),
                      ),
                    ),
                    ),

                     Container(
                    width: 130,
                    child: TextField(
                      controller: _weighttController,
                      style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: accentHexColor),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Weight',
                          hintStyle: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8)),
                      ),
                    ),
                    ),
                ],
                ),
                SizedBox(height:30.0),

                GestureDetector(
                  onTap: (){
                    double _h = double.parse(_heightController.text);
                    double _w = double.parse(_weighttController.text);

                    setState(() {
                      _bmiResult = _w / (_h *_h);
                      if(_bmiResult > 25){
                        _textResult ="You are Over Weigt";
                      }
                      else if(_bmiResult >= 18.5 && _bmiResult <= 25)
                      {
                        _textResult = "You are Normal Weight";
                      }
                      else{
                        _textResult =" You are Under Weight";
                      }

                    });

                  },
                  child: Container(
                            child:Text('Calculate',
                    style:TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: accentHexColor,
                     ),
                     ),
                  ),
                ),
                SizedBox(height:50.0),

                Container(
                child: Text( _bmiResult.toStringAsFixed(2),
                  style: TextStyle(fontSize: 90, color: accentHexColor),
                ),
              ),
              SizedBox(height:50.0),
              
              Visibility(
                visible: _textResult.isNotEmpty,
                 child: Container(
                  child: Text(_textResult, style:TextStyle(fontSize: 32, fontWeight:FontWeight.w400,color: accentHexColor)),
                ),
              ),


              SizedBox(height:10.0),
               LeftBar(barWidth:40,),
               SizedBox(height:20.0),
               LeftBar(barWidth: 70),
               SizedBox(height:20.0),
               LeftBar(barWidth: 40),
               SizedBox(height:20.0),
               RightBar(barWidth:40),
               SizedBox(height:20.0),
               RightBar(barWidth: 40),




            ],),

          
            
       ),
      
     );
   }
 }