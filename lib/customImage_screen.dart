import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomImageScreen extends StatefulWidget {
  String imagePath;
  String title;
  VoidCallback ontap;

  CustomImageScreen({
    required this.title,
    required this.imagePath,
    required this.ontap,
  });
  @override
  CustomImageScreenState createState() {
    return CustomImageScreenState();
  }
}

class CustomImageScreenState extends State<CustomImageScreen> {
  CustomImageScreenState();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Card(
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(widget.imagePath),
                fit: BoxFit.cover,
              )),
              child: Text(
                widget.title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
          ),
          Positioned(
              height: 40,
              width: 105,
              bottom: 5,
              right: 5,
              child: GestureDetector(
                onTap: widget.ontap,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.amberAccent,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: EdgeInsets.only(right: 25)),
                      Text(
                        "GO",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
