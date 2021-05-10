import 'package:flutter/material.dart';

class About extends StatelessWidget {
   

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),

      body: Container(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 50,),
          // child: Text(' , ',
          // style: TextStyle(fontSize: 22, letterSpacing: 2),),

    child: RichText(
      text: TextSpan(
      text: 'This is health App which can be used to culculate  ',
      style: TextStyle(fontSize: 26),
       children: <TextSpan>[
       TextSpan(text: 'Human Body Normality..', style: TextStyle(fontWeight: FontWeight.bold)),
       TextSpan(text: ' it takes two prameter your '),
       TextSpan(text:' Height ',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)), 
       TextSpan(text:' and your '),
       TextSpan(text:' Weight ',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
       TextSpan(text:' then it start culculating where you are Normal or Up normal.'),
    ],
  ),
)

        ),
        

      );

  }
}