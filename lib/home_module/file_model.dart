
class GetFilesName{
  String? status;
  List<Data> data=[];
  GetFilesName.fromJson(Map<String,dynamic> json){
    status=json['status'];
    json['data'].forEach((element){
      data.add(Data.fromJson(element));
    });
  }
}
class Data{
  String? id;
  String? nameFacility;
  Data.fromJson(Map<String,dynamic> json){
    id=json['ID'];
    nameFacility=json['name'];
  }
}