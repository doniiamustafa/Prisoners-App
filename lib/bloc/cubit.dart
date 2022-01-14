import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/case_details.dart';
import '../models/details_model.dart';
import '../models/prisoner_model.dart';
import 'states.dart';

class CubitScreen extends Cubit<PrisonStates> {
  CubitScreen() : super(InitialState());

  static CubitScreen get(context) => BlocProvider.of(context);

  late PrisonerModel prisonerModel;
  List model = [];

  DetailsModel? detailsModel;

  Future<void> getData() async {
    emit(LoadingState());
    Dio dio = new Dio();
    dio.options.baseUrl = 'http://159.89.4.181:2000/';
    await dio.get('api/v1/cases', queryParameters: {
      "caseStatus": "2",
    }).then((value) {

      prisonerModel = PrisonerModel.fromJson(value.data);
      model = prisonerModel.model ; // as List<Model?>
      // detailsModel = DetailsModel.fromJson(value.data);

      emit(SuccessState());
    }).catchError((error) {
      print(error);
      emit(ErrorState());
    });
  }
  Future<void> getDetails() async {
    emit(LoadingState());
    Dio dio = new Dio();
    dio.options.baseUrl = 'http://159.89.4.181:2000/';
    await dio.get('api/v1/cases',
        queryParameters: {
      "id" : "99",
    }).then((value) {
      detailsModel = DetailsModel.fromJson(value.data);

      emit(SuccessState());
    }).catchError((error) {
      print(error);
      emit(ErrorState());
    });
  }

  onTap(BuildContext context, int index) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CaseDetails(index)));
    emit(SuccessState());
  }

  onPop(BuildContext context) {
    Navigator.pop(context);
    emit(SuccessState());
  }

  sliderMovement(mission, value , index) {
    if(model[index].status == "Completed") mission = 100;
    mission = value.round();
    emit(SuccessState());
  }

}
