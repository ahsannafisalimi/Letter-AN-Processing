PShape Ahsan;
float tx = -250, ty = -125; // Translasi
float angle = 0; // Rotasi
float scaleFactor = 1; // Scaling
boolean mirror = false; // Mirroring
float speed = 2; // Kecepatan translasi
float angleSpeed = PI / 180; // Kecepatan rotasi
float scaleSpeed = 0.01; // Kecepatan scaling
boolean mPressed = false; // Status tombol 'm'

void setup() {
  size(1000, 800);
  Ahsan = createShape(GROUP);
  PShape Ahsan1 = createShape();
  Ahsan1.beginShape();
  // Membuat huruf "A" besar menggunakan vertex
  Ahsan1.vertex(100, 0);
  Ahsan1.vertex(0, 300);  
  Ahsan1.vertex(60, 300);  
  Ahsan1.vertex(130, 70);
  Ahsan1.vertex(200, 300);
  Ahsan1.vertex(260, 300);
  Ahsan1.vertex(160, 0);
  Ahsan1.endShape(CLOSE);

  // Membuat garis horizontal di tengah huruf "A"
  PShape Ahsan2 = createShape();
  Ahsan2.beginShape();
  Ahsan2.vertex(100, 170);
  Ahsan2.vertex(81, 230);
  Ahsan2.vertex(179, 230);
  Ahsan2.vertex(160, 170);
  Ahsan2.endShape(CLOSE);
  
  PShape Nafis = createShape();
  Nafis.beginShape();
  Nafis.vertex(290, 0);
  Nafis.vertex(290, 300);
  Nafis.vertex(350, 300);
  Nafis.vertex(350, 120);
  Nafis.vertex(455, 300);
  Nafis.vertex(515, 300);
  Nafis.vertex(515, 0);
  Nafis.vertex(455, 0);
  Nafis.vertex(455, 180);
  Nafis.vertex(350, 0);
  Nafis.endShape(CLOSE);

  // Menggabungkan shape
  Ahsan.addChild(Ahsan1);
  Ahsan.addChild(Ahsan2);
  Ahsan.addChild(Nafis);
}

void draw() {
  background(220);
  
  // Periksa tombol yang ditekan dan sesuaikan transformasi
  if (keyPressed) {
    if (key == 'w') {
      ty -= speed; // Translasi ke atas
    } else if (key == 's') {
      ty += speed; // Translasi ke bawah
    } else if (key == 'a') {
      tx -= speed; // Translasi ke kiri
    } else if (key == 'd') {
      tx += speed; // Translasi ke kanan
    } else if (key == 'e') {
      angle += angleSpeed; // Rotasi searah jarum jam
    } else if (key == 'q') {
      angle -= angleSpeed; // Rotasi berlawanan arah jarum jam
    } else if (key == 'z') {
      scaleFactor += scaleSpeed; // Perbesar ukuran
    } else if (key == 'x') {
      scaleFactor -= scaleSpeed; // Perkecil ukuran
    } else if (key == 'm' && !mPressed) {
      mirror = !mirror; // Aktifkan/Nonaktifkan mirroring
      mPressed = true; // Set mPressed menjadi true
    }
  } else {
    mPressed = false; // Set mPressed menjadi false saat tidak ada tombol ditekan
  }
  
  translate(width / 2 + tx, height / 2 + ty); // Translasi
  rotate(angle); // Rotasi
  scale(scaleFactor, mirror ? -scaleFactor : scaleFactor); // Scaling dan Mirroring
  
  shape(Ahsan, 0, 0); // Menampilkan huruf "A"
}
