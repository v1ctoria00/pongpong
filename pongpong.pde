//colour set up
color background = #FBEFEF;
color PaleBlush = #FADAD9;
color LightRose = #F3C3C5;
color SoftCoralPink = #E9ABAE;
color WarmPink = #E0959C;
color MutedRaspberry = #D78289;
color AntiqueRose = #CE6F79;
color VintagePink = #C65C69;
color White = #FFFFFF;
color SLIDEPINK = #f2b3c6;
color OUTLINE = #f7cdd4;
color SELECTOUTLINE = #fae3ed;

//modes
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld;

void setup() {
  size(800, 600);
  mode = INTRO;

//initalize paddles
leftx = 0;
lefty = height/2;
leftd = 200;

rightx = width;
righty = height/2;
rightd = 200;

//initialize ball 
ballx = width/2;
bally = height/2;
balld = 100;
}

void draw() {
  if (mode == INTRO) {
  } else if(mode == GAME) {
    intro();
  } else if(mode == PAUSE) {
    pause();
  } else if(mode == GAMEOVER) {
    gameover();
  } else { 
    println("Mode error: " + mode);
  }
}
