//UnwrapToVariables
/* Code to Copy, use println() to verify

 CAUTION: must verify JSON Object from Browser Console or JSON Lint (Browser) to
 know the structure of how to unwrap varaibles. Examples are below

 Note: use APICall() Variables here, for example jsonCurrentAlberta
 Caution: variables should be a mix of global and local variables

 JSONArray weather = jsonObject-Variable.getJSONArray("weather"); //Unwrapping

 JSONObject all = weather.getJSONObject(0); //Unwrap {}
 String mainWeather = all.getString("main");
 String description = all.getString("description");
 String icon = all.getString("icon");

 JSONObject main = jsonObject-Variable.getJSONObject("main"); //Unwrap {}
 float temp = main.getFloat("temp");
 float tempMin = main.getFloat("temp_min");
 float tempMax = main.getFloat("temp_max");

 int apiCallTime = jsonObject-Variable.getInt("dt");

 JSONObject sys = jsonObject-Variable.getJSONObject("sys"); //Unwrap {}
 String country = sys.getString("country");
 int sunrise = sys.getInt("sunrise");
 int sunset = sys.getInt("sunset");

 String name = jsonObject-Variable.getString("name");

 */
//
//Library
import java.util.Date; //Date Conversation, UNIX Time Stamp from Jan 1, 1970
//
//Global Variables
String mainWeatherAlberta, descriptionAlberta, iconAlberta, countryAlberta, nameAlberta;
float tempAlberta, tempMinAlberta, tempMaxAlberta, feelsLike;
int sunriseAlberta, sunsetAlberta;
Date apiCurrentDateCall;
//
void unwrapToVariables() {
  //println ("The JSON Alberta Object key:value pairs\n\n", jsonCurrentAlberta); //Verifying how to unwrap JSON Alberta in Console
  currentAlberta();
  //println ("\n\nList of Variables\n");
  //println ("The Weather in", nameAlberta, countryAlberta, "at", apiCurrentDateCall, "is...");
  //Note: the apiCurrentDateCall variable will need some String Functions to isolate the current time
  //  To be used for Night Mode and other time functions (CS 30 Topic)
  //println (mainWeatherAlberta, "specifically", descriptionAlberta);
  //println ("With this image", iconAlberta);
  //println ("The current temperature is", tempAlberta);
  //println ("With a high of", tempMaxAlberta);
  //println ("And a low of", tempMinAlberta);
  //println("This feels like", feelsLike);
  //println ("Sunrise is at", humanDate(sunriseAlberta) );
  //println ("Sunset is at", humanDate(sunsetAlberta) );
  //
  //currentEdmonton();
  //currentCalgary();
  //currentRedDeer();
  //
  forecastAlberta();
  //
  //forecastEdmonton();
  //forecastCalgary();
  //forecastRedDeer();
}//End unwrapToVariables
//
//This Procedure is used mutliple times above and below
Date humanDate(long unixTime) {
  Date dateHuman = new Date(unixTime*1000); //convert from milliseconds
  return dateHuman;
}
//
void currentAlberta() {
  //
  //Object Unwrapping
  JSONObject mainAlberta = jsonCurrentAlberta.getJSONObject("main"); //Unwrap {}
  tempAlberta = mainAlberta.getFloat("temp");
  tempMinAlberta = mainAlberta.getFloat("temp_min");
  tempMaxAlberta = mainAlberta.getFloat("temp_max");
  feelsLike = mainAlberta.getFloat("feels_like");
  //
  //Array List Unwrapping (Array with Object)
  JSONArray weatherAlberta = jsonCurrentAlberta.getJSONArray("weather"); //Unwrapping
  JSONObject allAlberta = weatherAlberta.getJSONObject(0); //Unwrap {}
  mainWeatherAlberta = allAlberta.getString("main");
  descriptionAlberta = allAlberta.getString("description");
  iconAlberta = allAlberta.getString("icon");
  //
  //Access Time of Call, UNIX Time Stamp, January 1, 1970
  long apiCallTimeAlberta = jsonCurrentAlberta.getInt("dt"); //int not enough memory, needs long (i.e. float & double)
  apiCurrentDateCall = humanDate(apiCallTimeAlberta);
  //
  JSONObject sysAlberta = jsonCurrentAlberta.getJSONObject("sys"); //Unwrap {}
  countryAlberta = sysAlberta.getString("country");
  sunriseAlberta = sysAlberta.getInt("sunrise");
  sunsetAlberta = sysAlberta.getInt("sunset");
  //
  nameAlberta = jsonCurrentAlberta.getString("name");
  //
}//End currentAlberta
//
void currentEdmonton() {
}//End currentEdmonton
//
void currentCalgary() {
}//End currentCalgary
//
void currentRedDeer() {
}//End currentRedDeer
//
void forecastAlberta() {
  //Array List Unwrapping (Array with Object)
  JSONArray weatherAlberta = jsonForecastAlberta.getJSONArray("list"); //Unwrapping
  //
  //Note: about elements of this LIST, see INTEGERS below validated in next two test lines
  //JSONObject allAlberta = weatherAlberta.getJSONObject(INTEGER); //Unwrap {}
  //println(allAlberta);
  // "0": 9 hours ahead, then in increments of every three hours for each integer
  // "5": 24 hours ahead, or 1 days
  // "13": 48 hours ahead, or 2 days (+8)
  // "21": 72 hours ahead, or 3 days (+8)
  // "29": ?? hours ahead, or 4 days (+8)
  // "37": ?? hours ahead, or 5 days (+8)
  // "38": ?? hours ahead, or 5 days + 3 hours
  // "39": ?? hours ahead, or 5 days + 6 hours
  // "39" is last integer or element, thus 40 total elements
  //Unwrapping Forecast Data: Array List Elements by Integer
  //
  int currentTimeInt = 5; //An algorithm exists to find the 3AM, 6AM, 9AM, 12 based on the current time
  // changing the starting index will give you a specific time temp AM or PM into the future
  int j=0; //reseting the numbering for the arrays below
  int futureElements = 6;
  String[] time = new String [futureElements];
  String[] weatherMain = new String [futureElements];
  String[] weatherDescription = new String [futureElements];
  String[] icon = new String [futureElements];
  float[] temp = new float [futureElements];
  float[] feelsLike = new float [futureElements];
  float[] tempMin = new float [futureElements];
  float[] tempMax = new float [futureElements];
  for (int i=currentTimeInt; i<40; i+=8) {
    JSONObject allAlberta = weatherAlberta.getJSONObject(i); //Unwrap {}
    time[j] = allAlberta.getString("dt_txt");
    //
    JSONObject main = allAlberta.getJSONObject("main");
    temp[j] = main.getFloat("temp");
    feelsLike[j] = main.getFloat("feels_like");
    tempMin[j] = main.getFloat("temp_min");
    tempMax[j] = main.getFloat("temp_max");
    //
    JSONArray weather = allAlberta.getJSONArray("weather");
    JSONObject allWeather = weather.getJSONObject(0);
    weatherMain[j] = allWeather.getString("main");
    weatherDescription[j] = allWeather.getString("description");
    icon[j] = allWeather.getString("icon");
    //
    println("\nTime Stamp", j, time[j]);
    println("The weather will be", weatherMain[j], "or specifically", weatherDescription[j]);
    println("Using the weather icon", icon[j]);
    println("Projected Temperature at this time", temp[j], "inbetween", tempMin[j], "and", tempMax[j]);
    println("Which feels like", feelsLike[j]);
    j++;
  }

  //mainWeatherAlberta = allAlberta.getString("main");
  //descriptionAlberta = allAlberta.getString("description");
  //iconAlberta = allAlberta.getString("icon");
}//End forecastAlberta
//
void forecastEdmonton() {
}//End forecastEdmonton
//
void forecastCalgary() {
}//End forecastCalgary
//
void forecastRedDeer() {
}//End forecastRedDeer
//
