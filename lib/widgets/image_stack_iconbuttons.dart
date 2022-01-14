import 'package:flutter/material.dart';
import 'package:prison_task/bloc/cubit.dart';

class ImageStack extends StatelessWidget {
  int index;
  ImageStack(this.index);
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Expanded(
          child: Container(
            child: Image.network(
              CubitScreen.get(context).model[index].image,
              fit: BoxFit.cover,
            ),
            height: 340,
            width: double.infinity,
          )),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {CubitScreen.get(context).onPop(context);},
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
