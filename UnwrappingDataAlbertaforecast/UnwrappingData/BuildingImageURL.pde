//Global Variables
//
String imageURL(String weatherIcon) {
  //
  //Local Variables
  String imageURL = "http://openweathermap.org/img/wn/";
  String clearSky = "01";
  String fewClouds = "02";
  String scatteredClouds = "03";
  String brokenClouds = "04";
  String showerRain = "09";
  String rain = "10";
  String thunderstorm = "11";
  String snow = "13";
  String mist = "50";
  String daytime = "d"; //API Key is PRIVATE so not included here
  String knighttime = "n";
  String fileExtensionPNG = ".png";
  //
  //Verification in Console, copy-paste variable output to Chrome and verifiy data
  //
  String imageNumber = weatherIcon; //Procedure might need to include String Functions to remove the "d" or "n"
  //
  //Time of Day for Night Mode is not complete yet
  //String time = daytime; //Procedure whatTimeMode()
  //
  //Play with this number in the browser to see what will be pulled from server
  // 20220406: only "2" and "4" worked
  String scale = "@2x"; //Procedure whatScale() //scale accoring to rect()-div, on smaller dimension
  //
  //Create Algorithm for Concatenation based on Booleans and numbers
  //Note time ... String currentImage = imageURL+imageNumber+time+scale+fileExtensionPNG;
  String currentImage = imageURL+imageNumber+scale+fileExtensionPNG; // time delievered by API Call
  //
  //Verify Image URL before loading into Image Variable
  //println("Image:", currentImage);
  //
  return currentImage; //Concatenated Image URL with current
}//End imageURL
