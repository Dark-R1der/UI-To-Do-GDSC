import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:temp2/widgets/tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('DooIt', style: TextStyle(color: Colors.black)),
          elevation: 0,
          bottom: TabBar(
            indicatorPadding: EdgeInsets.symmetric(horizontal: 8.0),
            unselectedLabelColor: Colors.grey,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black),
            tabs: [
              Container(
                height: 40,
                child: Center(
                  child: Text(
                    'All List',
                    // style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Text(
                'Pinned',
                // style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.separated(
              itemBuilder: (context, index) => Tiles(),
              itemCount: 10,
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
            ),
            ListView.separated(
              itemBuilder: (context, index) => Tiles(),
              itemCount: 4,
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
            ),
          ],
        ),
        floatingActionButton: CircleAvatar(
          backgroundColor: Colors.black,
          radius: 30,
          child: IconButton(
            icon: Icon(
              Icons.add,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
