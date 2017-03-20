class Screen {
  int distX, distY, screenRight, screenBottom;
  boolean resizeWidthFlag  = false;
  boolean resizeHeightFlag  = false;

  //スクリーンサイズを変更
  void changeSize() {
    if (resizeWidthFlag) {
      screenRight = mouseX + distX;

      if (!resizeHeightFlag) screenBottom = height;
      if (screenRight <= 150) screenRight = 150;
      if (screenRight >= 400) screenRight = 400;
    }
    if (resizeHeightFlag) {
      screenBottom = mouseY + distY;
      
      if (!resizeWidthFlag) screenRight = width;
      if (screenBottom <= 150) screenBottom = 150;
      if (screenBottom >= 400) screenBottom = 400;
    }
    surface.setSize(screenRight, screenBottom);
  }

  //右端クリック
  void rightPressed() {
    distX = width-mouseX;
    resizeWidthFlag = true;
  }

  //下端クリック
  void downPressed() {
    distY = height-mouseY;
    resizeHeightFlag = true;
  }
  
  //サイズ変更終了
  void released() {
    if (resizeWidthFlag)  resizeWidthFlag  = false;
    if (resizeHeightFlag) resizeHeightFlag = false;
  }
}