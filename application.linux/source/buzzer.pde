import ddf.minim.*;

boolean buzzered = false;
AudioPlayer player;
Minim m = new Minim(this);

void setup() {
  size(screen.width, screen.height);
  
  player = m.loadFile ("buzzer.wav");
}

void draw() {
  if (!buzzered) {
   fill(0,0,0);
   rect(0, 0, screen.width, screen.height); 
  }
  
}

void keyPressed() {

  println(keyCode);
  if (keyCode == 97 && !buzzered) {
    player.play();
    fill(255,0,0);
    rect(0, 0, screen.width, screen.height);
    buzzered = true;
    
  }
    if (keyCode == 98 && !buzzered) {
     player.play();
    fill(0,0,255);
    rect(0, 0, screen.width, screen.height);
    buzzered = true;
    
  }
    if (keyCode == 32) {
    fill(0,0,0);
    rect(0, 0, screen.width, screen.height);
    buzzered = false;
    player = m.loadFile ("buzzer.wav");
  }
}
