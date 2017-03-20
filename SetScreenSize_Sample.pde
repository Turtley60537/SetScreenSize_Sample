//スクリーンサイズ変更の要素
Screen screen;

void setup(){
  size(400, 400);  
  screen = new Screen();
}

void draw(){
  //スクリーンサイズ変更
  if (screen.resizeWidthFlag || screen.resizeHeightFlag) {
    screen.changeSize();
  }
}

void mousePressed(){
  //スクリーンサイズの変更のため
  if (mouseByRightFrame()) {
    screen.rightPressed();
  }
  if (mouseByBottomFrame()) {
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

boolean mouseByBottomFrame() {
  return mouseY>height-20 && mouseY<=height;
}