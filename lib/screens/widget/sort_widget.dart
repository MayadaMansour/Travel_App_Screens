import 'package:flutter/material.dart';

class SortWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30,left: 10),
      child: Flex(
        direction: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Text("Our Recommendationas",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              Divider(thickness: 1,),
              SizedBox(height: 20,),

              Text("Rating & Recommended",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              Divider(thickness: 1,),
              SizedBox(height: 20,),

              Text("Price & Recommended",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              Divider(thickness: 1,),
              SizedBox(height: 20,),

              Text("Distance & Recommended",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              Divider(thickness: 1,),
              SizedBox(height: 20,),

              Text("Price Only",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              Divider(thickness: 1,),
              SizedBox(height: 20,),

              Text("Rating Only",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              Divider(thickness: 1,),
              SizedBox(height: 20,),

              Text("Distance Only",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              Divider(thickness: 1,),
              SizedBox(height: 20,),
            ],
          ),
        ],
      ),
    );
  }

}