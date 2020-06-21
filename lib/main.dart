import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'LightMode',
      home: LightMode(),
    ),
  );
} 

  class LightMode extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
     //   title: "Luke Bamtefa's Stage One",
        home: Scaffold(

          appBar: AppBar (
            title: Text("Luke Bamtefa's Stage One"),

            actions: <Widget> [
              IconButton (icon: const Icon(Icons.settings), color: Colors.white, onPressed: () {}, ),
              IconButton (icon: const Icon(Icons.airplay), color: Colors.white, onPressed: () {}, ),
            ],

            backgroundColor: Colors.yellowAccent[700],
          ),
           
            body: Center(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
               
                children: <Widget> [
                  //InkWell Suppose work for here
                  
                  InkWell (
                     onTap: () {
                      Navigator.push(
                        context, 
                      MaterialPageRoute(builder: (context) =>  DarkMode()
                        ),
                      );
                    },
                    
                    child: Container(
                      width: 250,
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          Image.asset('images/logo.png', width: 80.0, height: 80.0),
                          Text('Click Me, Your route will change.')
                          
                       ],
                      ),
                    ),
                                                          
                  ),              

                ],

                        

                ),
            ),
        ),
      );

    }
  }

  class DarkMode extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,

          appBar: AppBar(

           
            actions: <Widget> [

             IconButton (icon: const Icon(Icons.arrow_back), color: Colors.white, onPressed: (){}),
             Center (
               child: Text("Luke Bamtefa's Stage One",
               textAlign: TextAlign.center,
               style: TextStyle(fontSize: 19.0),
               )
               ),


              IconButton (icon: const Icon(Icons.settings), color: Colors.white, onPressed: () {}, ),
              IconButton (icon: const Icon(Icons.airplay), color: Colors.white, onPressed: () {}, ),
            ],

            backgroundColor: Colors.yellowAccent[700],
          ),
           
            body: Center(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
               
                children: <Widget> [
                  //InkWell Suppose work for here
                  
                  InkWell (
                    
                    child: Container(
                      width: 250,
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          Image.asset('images/logo.png', width: 80.0, height: 80.0),
                          Text('Click Me to go back.', style: TextStyle(color: Colors.white), ), 
                          
                        ], 
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },

                  ),
                ],

                        

                ),
            ),
        ),
        
      );
    }
  }