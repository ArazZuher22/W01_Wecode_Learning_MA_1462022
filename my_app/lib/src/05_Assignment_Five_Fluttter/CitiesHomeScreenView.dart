import 'package:flutter/material.dart';

import 'package:my_app/src/05_Assignment_Five_Fluttter/mock/Cities_data.dart';
import 'package:my_app/src/05_Assignment_Five_Fluttter/Models/city_model.dart';

import 'package:my_app/src/05_Assignment_Five_Fluttter/CitiesDetailsScreenView.dart';


class CitiesHomeScreenView extends StatefulWidget {
  const CitiesHomeScreenView({Key? key}) : super(key: key);

  @override
  State<CitiesHomeScreenView> createState() => CitiesHomeScreenViewState();
}

class CitiesHomeScreenViewState extends State<CitiesHomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFD0DAD4),
          toolbarHeight: 92,
          title: Center(
            child: Text(
              "Kurdistan Cities",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Expanded(
            child: ListView.builder(
              itemCount: mockData.length,
              itemBuilder: (context, index) {

                // change reason model
                    List<CityModel> _cities = mockData.map((element) {
                      return CityModel.fromMap(element);
                    }).toList();
                
                
                
                return Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      width: 360,
                      margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: Image.network(
                        
                        _cities[index].cityImage.toString(),
                        
                        fit: BoxFit.cover,
                      ),
                    
                    ),
                    Positioned(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          
                          Navigator.push(context,MaterialPageRoute(
                            builder: (context)=>DetailsScreen(
                                
                                city: _cities[index],

                                
                            ),
                          ),);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFD0DAD4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(

                          _cities[index].cityName,
                          
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
