import 'package:flutter/material.dart';

class RestaurantTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: <Widget>[
          Stack(
            children: [
              Container(
                width: 110,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://place-hold.it/110x80'),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                    height: 25,
                    width: 55,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 12.0,
                        ),
                        Container(width: 4.0),
                        Text('4.5',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            )),
                      ],
                    )),
              ),
            ],
          ),
          Container(width: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Restaurant Tim Raue',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              Container(height: 4.0),
              Text('American, Italian',
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  )),
              Container(height: 16.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.access_time,
                    size: 14.0,
                  ),
                  Container(width: 4.0),
                  Text('25m'),
                  Container(width: 8.0),
                  Text('•'),
                  Container(width: 8.0),
                  Text('Free shipping'),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
