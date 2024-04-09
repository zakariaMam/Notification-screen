import 'package:flutter/material.dart';
import 'package:notifictaion_screen/Model/Notification.dart';

class Notificationscreen extends StatelessWidget {
  const Notificationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC7D9FE),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xFF20005E),
        unselectedItemColor: Color(0xFF001E5E),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notification'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          headers(context),
          textnotification(),
          listnotification(),
        ],
      ),
    );
  }

  Widget headers(BuildContext contex) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  Widget textnotification() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            'Notification',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF20005E)),
          ),
        ),
      ],
    );
  }

  Widget listnotification() {
    return Expanded(
      child: ListView.builder(
        itemCount: Notificationinfo.length,
        itemBuilder: (context, index) {
          Notificationss notificationss = Notificationinfo[index];
          return Dismissible(
            background: Container(
              color: Colors.red,
              child: Icon(Icons.delete),
            ),
            key: ValueKey<int>(notificationss.hashCode),
            onDismissed: (direction) {
              Notificationinfo.removeAt(index);
            },
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border(bottom: BorderSide(color: Colors.black)),
                  ),
                  child: Container(
                    height: 120,
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'images/zz.png',
                              fit: BoxFit.cover,
                              height: 70,
                              width: 70,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                notificationss.name,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              notificationss.sends,
                              style: TextStyle(
                                fontSize: 15,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              notificationss.time,
                              style: TextStyle(
                                fontSize: 10,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )
                      ],
                    ),
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
