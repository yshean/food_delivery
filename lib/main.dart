import 'package:flutter/material.dart';
import 'package:food_delivery/basket_page.dart';
import 'package:food_delivery/bottom_navy_bar.dart';
import 'package:food_delivery/promotion_banner.dart';
import 'package:food_delivery/restaurant_tile.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.notoSansTextTheme().copyWith(
          headline6: Theme.of(context).textTheme.headline6.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
          bodyText2: Theme.of(context).textTheme.bodyText2.copyWith(
                color: Colors.black,
              ),
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MyHomePage(title: 'Food Drive'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;
  PageController _pageController;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 24.0,
        title: Text(
          widget.title.toUpperCase(),
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'Deliver to: ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Jalan 123 Cheras',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                PromotionBanner(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Categories',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text('See all',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12.0,
                    bottom: 12.0,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        // Container(
                        //   width: 100,
                        //   color: Colors.orange[100],
                        //   child: Text('Burger'),
                        // ),
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          // width: 110,
                          decoration: BoxDecoration(
                            color: Colors.orange[50],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 12.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  '🍔',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                  ),
                                ),
                                Container(width: 10.0),
                                Text(
                                  'Burger',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // width: 110,
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.pink[50],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 12.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  '🍕',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                  ),
                                ),
                                Container(width: 10.0),
                                Text(
                                  'Pizza',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // width: 110,
                          decoration: BoxDecoration(
                            color: Colors.green[50],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '🥦',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                  ),
                                ),
                                Container(width: 10.0),
                                Text(
                                  'Vegan',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Near you',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      // TODO: Can put the Row into a Tile widget
                      RestaurantTile(),
                      RestaurantTile(),
                      RestaurantTile(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text('Nothing here yet'),
      //     ],
      //   ),
      // ),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.home),
      //     title: Text('Home'),
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.business),
      //     title: Text('Business'),
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.school),
      //     title: Text('School'),
      //   ),
      // ]),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        // selectedIndex: 0,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
          // Navigator.of(context)
          //     .push(MaterialPageRoute(builder: (context) => BasketPage()));
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        }),
        // onItemSelected: (index) => null,
        mainAxisAlignment: MainAxisAlignment.center,
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.green,
            textAlign: TextAlign.center,
            inactiveColor: Colors.grey[400],
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.chat_bubble),
            title: Text('Messages'),
            activeColor: Colors.green,
            inactiveColor: Colors.grey[400],
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notifications'),
            activeColor: Colors.green,
            inactiveColor: Colors.grey[400],
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            activeColor: Colors.green,
            inactiveColor: Colors.grey[400],
          ),
        ],
      ),
    );
  }
}
