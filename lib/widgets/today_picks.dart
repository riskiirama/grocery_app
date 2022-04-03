import 'package:flutter/material.dart';

class TodayPicks extends StatelessWidget {
  const TodayPicks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      width: 130,
      height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4, right: 4),
                child: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
          Center(
            child: Image.asset(
              'assets/gambar1.png',
              alignment: Alignment.center,
              fit: BoxFit.cover,
              width: 88,
            ),
          ),
          SizedBox(height: 11),
          Padding(
            padding: EdgeInsets.only(left: 9),
            child: Text(
              'Elf Bar (MATE500)',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            height: 30,
            decoration: BoxDecoration(
              color: Color(0xff000000).withOpacity(0.1),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(5),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 9),
                  child: Text(
                    '£5.99',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 9),
                  alignment: Alignment.center,
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.black,
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
