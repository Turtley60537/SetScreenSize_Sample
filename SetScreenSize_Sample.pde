//スクリーンサイズ変更の要素
boolean resizeFlag = false;
Screen screen;

void setup(){
  size(400, 700);  
  screen = new Screen();
}

void draw(){
  //スクリーンサイズ変更
  if (resizeFlag) {
    screen.changeSize();
  }
}

void mousePressed(){
  //スクリーンサイズの変更のため
  if (mouseByRightFrame()) {
    screen.rightPressed();
  }
  if (mouseByDownFrame()) {
    screen.downPressed();
  }
}

void mouseReleased(){
  //スクリーンサイズ変更終了
  screen.released();
}

boolean mouseByRightFrame() {
  return mouseX>width-20 && mouseX<=width;
}

boolean mouseByDownFrame() {
  return mouseY>height-20 && mouseY<=height;
}