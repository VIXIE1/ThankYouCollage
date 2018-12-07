//add thank you code here
PImage CBimg;
PImage Snoopy;
PImage Cloud;
int xPos=600;
int xDir=-1;
//bacground
void setup() {
CBimg = loadImage("https://upload.wikimedia.org/wikipedia/en/2/22/Charlie_Brown.png");
Snoopy = loadImage("https://upload.wikimedia.org/wikipedia/en/5/53/Snoopy_Peanuts.png");
Cloud = loadImage("http://www.clker.com/cliparts/b/3/3/3/13331199701638982263Red%20Kite.svg.med.png");
  size(600,600);
background(153,204,255);
fill(126,200,80);
rect(-1,440,600,605);
//Snoopy's home

// CB
CBimg.resize(0,100);
image(CBimg,150,450);
}
void draw(){
  background(153,204,255);
  fill(126,200,80);
  rect(-1,440,600,605);
  fill(255,0,0);
beginShape();
vertex(40,500);
vertex(90,460);
vertex(140,500);
vertex(120,500);
vertex(120,540);
vertex(60,540);
vertex(60,500);
vertex(40,500);
endShape();
fill(128,0,0);
beginShape();
vertex(70,540);
vertex(70,510);
vertex(110,510);
vertex(110,540);
vertex(70,540);
endShape();
CBimg.resize(0,100);
image(CBimg,150,450);
Snoopy.resize(0,100);
  image(Snoopy,xPos+50, 450); xPos=xPos+xDir;
  if (xPos>width-1 || xPos<20)
  {
    xDir=-xDir;
  }
  fill(243,242,231,random(255));
  textSize(100);
  textAlign(CENTER);
  text("Thank",300,250);
  text("You",300,350);
  Cloud.resize(0,100);
  image(Cloud,mouseX,100);
}
