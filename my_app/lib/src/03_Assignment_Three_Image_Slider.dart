import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _HelloKurdistanAppState();
}

class _HelloKurdistanAppState extends State<MyApp> {
  String _image_name = "https://cdn4.iconfinder.com/data/icons/e-learning-1-4/66/59-512.png";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Assingment Eight "),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              
              Image.network(_image_name,width:250,height:250),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton(
                    color: Colors.transparent,

                  onPressed: () {
                   setState(() {_image_name ="https://cdn.hashnode.com/res/hashnode/image/upload/v1625379130988/ToaBUOP7J.png";});
                  }, child: Image.network("https://cdn.hashnode.com/res/hashnode/image/upload/v1625379130988/ToaBUOP7J.png",
                    width:100,height:100),
                  ),
                  
                  FlatButton(
                    color: Colors.transparent,
                  onPressed: () {
                    setState(() {_image_name ="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfuQlsvDkEycBC-1ouuLhhlFKIFWgWAmHT96_w_yDQjKAJbVXynuGpBvU3KqM8eqkBEjA&usqp=CAU";});
                  }, child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfuQlsvDkEycBC-1ouuLhhlFKIFWgWAmHT96_w_yDQjKAJbVXynuGpBvU3KqM8eqkBEjA&usqp=CAU",
                  width:100,height:100),
                  ),

                  FlatButton(
                    color: Colors.transparent,
                  onPressed: () {
                    setState(() {_image_name ="https://play-lh.googleusercontent.com/qbeCduZblOk80GaY164lw47gIRjXq9QIzSmgFwqQj1PyhNhTWxYR0OqPzm8BumnmJQ";});
                  }, child:Image.network("https://play-lh.googleusercontent.com/qbeCduZblOk80GaY164lw47gIRjXq9QIzSmgFwqQj1PyhNhTWxYR0OqPzm8BumnmJQ",
                  width:90,height:90),
                  ),
                  
                  
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
