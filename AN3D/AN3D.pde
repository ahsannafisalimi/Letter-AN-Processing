float pitch = 0;
float yaw = 0;
float roll = 0;
boolean upPressed, downPressed, leftPressed, rightPressed, ltPressed, gtPressed;
PShape Ahsan;

void setup() {
  size(1000, 800, P3D);
  Ahsan = createShape(GROUP);
  
  //Huruf A
  PShape Adepan = createShape();
  Adepan.beginShape();
  Adepan.vertex(100, 0, 0);
  Adepan.vertex(0, 300, 0);  
  Adepan.vertex(60, 300, 0);  
  Adepan.vertex(130, 70, 0);
  Adepan.vertex(200, 300, 0);
  Adepan.vertex(260, 300, 0);
  Adepan.vertex(160, 0, 0);
  Adepan.endShape(CLOSE);
  
  PShape Ahorizontaldepan = createShape();
  Ahorizontaldepan.beginShape();
  Ahorizontaldepan.vertex(100, 170, 0);
  Ahorizontaldepan.vertex(81, 230, 0);
  Ahorizontaldepan.vertex(179, 230, 0);
  Ahorizontaldepan.vertex(160, 170, 0);
  Ahorizontaldepan.endShape(CLOSE);
  
  PShape Abelakang = createShape();
  Abelakang.beginShape();
  Abelakang.vertex(100, 0, -50);
  Abelakang.vertex(0, 300, -50);  
  Abelakang.vertex(60, 300, -50);  
  Abelakang.vertex(130, 70, -50);
  Abelakang.vertex(200, 300, -50);
  Abelakang.vertex(260, 300, -50);
  Abelakang.vertex(160, 0, -50);
  Abelakang.endShape(CLOSE);
  
  PShape Ahorizontalbelakang = createShape();
  Ahorizontalbelakang.beginShape();
  Ahorizontalbelakang.vertex(100, 170, -50);
  Ahorizontalbelakang.vertex(81, 230, -50);
  Ahorizontalbelakang.vertex(179, 230, -50);
  Ahorizontalbelakang.vertex(160, 170, -50);
  Ahorizontalbelakang.endShape(CLOSE);
  
  //Mengatur ketebalan atau lebar dari huruf 3d
  PShape A1 = createShape();
  A1.beginShape();
  addDepth(A1, 100, 0, 0, 0, 300, 0, 0, 300, -50, 100, 0, -50);
  A1.endShape(CLOSE);
   
  PShape A2 = createShape();
  A2.beginShape();
  addDepth(A2, 0, 300, 0, 60, 300, 0, 60, 300, -50, 0, 300, -50);
  A2.endShape(CLOSE);
 
  PShape A3 = createShape();
  A3.beginShape();
  addDepth(A3, 60, 300, 0, 130, 70, 0, 130, 70, -50, 60, 300, -50);
  A3.endShape(CLOSE);
  
  PShape A4 = createShape();
  A4.beginShape();
  addDepth(A4, 130, 70, 0, 200, 300, 0, 200, 300, -50, 130, 70, -50);
  A4.endShape(CLOSE);
  
  PShape A5 = createShape();
  A5.beginShape();
  addDepth(A5, 200, 300, 0, 260, 300, 0, 260, 300, -50, 200, 300, -50);
  A5.endShape(CLOSE);
  
  PShape A6 = createShape();
  A6.beginShape();
  addDepth(A6, 260, 300, 0, 160, 0, 0, 160, 0, -50, 260, 300, -50);
  A6.endShape(CLOSE);
  
  PShape A7 = createShape();
  A7.beginShape();
  addDepth(A7, 160, 0, 0, 100, 0, 0, 100, 0, -50, 160, 0, -50);
  A7.endShape(CLOSE);
  
  PShape A8 = createShape();
  A8.beginShape();
  addDepth(A8, 100, 170, 0, 160, 170, 0, 160, 170, -50, 100, 170, -50);
  A8.endShape(CLOSE);
  
  PShape A9 = createShape();
  A9.beginShape();
  addDepth(A9, 81, 230, 0, 179, 230, 0, 179, 230, -50, 81, 230, -50);
  A9.endShape(CLOSE);
  
  Ahsan.addChild(Adepan);
  Ahsan.addChild(Ahorizontaldepan);
  Ahsan.addChild(Abelakang);
  Ahsan.addChild(Ahorizontalbelakang);
  Ahsan.addChild(A1);
  Ahsan.addChild(A2);
  Ahsan.addChild(A3);
  Ahsan.addChild(A4);
  Ahsan.addChild(A5);
  Ahsan.addChild(A6);
  Ahsan.addChild(A7);
  Ahsan.addChild(A8);
  Ahsan.addChild(A9);
  
  // Huruf N
  PShape Ndepan = createShape();
  Ndepan.beginShape();
  Ndepan.vertex(290, 0, 0);
  Ndepan.vertex(290, 300, 0);
  Ndepan.vertex(350, 300, 0);
  Ndepan.vertex(350, 120, 0);
  Ndepan.vertex(455, 300, 0);
  Ndepan.vertex(515, 300, 0);
  Ndepan.vertex(515, 0, 0);
  Ndepan.vertex(455, 0, 0);
  Ndepan.vertex(455, 180, 0);
  Ndepan.vertex(350, 0, 0);
  Ndepan.endShape(CLOSE);
  
  PShape Nbelakang = createShape();
  Nbelakang.beginShape();
  Nbelakang.vertex(290, 0, -50);
  Nbelakang.vertex(290, 300, -50);
  Nbelakang.vertex(350, 300, -50);
  Nbelakang.vertex(350, 120, -50);
  Nbelakang.vertex(455, 300, -50);
  Nbelakang.vertex(515, 300, -50);
  Nbelakang.vertex(515, 0, -50);
  Nbelakang.vertex(455, 0, -50);
  Nbelakang.vertex(455, 180, -50);
  Nbelakang.vertex(350, 0, -50);
  Nbelakang.endShape(CLOSE);
  
  PShape N1 = createShape();
  N1.beginShape();
  addDepth(N1, 290, 0, 0, 290, 300, 0, 290, 300, -50, 290, 0, -50);
  N1.endShape(CLOSE);
  
  PShape N2 = createShape();
  N2.beginShape();
  addDepth(N2, 290, 300, 0, 350, 300, 0, 350, 300, -50, 290, 300, -50);
  N2.endShape(CLOSE);
  
  PShape N3 = createShape();
  N3.beginShape();
  addDepth(N3, 350, 300, 0, 350, 120, 0, 350, 120, -50, 350, 300, -50);
  N3.endShape(CLOSE);
  
  PShape N4 = createShape();
  N4.beginShape();
  addDepth(N4, 350, 120, 0, 455, 300, 0, 455, 300, -50, 350, 120, -50);
  N4.endShape(CLOSE);
  
  PShape N5 = createShape();
  N5.beginShape();
  addDepth(N5, 455, 300, 0, 515, 300, 0, 515, 300, -50, 455, 300, -50);
  N5.endShape(CLOSE);
  
  PShape N6 = createShape();
  N6.beginShape();
  addDepth(N6, 515, 300, 0, 515, 0, 0, 515, 0, -50, 515, 300, -50);
  N6.endShape(CLOSE);
  
  PShape N7 = createShape();
  N7.beginShape();
  addDepth(N7, 515, 0, 0, 455, 0, 0, 455, 0, -50, 515, 0, -50);
  N7.endShape(CLOSE);
  
  PShape N8 = createShape();
  N8.beginShape();
  addDepth(N8, 455, 0, 0, 455, 180, 0, 455, 180, -50, 455, 0, -50);
  N8.endShape(CLOSE);
  
  PShape N9 = createShape();
  N9.beginShape();
  addDepth(N9, 455, 180, 0, 350, 0, 0, 350, 0, -50, 455, 180, -50);
  N9.endShape(CLOSE);
  
  PShape N10 = createShape();
  N10.beginShape();
  addDepth(N10, 350, 0, 0, 290, 0, 0, 290, 0, -50, 350, 0, -50);
  N10.endShape(CLOSE);
  
  Ahsan.addChild(Ndepan);
  Ahsan.addChild(Nbelakang);
  Ahsan.addChild(N1);
  Ahsan.addChild(N2);
  Ahsan.addChild(N3);
  Ahsan.addChild(N4);
  Ahsan.addChild(N5);
  Ahsan.addChild(N6);
  Ahsan.addChild(N7);
  Ahsan.addChild(N8);
  Ahsan.addChild(N9);
  Ahsan.addChild(N10);
 
  centerObject(Ahsan);
}

void draw() {
  translate(width/2, height/2, 0);
  background(220);
  noStroke();
  
  if (upPressed) {
    pitch -= radians(1);
  }
  if (downPressed) {
    pitch += radians(1);
  }
  if (leftPressed) {
    yaw -= radians(1);
  }
  if (rightPressed) {
    yaw += radians(1);
  }
  
  if (ltPressed) {
    roll -= radians(1);
  }
  if (gtPressed) {
    roll += radians(1);
  }

  pitch = pitch % TWO_PI;
  yaw = yaw % TWO_PI;
  roll = roll % TWO_PI;
  
  rotateX(pitch);
  rotateY(yaw);
  rotateZ(roll);
  shape(Ahsan);
}

void keyPressed() {
  if (key == 'w') {
    upPressed = true;
  }
  if (key == 's') {
    downPressed = true;
  }
  if (key == 'a') {
    leftPressed = true;
  }
  if (key == 'd') {
    rightPressed = true;
  }
  if (key == 'q') {
    ltPressed = true;
  }
  if (key == 'e') {
    gtPressed = true;
  }
}

void keyReleased() {
  if (key == 'w') {
    upPressed = false;
  }
  if (key == 's') {
    downPressed = false;
  }
  if (key == 'a') {
    leftPressed = false;
  }
  if (key == 'd') {
    rightPressed = false;
  }
  if (key == 'q') {
    ltPressed = false;
  }
  if (key == 'e') {
    gtPressed = false;
  }
}

void addDepth(PShape AN, float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, float x4, float y4, float z4){
  AN.vertex(x1, y1, z1);
  AN.vertex(x2, y2, z2);
  AN.vertex(x3, y3, z3);
  AN.vertex(x4, y4, z4);
  AN.vertex(x1, y1, z1);
}

void centerObject(PShape obj) {
  float minX = Float.MAX_VALUE;
  float minY = Float.MAX_VALUE;
  float minZ = Float.MAX_VALUE;
  float maxX = Float.MIN_VALUE;
  float maxY = Float.MIN_VALUE;
  float maxZ = Float.MIN_VALUE;
  
  for (int i = 0; i < obj.getChildCount(); i++) {
    PShape child = obj.getChild(i);
    for (int j = 0; j < child.getVertexCount(); j++) {
      PVector v = child.getVertex(j);
      minX = min(minX, v.x);
      minY = min(minY, v.y);
      minZ = min(minZ, v.z);
      maxX = max(maxX, v.x);
      maxY = max(maxY, v.y);
      maxZ = max(maxZ, v.z);
    }
  }
  
  float centerX = (minX + maxX) / 2;
  float centerY = (minY + maxY) / 2;
  float centerZ = (minZ + maxZ) / 2;
  
  obj.resetMatrix();
  obj.translate(-centerX, -centerY, -centerZ);
}
