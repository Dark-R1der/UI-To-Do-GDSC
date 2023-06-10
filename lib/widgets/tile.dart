import 'package:flutter/material.dart';

class Tiles extends StatelessWidget {
  const Tiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(2),
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xFFEDBBB4),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black),
        ),
        child: ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'First Container',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Personal',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.calendar_month_outlined),
                  SizedBox(
                    width: 4,
                  ),
                  Text('2023-04-23'),
                ],
              )
            ],
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.check_box_outline_blank,
              size: 35,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
