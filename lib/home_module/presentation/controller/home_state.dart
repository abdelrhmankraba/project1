part of 'home_cubit.dart';

abstract class HomeState {
  const HomeState();
}

class HomeInitialState extends HomeState {}

class RegionLoadingState extends HomeState {}

class RegionSuccessState extends HomeState {}

class RegionErrorState extends HomeState {}

class InsertRegionLoadingState extends HomeState {}

class InsertRegionSuccessState extends HomeState {}

class InsertRegionErrorState extends HomeState {}

class DeleteRegionSuccessState extends HomeState {}

class DeleteRegionErrorState extends HomeState {}

class PlaceLoadingState extends HomeState {}

class PlaceSuccessState extends HomeState {}

class PlaceErrorState extends HomeState {}

class InsertPlaceLoadingState extends HomeState {}

class InsertPlaceSuccessState extends HomeState {}

class InsertPlaceErrorState extends HomeState {}

class DeletePlaceSuccessState extends HomeState {}

class DeletePlaceErrorState extends HomeState {}

class OccupationLoadingState extends HomeState {}

class OccupationSuccessState extends HomeState {}

class OccupationErrorState extends HomeState {}

class InsertOccupationLoadingState extends HomeState {}

class InsertOccupationSuccessState extends HomeState {}

class InsertOccupationErrorState extends HomeState {}

class DeleteOccupationSuccessState extends HomeState {}

class DeleteOccupationErrorState extends HomeState {}
class ChangeRadioBoxState extends HomeState {}
