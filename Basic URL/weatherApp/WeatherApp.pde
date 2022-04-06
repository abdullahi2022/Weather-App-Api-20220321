String baseURL = "http://api.openweathermap.org";
String folder = "/";
String weatherFolder = "data/2.5/";
String currentWeather = "weather?";
String forecastWeather = "forecast?";
String id = "id=";
String TorontoID = "6167865";
String VancouverID = "6173331";
String LondonID = "2643743";
String apiKey = "APPID=9f7b8108e7aa1be51da4d0de6d012171";
String and = "&";
String mode = "mode=json";
String unitMetic = "unitMetric"; //kelvin, Metic, orImperial
//
//
//Verification in Console, copy-paste variable output to Chrome and verifiy data
String URLCurrentToronto = baseURL+folder+weatherFolder+currentWeather+id+TorontoID+apiKey+and+mode+and+unitMetic;
String URLForecastToronto = baseURL+folder+weatherFolder+forecastWeather+id+TorontoID+apiKey+and+mode+and+unitMetic;
String URLCurrentVancouver = baseURL+folder+weatherFolder+currentWeather+id+VancouverID+and+apiKey+and+mode+and+unitMetic;
String URLForecastVancouver = baseURL+folder+weatherFolder+forecastWeather+id+VancouverID+and+apiKey+and+mode+and+unitMetic;
String URLCurrentLondon = baseURL+folder+weatherFolder+currentWeather+id+LondonID+and+apiKey+and+mode+and+unitMetic;
String URLForecasLondon = baseURL+folder+weatherFolder+forecastWeather+id+londonID+and+apiKey+and+mode+and+unitMetic;

//Progress of Concatenation & Verification
println("Current Toronto", URLCurrentToronto);
println("Forecast Toronto", URLForecastToronto);
println("Current Vancouver", URLCurrentVancouver);
println("Forecast Vancouver", URLForecastVancouver);
println("Current London", URLCurrentLondon);
println("Forecast London", URLForecastLondon);
//
//
JSONObject jsonCurrentToronto = loadJSONObject(URLCurrentToronto);
JSONObject jsonCurrentVancouver = loadJSONObject(URLCurrentVancouver);
JSONObject jsonCurrentLondon = loadJSONObject(URLCurrentLondon);
//Complete the rest
//
//Verification in Console
println("JSON Current Toronto", jsonCurrentToronto);
println("JSON Current vancouver", jsonCurrentVancouver);
println("JSON Current London", jsonCurrentLondon);
//Complete the Rest
