import 'package:flutter/material.dart';
import 'package:body_mas_app/screens/home.dart';

class MainDrawer extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
   
    return Drawer(
       
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: [
                  Container(
                    width:100,
                    height:100,
                    margin: EdgeInsets.only(
                      top:30,
                    ),
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(image: new AssetImage('assets/ahmed.jpg'), 
                     // image: DecorationImage(image: AssetImage('assets/ahmed.jpg')),
                       fit:BoxFit.fill,
                      ),
                      ),
                      
                    ),
                    
                  
                  Text('Ahmed jaad', style: TextStyle(fontSize: 32, color: Colors.white),),
                   Text('Ahmed@gmail.com', style: TextStyle(fontSize: 19, color: Colors.white),),
                ],
                ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile',
            style: TextStyle(fontSize:18),
            ),
            onTap: (){
              Navigator.of(context).pushNamed(HomeScreen.routeName);
            },
            
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('setting',
            style: TextStyle(fontSize:18),
            ),
            onTap: null,
            
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text('log out',
            style: TextStyle(fontSize:18),
            ),
            onTap: null,
            
          )
        ],
      )
    );
  }
}