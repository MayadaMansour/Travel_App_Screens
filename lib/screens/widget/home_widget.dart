import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_one/model/data_model.dart';
import 'package:task_one/screens/widget/star_rate.dart';
import '../../core/main_cubit/cubit/main_cubit.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
      listener: (context, state) {},
      builder: (context, state) {
        MainCubit cubit = MainCubit.get(context);
        return ConditionalBuilder(
          condition: cubit.hotel != null,
          builder: (context) => ListView.separated(
              physics:const BouncingScrollPhysics(),
              itemBuilder: (context, index) => CardData(
                  cubit.hotel![index],context),
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemCount:cubit.hotel!.length),
          fallback: (context) => Center(
            child: const CircularProgressIndicator(
              color: Colors.black,
            ),
          ),
        );
      },
    );
  }







  Widget CardData(HotelData model, context)=>Card(
    color: Colors.white,
    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Image.network(
              model.image!,
              height: 150,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Container(
                padding: EdgeInsets.only(top: 10, right: 8),
                alignment: Alignment.topRight,
                child: Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.white,
                  size: 30,
                ))
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: StarRating(
                starCount: 5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                model.starts!.toString(),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10),
          child: Text(
            model.name!,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 5,),
        Row(
          children: [
            Container(
              height: 22,
              width: 40,
              margin: EdgeInsets.only(left: 10),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: Text(
                model.reviewScore.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(model.review!),
            SizedBox(
              width: 8,
            ),
            Icon(Icons.location_on_outlined),
            SizedBox(
              width: 5,
            ),
            Text(model.address!)
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          height: 85,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.grey)),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 200, top: 5),
                child: Container(
                  height: 25,
                  width: 150,
                  decoration: ShapeDecoration(
                    color: Color(0xff91BED4C4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Our Lowest Price',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    model.price!.toString()+'\$',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text("View Deal",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 320),
                child: Text(model.currency!,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15, left: 280),
          child: Text(
            "More Price",
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w700,
                fontSize: 16),
          ),
        )
      ],
    ),
  );

}
