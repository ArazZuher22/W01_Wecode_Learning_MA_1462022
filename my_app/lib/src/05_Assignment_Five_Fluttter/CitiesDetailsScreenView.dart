import 'package:flutter/material.dart';
import 'package:my_app/src/05_Assignment_Five_Fluttter/Models/city_model.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key,required this.city,}) : super(key: key);

  final CityModel city;

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

                        city.cityImage.toString(),
                        
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(

                      city.cityName,
                      
                      style: TextStyle(fontSize: 22,color: Colors.black,),
                    ),
                    Text(
                      
                      city.details.toString(),
                    
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  child: InkWell(
                    child: Icon(
                      Icons.arrow_back,
                      size: 50,
                      color: Colors.black,
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
