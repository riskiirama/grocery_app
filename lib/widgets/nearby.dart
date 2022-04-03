import 'package:flutter/material.dart';

class Nearby extends StatelessWidget {
  const Nearby({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 189,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/foto.png',
              ),
              Positioned(
                top: 60,
                left: 60,
                child: Text(
                  'Race Track Pitstop - Ibrox',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 120,
                right: 2,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 66,
                      height: 19,
                      decoration: BoxDecoration(
                        color: Color(0xffE1255D),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'Min £5.00',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 4),
                    Container(
                      alignment: Alignment.center,
                      width: 66,
                      height: 19,
                      decoration: BoxDecoration(
                        color: Color(0xff25B4E1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'Delivery',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 4),
                    Container(
                      alignment: Alignment.center,
                      width: 66,
                      height: 19,
                      decoration: BoxDecoration(
                        color: Color(0xff25E1A9),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'Pickup',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(
                Icons.thumb_up_alt_outlined,
                color: Color(0xffB49528),
              ),
              SizedBox(width: 4),
              Expanded(
                child: Text(
                  '4.8(522)',
                  style: TextStyle(
                    color: Color(0xffB49528),
                  ),
                ),
              ),
              Icon(Icons.location_on_outlined),
              SizedBox(width: 4),
              Text(
                '1.60miles',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(width: 8),
              Icon(Icons.motorcycle_rounded),
              SizedBox(width: 4),
              Text(
                '10-20min',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
