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
String daytime = "d";
String knighttime = "n";
String fileExtensionPNG = ".png";
//
//Verification in Console, copy-paste variable output to Chrome and verifiy data
//
//Keyboard input to choose image number ... simulates reading JSON unwrapping
String imageNumber = clearSky; //Procedure whatImage()
String time = daytime; //Procedure whatTimeMode()
//Play with this number in the browser to see what will be pulled from server
// 20220406: only "2" and "4" worked
String scale = "@2x"; //Procedure whatScale() //scale accoring to rect()-div, on smaller dimension
//
//Create Algorithm for Concatenation based on Booleans and numbers
String currentImage = imageURL+imageNumber+time+scale+fileExtensionPNG;
//
//Verify Image URL before loading into Image Variable
println("Image:", currentImage);
//
PImage weatherImage = loadImage(currentImage);
size (300, 300); //Simple Canvas without any display checking
image (weatherImage, 0, 0); //Simple Image Output without layout division or aspect ratio
//Note: background of image is "not included", only forefround
