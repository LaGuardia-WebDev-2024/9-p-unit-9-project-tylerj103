setup = function() {
    size(600, 400);
};

//Background Images
var caveSceneImage = loadImage("https://www.cudenver.com/getattachment/6069b13a-b108-43c8-848b-9e1fb0679e5f/Denver-s-Spookiest-Halloween-Haunted-Houses");

var forestImage = loadImage("https://www.cudenver.com/getattachment/6069b13a-b108-43c8-848b-9e1fb0679e5f/Denver-s-Spookiest-Halloween-Haunted-Houses");

//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "Welcome to the haunted house?  [Press f to enter and c to turn back]";

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
    image(sceneImage, 0, 0, 600, 400);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 10, 375);
};



