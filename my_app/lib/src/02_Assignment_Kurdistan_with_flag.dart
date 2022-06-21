import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO : 
    return  MaterialApp(
                  debugShowCheckedModeBanner: false,
        home: Scaffold( 
                        appBar: AppBar(
                          title: Center(child: Text("Hello"),),
                        ),
                        body: Center(
                        
                        
                        child:Column(
                              children:[
                                
                                Container(
                                  margin: EdgeInsets.all(20),
                                  child:Text("Assignment Two",style: TextStyle(
                                          fontSize: 40, color: Color.fromARGB(255, 255, 64, 64)),),
                                ),
                                
                                Container(
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        border: Border.all(color:Colors.red, width: 8),
                                      ),
                                      child:Image.network("https://thekurdishproject.org/wp-content/uploads/2015/02/3333590254_514b4fd2dc_z.jpg"),
                                ),

                                Container(
                                  margin: EdgeInsets.all(20),
                                  child:Text("Hello Kurdistan",style: TextStyle(
                                          fontSize: 50, color: Color.fromARGB(255, 255, 64, 64)),),
                                ),
                                

                              ]
                        ),
                        
                        
                        
                                                ),
                        
    ));
  }
}











