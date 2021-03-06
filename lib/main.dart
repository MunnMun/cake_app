import 'package:cakes/foodlists.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  late TabController tabController;

  @override
  void initState(){
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9EFEB),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 250.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(75.0)),
                  color: Color(0xFFFD7465),
                ),
              ),
              Container(
                height: 185.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(75.0)),
                  color: Color(0xFFFE8A7E),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 35.0, left: 15.0),
                child: Text('Good Afternoon!',style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 75.0, left: 15.0),
                child: Text('Choose your favourite!',style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 160.0,left: 15.0,right: 15.0),
                child: Container(
                  width: 370.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(25.0),
                      bottomLeft: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14.0),
                      hintText: 'Search for your favourite',
                      hintStyle: TextStyle(fontFamily: 'Roboto', fontSize: 16.0),
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ],
          ),
          TabBar(
            controller: tabController,
            indicatorColor: Color(0xFFFE8A7E),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 4.0,
            isScrollable: true,
            labelColor: Color(0xFF440206),
            unselectedLabelColor: Color(0xFF440206),
            tabs: [
              Tab(
                child: Text('DESSERT',style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20.0,
                ),),
              ),
              Tab(
                child: Text('PIZZA',style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20.0,
                ),),
              ),
              Tab(
                child: Text('BARBECUE',style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20.0,
                ),),
              ),
              Tab(
                child: Text('DRINKS',style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20.0,
                ),),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Container(
            height: MediaQuery.of(context).size.height-450.0,
            child: TabBarView(
              controller: tabController,
              children: [
                new FoodList(),
                new FoodList(),
                new FoodList(),
                new FoodList(),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text('RECOMMEND',style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 20.0,
            ),),
          ),
          _listItem('assets/steak.png','Chocolate lemon cup cake','The sour and sweetness of the lemonneutralizes the sweetness of the cream','\$18.0',134,2412,'2-3per'),
          _listItem('assets/steak.png','Strawberry cup cake','The sour and sweetness of the lemonneutralizes the sweetness of the cream','\$18.0',134,2412,'2-3per'),
        ],
      ),
    );
  }

  _listItem(String imgPath,String foodName, String desc, String price,int likes,int calCount,String serving){
    return Padding(
      padding: EdgeInsets.only(left: 15.0,top: 15.0),
      child: Stack(
        children: [
          Container(
            height: 170.0,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            left: 15.0,
            top: 30.0,
            child: Container(
              height: 125.0,
              width: MediaQuery.of(context).size.width - 15.0,
              decoration: BoxDecoration(
                color: Color(0xFFF9EFEB),
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 3.0,
                    spreadRadius: 3.0,
                  )
                ]
              ),
              child: Text('hello world'),
            ),
          ),
          Positioned(
            left: 95.0,
            top: 64.0,
            child: Container(
              height: 105.0,
              width: MediaQuery.of(context).size.width - 15.0,
              decoration: BoxDecoration(
                  color: Color(0xFFF9EFEB),
                  borderRadius: BorderRadius.circular(5.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 3.0,
                      spreadRadius: 3.0,
                    )
                  ]
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.0,left: 40.0),
                  child: Row(
                    children: [
                      Icon(Icons.favorite, color: Color(0xFFF75A4C), size: 15.0),
                      SizedBox(width: 5.0),
                      Text(likes.toString(),
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                            color: Colors.grey
                        ),
                      ),
                      SizedBox(width: 25.0),
                      Icon(Icons.account_box, color: Color(0xFFF75A4C), size: 15.0),
                      SizedBox(width: 5.0),
                      Text(calCount.toString() + 'cal',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                            color: Colors.grey
                        ),
                      ),
                      SizedBox(width: 25.0),
                      Icon(Icons.play_circle_outline, color: Color(0xFFF75A4C), size: 15.0),
                      SizedBox(width: 5.0),
                      Text(serving,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                            color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 125.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(imgPath,fit: BoxFit.cover),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.0),
                      Text(foodName,style: TextStyle(
                        color: Color(0xFF563734),
                        fontFamily: 'Roboto',
                        fontSize: 16.0,
                      ),),
                      SizedBox(height: 5.0),
                      Container(
                        width: 175.0,
                        child: Text(desc,style: TextStyle(
                          color: Color(0xFFB2A9A9),
                          fontFamily: 'Roboto',
                          fontSize: 13.0,
                        ),),
                      ),
                      SizedBox(height: 10.0),
                      Text(price.toString(),style: TextStyle(
                        color: Color(0xFFF76053),
                        fontFamily: 'Roboto',
                        fontSize: 15.0,
                      ),),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


