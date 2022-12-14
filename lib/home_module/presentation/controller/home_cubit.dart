// ignore_for_file: unused_field
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/core/constant/linkapi.dart';
import 'package:project1/home_module/file_model.dart';
import 'package:project1/home_module/place_model.dart';
import 'package:project1/home_module/presentation/screens/home_screen.dart';
import 'package:project1/home_module/presentation/screens/place_screen.dart';
import 'package:project1/home_module/region_model.dart';
import '../../../core/constant/curd.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  final Curd _curd = Curd();
  Region? region;
  Place? place;
  Occupation? occupation;

  getRegion() async {
    region = null;
    emit(RegionLoadingState());
    var response = await _curd.getRequest(AppLink.getRegionLink);
    if (response['status'] == 'success') {
      emit(RegionSuccessState());
      region = Region.fromJson(response);
    } else {
      emit(RegionErrorState());
    }
  }

  insertRegion({required String name}) async {
    emit(InsertRegionLoadingState());
    var response = await _curd.postRequest(AppLink.addRegionLink, {
      'name': name,
    });
    if (response['status'] == 'success') {
      emit(InsertRegionSuccessState());
      getRegion();
    } else {
      emit(InsertRegionErrorState());
    }
  }

  deleteRegion({required String id}) async {
    emit(InsertRegionLoadingState());
    var response = await _curd.postRequest(AppLink.deleteRegionLink, {
      'ID': id,
    });
    if (response['status'] == 'success') {
      emit(DeleteRegionSuccessState());
      getRegion();
    } else {
      emit(DeleteRegionErrorState());
    }
  }

  getPlace({required String id}) async {
    place = null;
    emit(PlaceLoadingState());
    var response = await _curd.postRequest(AppLink.getPlaceLink, {
      'ID_Region': id,
    });
    if (response['status'] == 'success') {
      emit(PlaceSuccessState());
      place = Place.fromJson(response);
    } else {
      if (kDebugMode) {
        print('error');
      }
      emit(PlaceErrorState());
    }
  }

  insertPlace({required String name, required String idRegion}) async {
    emit(InsertPlaceLoadingState());
    var response = await _curd.postRequest(AppLink.addPlaceLink, {
      'name': name,
      'ID_Region': idRegion,
    });
    if (response['status'] == 'success') {
      emit(InsertPlaceSuccessState());
      getPlace(id: idRegion2);
    } else {
      emit(InsertPlaceErrorState());
    }
  }

  deletePlace({required String id, required String idRegion}) async {
    emit(InsertRegionLoadingState());
    var response = await _curd.postRequest(AppLink.deletePlaceLink, {
      'ID': id,
      'ID_Region': idRegion,
    });
    if (response['status'] == 'success') {
      emit(DeletePlaceSuccessState());
      getPlace(id: idRegion2);
    } else {
      emit(DeletePlaceErrorState());
    }
  }

  getOccupation({required String id}) async {
    occupation = null;
    emit(OccupationLoadingState());
    var response = await _curd.postRequest(AppLink.getOccupationLink, {
      'ID_Place': id,
    });
    if (response['status'] == 'success') {
      emit(OccupationSuccessState());
      occupation = Occupation.fromJson(response);
    } else {
      if (kDebugMode) {
        print('error');
      }
      emit(OccupationErrorState());
    }
  }

  insertOccupation({required String name, required String idPlace}) async {
    emit(InsertOccupationLoadingState());
    var response = await _curd.postRequest(AppLink.insertOccupationLink, {
      'name': name,
      'ID_Place': idPlace,
    });
    if (response['status'] == 'success') {
      emit(InsertOccupationSuccessState());
      getOccupation(id: idPlace2);
    } else {
      emit(InsertOccupationErrorState());
    }
  }

  deleteOccupation(
      {required String id,
      required String idRegion,
      required String idPlace}) async {
    emit(InsertOccupationLoadingState());
    var response = await _curd.postRequest(AppLink.deleteOccupationLink, {
      'ID': id,
      'ID_Region': idRegion,
      'ID_Place': idPlace,
    });
    if (response['status'] == 'success') {
      emit(DeleteOccupationSuccessState());
      getOccupation(id: idPlace2);
    } else {
      emit(DeleteOccupationErrorState());
    }
  }

  int num = 0;

  changeRadioBox({required int value}) {
    num = value;
    emit(ChangeRadioBoxState());
  }

  insertFile({
    required String name,
    required String address,
    required String owner,
    required String number,
    required String idCard,
    required String phone,
    required String date1,
    required String date2,
    required String choice,
    required String idOccupation,
    required File file,
    required File image,
    required File scan,
  }) async {
    emit(InsertFileLoadingState());

    var response = await _curd.postRequestWithFile(AppLink.insertFileLink, {
      'name': name,
      'address': address,
      'owner': owner,
      'number': number,
      'ID_Card': idCard,
      'phone': phone,
      'date1': date1,
      'date2': date2,
      'choice': choice,
      'ID_Occupancy': idOccupation,
    },file,image,scan);
    if (response['status'] == 'success') {
      emit(InsertFileSuccessState());
      if (kDebugMode) {
        print('success');
      }
    } else {
      emit(InsertFileErrorState());
    }
  }
  GetFilesName? facilities;
  getFilesData({required String idOccupation})async{
    facilities= null;
    emit(FilesDataLoadingState());
    var response = await _curd.postRequest(AppLink.getOccupationLink, {
      'ID_Occupancy': idOccupation,
    });
    if (response['status'] == 'success') {
      emit(FilesDataSuccessState());
      facilities = GetFilesName.fromJson(response);

    } else {
      if (kDebugMode) {
        print('error');
      }
      emit(FilesDataErrorState());
    }
  }
}
