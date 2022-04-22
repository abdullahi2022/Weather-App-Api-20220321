//global variables
String URLCurrentToronto;
String URLForecastToronto;
String URLCurrentVancouver;
String URLForecastVancouver;
String URLCurrentLondon;
String URLForecastLondon;
//
JSONObject jsonCurrentToronto;
JSONObject jsonForecastToronto;
JSONObject jsonCurrentVancouver;
JSONObject jsonForecastVancouver;
JSONObject jsonCurrentLondon;
JSONObject jsonForecastLondon;
//
void buildingURL() {
 String baseURL = "http://api.openweathermap.org";
 String folder = "/";
 String weatherFolder = "data/2.5/";
 String currentWeather = "weather?";
 String forecastWeather = "forecast?";
 String id = "id=";
 String TorontoID = "6167865";
 String VancouverID = "6173331";
 String LondonID = "1006984";
 String apiKey = "APPID=975e8a2c975084d504f48927ab655624";
 String and = "&";
 String mode = "mode=json";
 String unitMetic = "units=metric"; //Kelvin, Metric, or Imperial
 //
 URLCurrentToronto = baseURL+folder+weatherFolder+currentWeather+id+TorontoID+and+apiKey+and+mode+and+unitMetic;
 URLForecastToronto = baseURL+folder+weatherFolder+forecastWeather+id+TorontoID+and+apiKey+and+mode+and+unitMetic;
 URLCurrentVancouver = baseURL+folder+weatherFolder+currentWeather+id+VancouverID+and+apiKey+and+mode+and+unitMetic;
 URLForecastVancouver = baseURL+folder+weatherFolder+forecastWeather+id+VancouverID+and+apiKey+and+mode+and+unitMetic;
 URLCurrentLondon = baseURL+folder+weatherFolder+currentWeather+id+LondonID+and+apiKey+and+mode+and+unitMetic;
 URLForecastLondon = baseURL+folder+weatherFolder+forecastWeather+id+LondonID+and+apiKey+and+mode+and+unitMetic;
 //
 //Progress of Concatenation & Verification
 //println("Current Toronto", URLCurrentToronto);
  //println("Forecast Toronto", URLForecastToronto);
  //println("Current Vancouver", URLCurrentVancouver);
  //println("Forecast Vancouver", URLForecastVancouver);
  //println("Current London", URLCurrentLondon);
  //println("Forecast London", URLForecastLondon);
}//End buildingURL

void APICall() {
  jsonCurrentToronto = loadJSONObject(URLCurrentToronto);
  jsonForecastToronto = loadJSONObject(URLForecastToronto);
  jsonCurrentVancouver = loadJSONObject(URLCurrentVancouver);
  jsonForecastVancouver = loadJSONObject(URLForecastVancouver);
  jsonCurrentLondon = loadJSONObject(URLCurrentLondon);
  jsonForecastLondon = loadJSONObject(URLForecastLondon);
}//End APICall

//Loading JSONObjects with Website API Data
