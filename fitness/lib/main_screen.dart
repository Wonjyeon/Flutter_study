import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color navyColor = Color(0xff1A205A);
  Color purpleColor = Color(0xffEBDEF5);
  List<String> weeks = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        fixedColor: Colors.purple[300],
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.purple[300],
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_drink),
            title: Text(''),
          ),
        ],
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: navyColor,
          iconSize: 30,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Column(
          children: <Widget>[
            Text(
              'April',
              style: TextStyle(
                color: navyColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Thursday, 17',
              style: TextStyle(
                color: navyColor,
                fontSize: 14,
              ),
            ),
          ],
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(8),
            child: CircleAvatar(
              maxRadius: 20,
              backgroundImage: NetworkImage(
                  'https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-19/s320x320/107542178_321511725904720_6233514382283536947_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&_nc_ohc=Ulx-Xb_H4z0AX9uEssT&oh=20e6d2d2bb32504cf15dd2619a0179d1&oe=5F63FB65'),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
        elevation: 0,
        backgroundColor: Color(0xffEBDEF5),
      ),
      body: Container(
        color: purpleColor,
        child: Column(
          children: [
            WeekendList(weeks: weeks, navyColor: navyColor),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Activity',
                              style: TextStyle(
                                color: navyColor,
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(
                              Icons.more_vert,
                              size: 36,
                            ),
                          ],
                        ),
                        ActivityItem(
                          navyColor: navyColor,
                          iconText: '🏊‍♂',
                          title: 'Swimming',
                          time: '9:00 am, 120 min',
                          indicatorValue: 0.75,
                          indicatorColor: Colors.blue,
                        ),
                        ActivityItem(
                          navyColor: navyColor,
                          iconText: '🚴‍♂',
                          title: 'Biking',
                          time: '11:00 am, 60 min',
                          indicatorValue: 0.5,
                          indicatorColor: Colors.purple,
                        ),
                        ActivityItem(
                          navyColor: navyColor,
                          iconText: '🧘‍♂',
                          title: 'Yoga',
                          time: '7:00 am, 20 min',
                          indicatorValue: 0.3,
                          indicatorColor: Colors.pink,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Meal',
                              style: TextStyle(
                                color: navyColor,
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(
                              Icons.more_vert,
                              size: 36,
                            ),
                          ],
                        ),
                        MealItem(
                          navyColor: navyColor,
                          iconText: '🍽',
                          title: 'Breakfast',
                          recipe: 'Bread, Cheese, Tea',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActivityItem extends StatelessWidget {
  final Color navyColor;
  final String iconText;
  final String title;
  final String time;
  final Color indicatorColor;
  final double indicatorValue;

  const ActivityItem(
      {Key key,
      this.navyColor,
      this.iconText,
      this.title,
      this.time,
      this.indicatorColor,
      this.indicatorValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 36,
            backgroundColor: Color(0xffF4FAFE),
            child: Text(
              iconText,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: navyColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Spacer(),
          CircularProgressIndicator(
            value: indicatorValue,
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation<Color>(indicatorColor),
          ),
        ],
      ),
    );
  }
}

class MealItem extends StatelessWidget {
  final Color navyColor;
  final String iconText;
  final String title;
  final String recipe;

  const MealItem(
      {Key key, this.navyColor, this.iconText, this.title, this.recipe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 36,
            backgroundColor: Color(0xffF4FAFE),
            child: Text(
              iconText,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: navyColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                recipe,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WeekendList extends StatelessWidget {
  const WeekendList({
    Key key,
    @required this.weeks,
    @required this.navyColor,
  }) : super(key: key);

  final List<String> weeks;
  final Color navyColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xffEBDEF5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 30,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20,
            ),
            child: Column(
              children: <Widget>[
                Text(
                  weeks[index % 7],
                  style: TextStyle(
                    color: navyColor,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  (index + 1).toString(),
                  style: TextStyle(
                    color: navyColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
