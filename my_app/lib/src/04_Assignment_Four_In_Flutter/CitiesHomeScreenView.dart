import 'package:flutter/material.dart';
import 'package:my_app/src/04_Assignment_Four_In_Flutter/CitiesDetailsScreenView.dart';
import 'package:my_app/src/04_Assignment_Four_In_Flutter/mock/Cities_data.dart';

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
                return Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      width: 360,
                      margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: Image.network(
                        mockData[index]["city_image"].toString(),
                        fit: BoxFit.cover,
                      ),
                    
                    ),
                    Positioned(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(
                            builder: (context)=>DetailsScreen(
                                name_city: mockData[index]["city_name"].toString(),
                                details_city: mockData[index]["details"].toString(),
                                image_city: mockData[index]["city_image"].toString(),
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
                          mockData[index]["city_name"].toString(),
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
