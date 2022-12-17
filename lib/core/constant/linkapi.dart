class AppLink {
  // ================================ Server Link ========================= //
  static const String serverLink = "http://localhost/windows_app";
  // ================================ Auth ========================= //
  static const String signinLink ="$serverLink/auth/signin.php";
  static const String signUpLink ="$serverLink/auth/signup.php";
  static const String getRegionLink ="$serverLink/region/getregion.php";
  static const String addRegionLink ="$serverLink/region/insertRegion.php";
  static const String deleteRegionLink ="$serverLink/region/deleteRegion.php";
  static const String getPlaceLink ="$serverLink/place/getPlace.php";
  static const String addPlaceLink ="$serverLink/place/insertPlace.php";
  static const String deletePlaceLink ="$serverLink/place/deletePlace.php";
  static const String getOccupationLink ="$serverLink/occupancy/getOccupancy.php";
  static const String insertOccupationLink ="$serverLink/occupancy/insertOccupancy.php";
  static const String deleteOccupationLink ="$serverLink/occupancy/deleteOccupancy.php ";
  static const String insertFileLink ="$serverLink/file/insertData.php";
}