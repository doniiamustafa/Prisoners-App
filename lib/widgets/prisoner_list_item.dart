import 'package:flutter/material.dart';
import 'package:prison_task/bloc/cubit.dart';

class PrisonerListItem extends StatelessWidget {
  int index;
  int mission;
  PrisonerListItem(this.index , this.mission);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 15.0, right: 15.0, top: 25.0, bottom: 3.0),
      child: InkWell(
        onTap: () {
          CubitScreen.get(context).onTap(context, index);
        },
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 16.0, right: 16.0, top: 20.0, bottom: 5.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${CubitScreen.get(context).model[index].name}',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 7.0,),
                        Text(
                          '${CubitScreen.get(context).model[index].place}',
                          style: TextStyle(
                              fontSize: 20, color: Colors.grey),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:NetworkImage(
                          CubitScreen.get(context).model[index].thumbnail),
                      child: Padding(
                        padding: EdgeInsets.all(6),
                      ),
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 10,
                    thumbShape:
                    RoundSliderThumbShape(enabledThumbRadius: 5.8),
                    disabledThumbColor: Colors.transparent,
                  ),
                  child: Slider(
                    value: mission.toDouble(),
                    onChanged: (double value) {
                      print(value.round());
                      CubitScreen.get(context).sliderMovement(mission,value , index);
                    },
                    activeColor: Colors.deepPurple,
                    inactiveColor: Colors.grey[300],
                    max: 100,
                    min: 0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${CubitScreen.get(context).model[index].neededAmount}' + ' ADE',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Goal ' + '${CubitScreen.get(context).model[index].status}'),
                  ],
                ),
                SizedBox(
                  height: 23.0,
                ),
                Container(
                  color: Colors.grey[200],
                  height: 2.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Dept Money raised for Joseph, will be released shortly',
                    style: TextStyle(
                      color: Colors.grey,
                      // wordSpacing: 2.0,
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
