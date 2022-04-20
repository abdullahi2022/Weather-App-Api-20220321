// Global Variables
color black = 0;
float titleX, titleY, titleRectWidth, titleRectHeight;
float quitX, quitY, quitRectWidth, quitRectHeight;
float currentAPIX, currentAPIY, currentAPIRectWidth, currentAPIRectHeight;
float currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight;
float apiCallX1, apiCallY1, apiCallRectWidth1, apiCallRectHeight1; //Toronto
float apiCallX2, apiCallY2, apiCallRectWidth2, apiCallRectHeight2; //vancouver
float apiCallX3, apiCallY3, apiCallRectWidth3, apiCallRectHeight3; //Calgary

void GUI_Setup() {
  background(black); // Add dark mode
  //rect(X, Y, rectWidth, rectHeight); //Continue laying out rectangles according to your Case Study
  titleX = width*0;
  titleY = height*0;
  titleRectWidth = width*9/10;
  titleRectHeight = height*1/10;
  rect(titleX, titleY, titleRectWidth, titleRectHeight);
  //
  quitX = width * 9/10;
  quitY = height * 0;
  quitRectWidth = width * 1/10;
  quitRectHeight = height * 1/10;
  rect(quitX, quitY, quitRectWidth, quitRectHeight);
  //
  currentAPIX = width * 0;
  currentAPIY = height * 30/300;
  currentAPIRectWidth = width * 1;
  currentAPIRectHeight = height * 25/300;
  rect(currentAPIX, currentAPIY, currentAPIRectWidth, currentAPIRectHeight);
  // Toronto
  apiCallX1 = width * 0;
  apiCallY1 = height * 240/300;
  apiCallRectWidth1 = width * 1/3;
  apiCallRectHeight1 = height * 60/300;
  rect(apiCallX1, apiCallY1, apiCallRectWidth1, apiCallRectHeight1);
  // Vancouver
  apiCallX2 = width * 1/3;
  apiCallY2 = height * 240/300;
  apiCallRectWidth2 = width * 1/3;
  apiCallRectHeight2 = height * 60/300;
  rect(apiCallX2, apiCallY2, apiCallRectWidth2, apiCallRectHeight2);
  //London
  apiCallX3 = width * 2/3;
  apiCallY3 = height * 240/300;
  apiCallRectWidth3 = width * 1/3;
  apiCallRectHeight3 = height * 60/300;
  rect(apiCallX3, apiCallY3, apiCallRectWidth3, apiCallRectHeight3);
  //
  currentTempX = width * 1/6;
  currentTempY = height * 1/4;
  currentTempRectWidth = width * 1/2.8;
  currentTempRectHeight = height * 1/2.8;
  rect(currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight);
}
