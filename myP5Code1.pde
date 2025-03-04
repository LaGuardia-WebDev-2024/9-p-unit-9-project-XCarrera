setup = function() {
    size(1500, 700);
};

//Background Images

var menuImage = loadImage("https://img.itch.zone/aW1hZ2UvMTEyNjM3LzUyMjcwMi5wbmc=/original/Ncg21w.png");
var startSceneImage = loadImage("https://img.itch.zone/aW1hZ2UvMTEyNjM3LzUyMjcwMi5wbmc=/original/Ncg21w.png");

var forestImage = loadImage("https://img.itch.zone/aW1hZ2UvMTIxNjU4LzU2MDM4MS5wbmc=/original/N%2Fb6N3.png");

var cave1Image = loadImage("https://img.itch.zone/aW1nLzEyMTkxMTQwLnBuZw==/original/ALYiiE.png");

var cavebewareImage = loadImage("https://img.freepik.com/premium-photo/pixel-art-cave-scene-with-car-entrance_811279-134357.jpg");

var diedImage = loadImage("https://www.shutterstock.com/shutterstock/videos/1028989112/thumb/1.jpg?ip=x480");

//Variable Declarations
var sceneImage = startSceneImage;
textFont(createFont("Papyrus"));
var sceneText = "Its getting dark and you lost your pet fox, which way do you go?  [Press f for forest and c for cave]";
var Cyclop = 0;

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'f'){
       sceneImage = forestImage;
       textFont(createFont("Papyrus"));
       sceneText = "No fox here.   [Press s to go back]";
     } 
     if(key == 's'){
      sceneImage = startSceneImage;
      textFont(createFont("Papyrus"));
      sceneText = "Where do you want to go?  [Press f for forest and c for cave]";
    } 
    if(key == 'c'){
      sceneImage = cavebewareImage;
      textFont(createFont("Papyrus"));
      sceneText = "You hear strange noises coming from inside the cave, do you wish to procced?  [Press g to continue and s to restart]";
    } 
    if(key == 'g'){
      sceneImage = cave1Image;
      textFont(createFont("Papyrus"));
      sceneText = "You found a Cyclop!  [Press a for attack1, h for attack2 and s to restart]";
      
    } 
    
    if(key == 'a'){
      sceneImage = diedImage;
      textSize(65);
      fill(219, 0, 0);
      text("YOU SHOULD'NT HAVE COME HERE",random(0,600),random(0,600));
      textFont(createFont("Papyrus"));
      sceneText = "YOU DIED!!  [Press s to restart]"; 
      
      
    } 
    if(key == 'h'){
      sceneImage = cave1Image;
      textFont(createFont("Papyrus"));
      sceneText = "You found a Cyclop!  [Press a for attack1, h for attack2 and s to restart]";
      Cyclop = 1;
      
      
      
    } 
  }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 1500, 700);
    
    fill(0,0,0);
    rect(0, 630, 2000, 90);
      
    fill(255,255,255);
    textSize(20);
   
   text(sceneText, 10, 670);
   
   if(Cyclop ==1){
   
   }
   
   
   
};




