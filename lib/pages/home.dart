import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/icon_card.dart';
import 'package:grocery_app/widgets/nearby.dart';
import 'package:grocery_app/widgets/today_picks.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAF5F0),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffFAF5F0),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios, color: Colors.black),
        title: Text(
          'Grocery',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.shopping_basket_outlined, color: Colors.black),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 18,
        ),
        child: ListView(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                width: double.infinity,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffC4C4C4).withOpacity(0.2),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Delivery location',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '111 London Road, London, L11 111, UK',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'What are you looking for?',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'See all >',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  IconCard(
                    color: Color(0xffFFC700).withOpacity(0.2),
                    image: 'assets/3.png',
                    title: 'Groceries',
                  ),
                  SizedBox(width: 5),
                  IconCard(
                    color: Color(0xff0085FF).withOpacity(0.2),
                    image: 'assets/1.png',
                    title: 'Household',
                  ),
                  SizedBox(width: 5),
                  IconCard(
                    color: Color(0xff00FF75).withOpacity(0.2),
                    image: 'assets/2.png',
                    title: 'Alcohol',
                  ),
                  SizedBox(width: 5),
                  IconCard(
                    color: Color(0xffFF0000).withOpacity(0.2),
                    image: 'assets/4.png',
                    title: 'Vapes',
                  ),
                  SizedBox(width: 5),
                  IconCard(
                    color: Color(0xff728D04).withOpacity(0.2),
                    image: 'assets/7.png',
                    title: 'Drinks',
                  ),
                  SizedBox(width: 5),
                  IconCard(
                    color: Color(0xffFFE600).withOpacity(0.2),
                    image: 'assets/5.png',
                    title: 'Bakery',
                  ),
                  SizedBox(width: 5),
                  IconCard(
                    color: Color(0xff5200FF).withOpacity(0.2),
                    image: 'assets/6.png',
                    title: 'Frozen',
                  ),
                  SizedBox(width: 5),
                  IconCard(
                    color: Color(0xffFF0000).withOpacity(0.2),
                    image: 'assets/8.png',
                    title: 'Cakes',
                  ),
                  SizedBox(width: 5),
                  IconCard(
                    color: Color(0xff00F0FF).withOpacity(0.2),
                    image: 'assets/9.png',
                    title: 'Baby',
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Icon(
                  Icons.local_fire_department_outlined,
                  color: Colors.orange,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Todays picks',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Text(
                  'See all >',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TodayPicks(),
                  SizedBox(width: 13),
                  TodayPicks(),
                  SizedBox(width: 13),
                  TodayPicks(),
                  SizedBox(width: 13),
                  TodayPicks(),
                  SizedBox(width: 13),
                  TodayPicks(),
                  SizedBox(width: 13),
                  TodayPicks(),
                  SizedBox(width: 13),
                  TodayPicks(),
                  SizedBox(width: 13),
                  TodayPicks(),
                ],
              ),
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Image.asset(
                  'assets/3.png',
                  width: 29,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Nearby Grocery Shops',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 61,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xff253B42),
                      ),
                      child: Text(
                        'Delivery',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      alignment: Alignment.center,
                      width: 61,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffADBBB7),
                      ),
                      child: Text(
                        'Pickup',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 12),
            Nearby(),
            SizedBox(height: 7),
            Nearby(),
            SizedBox(height: 7),
            Nearby(),
            SizedBox(height: 7),
            Nearby(),
          ],
        ),
      ),
    );
  }
}
