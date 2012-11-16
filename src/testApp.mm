#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
	ofSetBackgroundAuto(true);
	// initialize the accelerometer
	ofxAccelerometer.setup();
	
	//If you want a landscape oreintation 
	//iPhoneSetOrientation(OFXIPHONE_ORIENTATION_LANDSCAPE_RIGHT);
	
	ofBackground(0);
	str = L"我是香港人" ;
	font.loadFont("LiHei.ttf", ofGetHeight(), true);
}

//--------------------------------------------------------------
void testApp::update(){

}

//--------------------------------------------------------------
void testApp::draw(){
	ofSetColor(255);
	font.drawString(str, ofGetWidth() - ( (ofGetFrameNum()*30) % int(font.getStringBoundingBox(str, 0,0).width + ofGetWidth())), ofGetHeight());
	
	
	char s[256];
	sprintf(s, "x = %f, y = %f", ofxAccelerometer.getForce().x, ofxAccelerometer.getForce().y);
	ofDrawBitmapString(s, 20,20);
}

//--------------------------------------------------------------
void testApp::exit(){

}

//--------------------------------------------------------------
void testApp::touchDown(ofTouchEventArgs & touch){
	
}

//--------------------------------------------------------------
void testApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void testApp::lostFocus(){

}

//--------------------------------------------------------------
void testApp::gotFocus(){

}

//--------------------------------------------------------------
void testApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void testApp::deviceOrientationChanged(int newOrientation){

}

