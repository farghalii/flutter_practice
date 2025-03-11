import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasketBall(),
    ),
  );
}

class BasketBall extends StatefulWidget {
  @override
  State<BasketBall> createState() => _BasketBallState();
}

class _BasketBallState extends State<BasketBall> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text(
          'Points Counter',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      '$teamApoints',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 150,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 45),
                      ),
                      onPressed: () {
                        teamApoints++;
                        setState(() {});
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 45),
                      ),
                      onPressed: () {
                        teamApoints += 2;
                        setState(() {});
                      },
                      child: Text(
                        'Add 2 Points',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 45),
                      ),
                      onPressed: () {
                        teamApoints += 3;
                        setState(() {});
                      },
                      child: Text(
                        'Add 3 Points',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 450,
                  child: VerticalDivider(),
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      '$teamBpoints',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 150,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 45),
                      ),
                      onPressed: () {
                        teamBpoints++;
                        setState(() {});
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 45),
                      ),
                      onPressed: () {
                        teamBpoints += 2;
                        setState(() {});
                      },
                      child: Text(
                        'Add 2 Points',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 45),
                      ),
                      onPressed: () {
                        teamBpoints += 3;
                        setState(() {});
                      },
                      child: Text(
                        'Add 3 Points',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                  backgroundColor: Colors.orange,
                  minimumSize: Size(150, 45),
                ),
                onPressed: () {
                  teamApoints = 0;
                  teamBpoints = 0;
                  setState(() {});
                },
                child: Text(
                  'Reset',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
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
