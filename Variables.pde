// variables for the controls

// higher 
float speed =  1.0; // Speed ~ 360 / myFrameRate

float drawRingRadius = 60.0; // must be below 150
float drawHeadDistToCen = 16; //  above 12 and below half of drawRingRadius
color linesColor = color (255,0,0); // color of lines
float genMult = 1.0;
float lineWidth = 1.0;

float timeMult = 1.0;

boolean pauseWhileControl = false;

// all the initial variables
float outerRadius = 150.0; // large ring radius
float outerInnerRatio;   // ratio between the large ring and small ring
                         // used to determin the angle of the inner circle
float rotationRadius; // radius of the ring where the smaller circle will rotate around
float headCurDegree;

float currentRotation = 0.0; // current rotation of the smaller ring
float myFrameRate = 120; // how many frames per secon

PVector previousLoc = new PVector(-1.0,-1.0); // first location in the lines array
ArrayList<PVector> pointsArr = new ArrayList<PVector>();

float drawHeadX;
float drawHeadY;

float mainXCen;
float mainYCen;

float drawHeadRingCenterX;
float drawHeadRingCenterY;
