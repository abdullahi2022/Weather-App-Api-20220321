//UnwrapToVariables
/* Code to Copy, use println() to verify

 CAUTION: must verify JSON Object from Browser Console or JSON Lint (Browser) to
 know the structure of how to unwrap varaibles. Examples are below

 Note: use APICall() Variables here, for example jsonCurrentToronto
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
String mainWeatherToronto, descriptionToronto, iconToronto, countryToronto, nameToronto;
float tempToronto, tempMinToronto, tempMaxToronto;
int sunriseToronto, sunsetToronto;
Date apiCurrentDateCall;
//
void unwrapToVariables() {
  println ("The JSON Toronto Object key:value pairs\n\n", jsonCurrentToronto); //Verifying how to unwrap JSON Toronto in Console
  currentToronto();
  println ("\n\nList of Variables\n");
  println ("The Weather in", nameToronto, countryToronto, "at", apiCurrentDateCall, "is...");
  //Note: the apiCurrentDateCall variable will need some String Functions to isolate the current time
  //  To be used for Night Mode and other time functions (CS 30 Topic)
  println (mainWeatherToronto, "specifically", descriptionToronto);
  println ("With this image", iconToronto);
  println ("The current temperature is", tempToronto);
  println ("With a high of", tempMaxToronto);
  println ("And a low of", tempMinToronto);
  println ("Sunrise is at", humanDate(sunriseToronto) );
  println ("Sunset is at", humanDate(sunsetToronto) );
  //
  //currentToronto();
  //currentVancouver();
  //currentLondon();
  //forecastToronto();
  //forecastVancouver();
  //forecastLondon();

}//End unwrapToVariables
//
//This Procedure is used mutliple times above and below
Date humanDate(long unixTime) {
  Date dateHuman = new Date(unixTime*1000); //convert from milliseconds
  return dateHuman;
}
//
void currentToronto() {
  //
  //Object Unwrapping
  JSONObject mainToronto = jsonCurrentToronto.getJSONObject("main"); //Unwrap {}
  tempToronto = mainToronto.getFloat("temp");
  tempMinToronto = mainToronto.getFloat("temp_min");
  tempMaxToronto = mainToronto.getFloat("temp_max");
  //
  //Array List Unwrapping (Array with Object)
  JSONArray weatherToronto = jsonCurrentToronto.getJSONArray("weather"); //Unwrapping
  JSONObject allToronto = weatherToronto.getJSONObject(0); //Unwrap {}
  mainWeatherToronto = allToronto.getString("main");
  descriptionToronto = allToronto.getString("description");
  iconToronto = allToronto.getString("icon");
  //
  //Access Time of Call, UNIX Time Stamp, January 1, 1970
  long apiCallTimeToronto = jsonCurrentToronto.getInt("dt"); //int not enough memory, needs long (i.e. float & double)
  apiCurrentDateCall = humanDate(apiCallTimeToronto);
  //
  JSONObject sysToronto = jsonCurrentToronto.getJSONObject("sys"); //Unwrap {}
  countryToronto = sysToronto.getString("country");
  sunriseToronto = sysToronto.getInt("sunrise");
  sunsetToronto = sysToronto.getInt("sunset");
  //
  nameToronto = jsonCurrentToronto.getString("name");
  //
}//End currentToronto
//
void currentVancouver() {
}//End currentVancouver
//
void currentLondon() {
}//End currentLondon
//
void forecastToronto() {
}//End forecastToronto
//
void forecastVancouver() {
}//End forecastVancouver
//
void forecastLondon() {
}//End forecastLondon
//
