// Petula Pascall

// background and heart images
PImage bg; 
PImage starburst;
PImage heart;

// geometric shapes size and rotate spin
int heart_size = 500;
float spin = 0.1;

// sound 
import processing.sound.*;
SoundFile soundfile;





void setup() {
  size(1000, 985, P3D);


  bg = loadImage("img/my_heart_bk.png");
  starburst = loadImage("img/starburst.png");
  heart = loadImage("img/heart.png");
  
  // Load and loop soundfile
  soundfile = new SoundFile(this, "img/day.aiff");
  soundfile.loop();
  // Back end useful data about the sound file
  println("SFSampleRate= " + soundfile.sampleRate() + " Hz");
  println("SFSamples= " + soundfile.frames() + " samples");
  println("SFDuration= " + soundfile.duration() + " seconds");

}



void draw() {

 //soundfile.amp(.5);
  background(117, 98, 200);
  background(bg);
  tint(255, 50);
  image(starburst, 15, 10, 1000, 900); 
  tint(255, 180);
  image(heart, 15, -10, 1000, 900); 


  if (!mousePressed) {
    lights();
    if (heart_size > 100) {
      heart_size = heart_size - 1;
    } else {
      heart_size ++;
    }
  }



  tint(0, 0);
  spin += 0.01;

  pushMatrix();
  translate(width/2, height/2-50, 0);
  rotateX(PI/9);
  rotateY(PI/5 + spin);
  stroke(255, 30);
  strokeWeight(2);
  box(heart_size+200);
  popMatrix();

  pushMatrix();
  translate(width/2, height/2-50, 0);
  rotateX(PI/8);
  rotateY(PI/5 + spin);
  noFill();
  stroke(255, 30);
  strokeWeight(2);
  sphere(heart_size);
  popMatrix();

  pushMatrix();
  translate(width/2, height/2-50, 0);
  rotateX(PI/8);
  rotateY(PI/5 + spin);
  noFill();
  stroke(255, 30);
  strokeWeight(2);
  sphere(heart_size+123);
  popMatrix();
  
  
  
}
