import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  var imgPath;

  Detay({this.imgPath});

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius:BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height:240,
                width: MediaQuery.of(context).size.width -30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 120,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey,),
                              image: DecorationImage(image: AssetImage('assets/dress.jpg',),fit: BoxFit.contain)

                            ),

                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Lamna",style: TextStyle(fontSize: 18,fontFamily: 'Montserrat',fontWeight: FontWeight.bold),),

                            SizedBox(
                              height: 5,

                            ),
                            Text("Lous Viitoon",style: TextStyle(fontSize: 18,fontFamily: 'Montserrat',),),

                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width -180,
                              child: Text(
                                "Lous Viitodfdsfsdfdsfsdfsdfdsfdsfdsfdsfdsfsdfsdfdsfdsfdsfdsfdsfdon",
                                style: TextStyle(
                                  fontSize: 12, fontFamily: 'Montserrat',),),
                            ),

                          ],
                        )
                      ],
                    ),
                    Divider(
                      height: 1,

                    ),

                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        children: <Widget>[
                          Text('\$6500',style: TextStyle(fontFamily: 'Montserrat',fontSize: 22),),
                          SizedBox(
                            width: 190,
                          ),
                          FloatingActionButton(
                            onPressed: (){

                            },
                            child: Icon(Icons.arrow_forward_ios),
                            backgroundColor: Colors.brown,
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
