setup = function() {
    size(1600, 700);
};

//Background Images
var startSceneImage = loadImage("https://img.itch.zone/aW1hZ2UvMTEyNjM3LzUyMjcwMi5wbmc=/original/Ncg21w.png");

var forestImage = loadImage("https://img.itch.zone/aW1hZ2UvMTIxNjU4LzU2MDM4MS5wbmc=/original/N%2Fb6N3.png");

var cave1Image = loadImage("https://img.itch.zone/aW1nLzEyMTkxMTQwLnBuZw==/original/ALYiiE.png");

var cavebewareImage = loadImage("https://img.freepik.com/premium-photo/pixel-art-cave-scene-with-car-entrance_811279-134357.jpg");

//Variable Declarations
var sceneImage = startSceneImage;
var sceneText = "Its getting dark and you lost your pet fox, which way do you go?  [Press f for forest and c for cave]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'f'){
       sceneImage = forestImage;   
       sceneText = "No fox here.  [Press s to go back]";
     } 
     if(key == 's'){
      sceneImage = startSceneImage;
      sceneText = "Where do you want to go?  [Press f for forest and c for cave]";
    } 
    if(key == 'c'){
      sceneImage = cavebewareImage;
      sceneText = "You hear strange noises coming from the cave, do you wish to procced?  [Press g to continue and s to restart]";
    } 
    if(key == 'g'){
      sceneImage = cave1Image;
      sceneText = "  [Press g to continue and s to restart]";
    } 
    
    
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 1600, 700);
    
    fill(0,0,0);
    rect(0, 630, 2000, 90);
      
    fill(255,255,255);
    textSize(20);
   
   text(sceneText, 10, 670);
};



