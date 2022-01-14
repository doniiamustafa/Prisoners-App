import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prison_task/widgets/image_stack_iconbuttons.dart';
import '../bloc/cubit.dart';
import '../bloc/states.dart';

class CaseDetails extends StatelessWidget {
  final int index;
  CaseDetails(this.index);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitScreen, PrisonStates>(
      // listener: (BuildContext context, state) => {},
      builder: (BuildContext context, state) {
       return Scaffold(
          body: SafeArea(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  ImageStack(index),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Case Details',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 24.0, right: 5.0, top: 10.0),
                    height: 320,
                    child: Expanded(
                      flex: 1,
                      child: Scrollbar(
                        thickness: 8.0,
                        radius: Radius.circular(10),
                        isAlwaysShown: true,
                        showTrackOnHover: true,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 14.0),
                            child: Text(
                              // "1 Description that is too long in text format(Here Data is coming from API) jdlksaf j klkjjflkdsjfkddfdfsdfds " +
                              //     "2 Description that is too long in text format(Here Data is coming from API) d fsdfdsfsdfd dfdsfdsf sdfdsfsd d " +
                              //     "3 Description that is too long in text format(Here Data is coming from API)  adfsfdsfdfsdfdsf   dsf dfd fds fs" +
                              //     "4 Description that is too long in text format(Here Data is coming from API) dsaf dsafdfdfsd dfdsfsda fdas dsad" +
                              //     "5 Description that is too long in text format(Here Data is coming from API) dsfdsfd fdsfds fds fdsf dsfds fds " +
                              //     "6 Description that is too long in text format(Here Data is coming from API) asdfsdfdsf fsdf sdfsdfdsf sd dfdsf" +
                              //     "7 Description that is too long in text format(Here Data is coming from API) df dsfdsfdsfdsfds df dsfds fds fsd" +
                              //     "8 Description that is too long in text format(Here Data is coming from API)" +
                              //     "9 Description that is too long in text format(Here Data is coming from API)" +
                              //     "10 Description that is too long in text format(Here Data is coming from API) 1 Description that is too long in text format(Here Data is coming from API)"
                              //         "jdlksaf j klkjjflkdsjfkddfdfsdfds 10 Description that is too long in text format(Here Data is "
                              //         "coming from API) 1 10 Description that is too long in text format(Here Data is coming from API) 1 "
                                      '${CubitScreen.get(context).detailsModel?.model.details}',
                              style: TextStyle(height: 1.7, color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ) ;
      },
    );
  }
}