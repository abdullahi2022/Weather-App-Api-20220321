/* Automatic Updates here are not done yet
Only Toronto API Call will populate the current image
*/
//
//Global Variables
//
void imagePrinting() {}//End imagePrinting
//
void testImagePrint() {
  PImage weatherImage = loadImage( imageURL(iconToronto) );
  image (weatherImage, 0, 0); //Simple Image Output without layout division or aspect ratio
  //Note: background of image is "not included", only forefround
}//End testImagePrint
