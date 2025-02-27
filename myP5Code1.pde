setup = function() {
    size(1600, 700);
};

//Background Images
var caveSceneImage = loadImage("https://opengameart.org/sites/default/files/parallax-forest-preview.png");

var forestImage = loadImage("https://img.itch.zone/aW1hZ2UvMTIxNjU4LzU2MDM4MS5wbmc=/original/N%2Fb6N3.png");

//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "Its getting dark and you lost your pet fox, which way do you go?  [Press f for forest and c for cave]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'f'){
       sceneImage = forestImage;   
       sceneText = "No fox here.  [Press s to restart]";
     } 
     if(key == 's'){
      sceneImage = caveSceneImage;
      sceneText = "Where do you want to go?  [Press f for forest and c for cave]";
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



