import 'package:flutter/material.dart';
import 'package:my_app/src/04_Assignment_Four_In_Flutter/mock/Cities_data.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key,required this.name_city,required this.details_city , required this.image_city }) : super(key: key);
  final String name_city;
  final String details_city ;
  final String image_city ;
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
              children: [
                 Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                      width: 400,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Image.network(
                        image_city,
                        fit: BoxFit.cover,
                      ),
                    
                    ),
                        
                    Text(name_city,
                      style: TextStyle(fontSize: 22,color: Colors.black,),
                    ),
  
                    Text(details_city,),
                          
                        
                      ],
                    ),
                  
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    child: InkWell(
                      child: Icon(Icons.arrow_back,
                        size: 50,color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
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
