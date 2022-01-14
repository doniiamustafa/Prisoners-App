import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prison_task/widgets/prisoner_list_item.dart';
import '../bloc/cubit.dart';
import '../bloc/states.dart';

class PrisonersList extends StatelessWidget {

    int mission =100;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitScreen , PrisonStates>(
      // listener: (BuildContext context, state) => {},
      builder: (BuildContext context, state) {
        return Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                'Prisoners List',
                style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0),
              ),
            ),
            centerTitle: true,
            elevation: 0.0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 8.0),
              child: IconButton(
                onPressed: () {},
                color: Colors.grey, icon: Icon(Icons.arrow_back_ios, size: 30.0,),
              ),
            ),
          ),
          body: SafeArea(
            child: ListView.builder(
              itemBuilder: (ctx, index) => PrisonerListItem(index,mission),
              itemCount: CubitScreen.get(context).model.length,
            ),
          ),
        );
      } ,

    );
  }

}
