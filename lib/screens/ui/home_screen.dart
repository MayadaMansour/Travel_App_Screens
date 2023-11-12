import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/filter_widget.dart';
import '../widget/home_widget.dart';
import '../widget/sort_widget.dart';
import '../widget/star_rate.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 30,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(AppBar().preferredSize.height),
            child: Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: Colors.grey[200],
                ),
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    color: Colors.green,
                  ),
                  tabs: const [
                    Row(
                      children: [
                        Icon(Icons.house),
                        SizedBox(width: 5,),
                        Tab(
                          text: 'Home',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.filter_alt_outlined),
                        SizedBox(width: 5,),
                        Tab(
                          text: 'Filter',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(CupertinoIcons.sort_down),
                        SizedBox(width: 5,),
                        Tab(
                          text: 'Sort',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body:  TabBarView(
          children: [
            HomeWidget(),
            FilterWiget(),
            SortWidget()


          ],
        ),
        floatingActionButton:FloatingActionButton.extended(
          onPressed: () {
          },
          label: const Text("Map",style: TextStyle(fontSize: 20),),
          icon: const Icon(
            Icons.location_on_outlined,
            size: 30,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

          foregroundColor: Colors.white,
           backgroundColor: Colors.green,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      ),
    );
  }
}