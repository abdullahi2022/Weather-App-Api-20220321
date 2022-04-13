//Global Variables
String URLCurrentAlberta;
String URLForecastAlberta;
String URLCurrentEdmonton;
String URLForecastEdmonton;
String URLCurrentCalgary;
String URLForecastCalgary;
String URLCurrentRedDeer;
String URLForecastRedDeer;
//
JSONObject jsonCurrentAlberta;
JSONObject jsonForecastAlberta;
JSONObject jsonCurrentEdmonton;
JSONObject jsonForecastEdmonton;
JSONObject jsonCurrentCalgary;
JSONObject jsonForecastCalgary;
JSONObject jsonCurrentRedDeer;
JSONObject jsonForecastRedDeer;
//
void buildingURL() {
  String baseURL = "http://api.openweathermap.org";
  String folder = "/";
  String weatherFolder = "data/2.5/";
  String currentWeather = "weather?";
  String forecastWeather = "forecast?";
  String id = "id=";
  String albertaID = "5883102";
  String EdmontonID = "5946768";
  String redDeerID = "6118158";
  String calgaryID = "5913490";
  String apiKey = "APPID=06ee4dfaf9a7c9bdf9024604eda99160"; //API Key is PRIVATE so not included here
  String and = "&";
  String mode = "mode=json";
  String unitMetic = "units=metric"; //Kelvin, Metric, or Imperial
  //
  URLCurrentAlberta = baseURL+folder+weatherFolder+currentWeather+id+albertaID+and+apiKey+and+mode+and+unitMetic;
  URLForecastAlberta = baseURL+folder+weatherFolder+forecastWeather+id+albertaID+and+apiKey+and+mode+and+unitMetic;
  URLCurrentEdmonton = baseURL+folder+weatherFolder+currentWeather+id+EdmontonID+and+apiKey+and+mode+and+unitMetic;
  URLForecastEdmonton = baseURL+folder+weatherFolder+forecastWeather+id+EdmontonID+and+apiKey+and+mode+and+unitMetic;
  URLCurrentCalgary = baseURL+folder+weatherFolder+currentWeather+id+calgaryID+and+apiKey+and+mode+and+unitMetic;
  URLForecastCalgary = baseURL+folder+weatherFolder+forecastWeather+id+calgaryID+and+apiKey+and+mode+and+unitMetic;
  URLCurrentRedDeer = baseURL+folder+weatherFolder+currentWeather+id+redDeerID+and+apiKey+and+mode+and+unitMetic;
  URLForecastRedDeer = baseURL+folder+weatherFolder+forecastWeather+id+redDeerID+and+apiKey+and+mode+and+unitMetic;
  //
  //Progress of Concatenation & Verification
  //println("Current Alberta", URLCurrentAlberta);
  println("Forecast Alberta", URLForecastAlberta);
  //println("Current Edmonton", URLCurrentEdmonton);
  //println("Forecast Edmonton", URLForecastEdmonton);
  //println("Current Calgary", URLCurrentCalgary);
  //println("Forecast Calgary", URLForecastCalgary);
  //println("Current RedDeer", URLCurrentRedDeer);
  //println("Forecast RedDeer", URLForecastRedDeer);
  //
}//End buildingURL
//
void APICall() {
  jsonCurrentAlberta = loadJSONObject(URLCurrentAlberta);
  jsonForecastAlberta = loadJSONObject(URLForecastAlberta);
  jsonCurrentEdmonton = loadJSONObject(URLCurrentEdmonton);
  jsonForecastEdmonton = loadJSONObject(URLForecastEdmonton);
  jsonCurrentCalgary = loadJSONObject(URLCurrentCalgary);
  jsonForecastCalgary = loadJSONObject(URLForecastCalgary);
  jsonCurrentRedDeer = loadJSONObject(URLCurrentRedDeer);
  jsonForecastRedDeer = loadJSONObject(URLForecastRedDeer);
  //Verification in Console, copy-paste variable output to Chrome and verifiy data
  //println("JSON Current Alberta", jsonCurrentAlberta);
  //println("JSON Forecast Alberta", jsonForecastAlberta); //"might be too big"
  //Complete the Rest
}//End APICall
