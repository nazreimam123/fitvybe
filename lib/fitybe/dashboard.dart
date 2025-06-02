import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 90,
        title: Text('Dashboard', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: 15),
                Text(
                  'Good Morning, Ayush',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 23),
                Text(
                  'Todays bookings',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 8),
            SizedBox(
              height: 230,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 33,
                      backgroundImage: AssetImage('assets/img/Oval1.png'),
                    ),
                    title: Text(
                      'Customer Name',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      '10.00 AM - 11.00 AM',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  );
                },
              ),
            ),
            // SizedBox(height: 10,),
            SizedBox(
              height: 90,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 16),
                      Text(
                        'Earnings This Week',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      SizedBox(width: 13),
                      Icon(Icons.currency_rupee_outlined),
                      Text('105895', style: TextStyle(fontSize: 25)),
                      SizedBox(width: 220),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 15),
                      Text(
                        'Upcoming slots',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 23,
                        ),
                      ),
                    ],
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 33,
                      backgroundImage: AssetImage('assets/img/Oval1.png'),
                    ),
                    title: Text(
                      'John',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text('2:00 PM - 3:00 PM'),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.space,
                    children: [
                      SizedBox(width: 280),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                        child: Text(
                          'Add New',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(width: 15),
                Text(
                  'Profile Status',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                ),
              ],
            ),
            SizedBox(height: 13,),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 15),
                Text('Verified', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400)),
                SizedBox(width: 260),

                Icon(Icons.verified_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
