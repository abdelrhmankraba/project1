class Place{
  String? status;
  List<PlaceData> data=[];
  Place.fromJson(Map<String,dynamic>json){
    status = json['status'];
    json['data'].forEach((element){
      data.add(PlaceData.fromJson(element));
    });
  }
}
class PlaceData{
  String? id;
  String? name;
  String? idRegion;
  PlaceData.fromJson(Map<String,dynamic> json){
    id = json['ID'];
    name=json['name'];
    idRegion=json['ID_Region'];
  }
}
class Occupation{
  String? status;
  List<OccupationData> data=[];
  Occupation.fromJson(Map<String,dynamic>json){
    status = json['status'];
    json['data'].forEach((element){
      data.add(OccupationData.fromJson(element));
    });
  }
}
class OccupationData{
  String? id;
  String? name;
  String? idRegion;
  OccupationData.fromJson(Map<String,dynamic> json){
    id = json['ID'];
    name=json['name'];
    idRegion=json['ID_Region'];
  }
}