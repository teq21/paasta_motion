<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<head>
  <meta charset="utf-8">
  <title>Swiper demo</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

  <link href="https://fonts.googleapis.com/css?family=Nunito:200,300,400,600,700,900" rel="stylesheet">
 <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.3.1/dist/tf.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@teachablemachine/pose@0.8/dist/teachablemachine-pose.min.js"></script>
 <script>

 $( document ).ready(function() {
	
	  init();
	
});  
 
 let model, webcam, ctx, labelContainer, maxPredictions;

 var URL = "./my_model/";

 async function init() {
     const modelURL = URL + "model.json";
     const metadataURL = URL + "metadata.json";

     // load the model and metadata
     // Refer to tmImage.loadFromFiles() in the API to support files from a file picker
     // Note: the pose library adds a tmPose object to your window (window.tmPose)
     model = await tmPose.load(modelURL, metadataURL);
     maxPredictions = model.getTotalClasses();

     // Convenience function to setup a webcam
     const size = 400;
     const flip = true; // whether to flip the webcam
     webcam = new tmPose.Webcam(400, size, flip); // width, height, flip
     await webcam.setup(); // request access to the webcam
     await webcam.play();
     window.requestAnimationFrame(loop);

     // append/get elements to the DOM
     const canvas = document.getElementById("canvas");
     canvas.width = 400; canvas.height = size;
     ctx = canvas.getContext("2d");
     labelContainer = document.getElementById("label-container");
     for (let i = 0; i < maxPredictions; i++) { // and class labels
         labelContainer.appendChild(document.createElement("div"));
     }
 }

 async function loop(timestamp) {
     webcam.update(); // update the webcam frame
     await predict();
     window.requestAnimationFrame(loop);
 }
 async function predict() {
     // Prediction #1: run input through posenet
     // estimatePose can take in an image, video or canvas html element
     const { pose, posenetOutput } = await model.estimatePose(webcam.canvas);
     // Prediction 2: run input through teachable machine classification model
    const prediction = await model.predict(posenetOutput);
     // finally draw the poses
     drawPose(pose);
 }
  
 async function getPredictValue1() {
     // Prediction #1: run input through posenet
     // estimatePose can take in an image, video or canvas html element
     const { pose, posenetOutput } = await model.estimatePose(webcam.canvas);
     // Prediction 2: run input through teachable machine classification model
     const prediction = await model.predict(posenetOutput);
     var test = prediction[0].probability.toFixed(2);
     return test;
 }
  
 async function getPredictValue2() {
     // Prediction #1: run input through posenet
     // estimatePose can take in an image, video or canvas html element
     const { pose, posenetOutput } = await model.estimatePose(webcam.canvas);
     // Prediction 2: run input through teachable machine classification model
     const prediction = await model.predict(posenetOutput);
     var test = prediction[1].probability.toFixed(2);
     return test;
 }
 function drawPose(pose) {
     if (webcam.canvas) {
         ctx.drawImage(webcam.canvas, 0, 0);
         // draw the keypoints and skeleton
         if (pose) {
             const minPartConfidence = 0.5;
             tmPose.drawKeypoints(pose.keypoints, minPartConfidence, ctx);
             tmPose.drawSkeleton(pose.keypoints, minPartConfidence, ctx);
         }
     }
 }

 </script>
</head>

<body>
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" id="a">
                    <div class="data-map-single" style="text-align: center; margin: 0auto;">
                   
                    <h4>STEP 3 모션인식을 통해 수화를 직접해보세요 </h4><br><br>
                       	<canvas id="canvas"></canvas>
                    </div>
                </div>
</body>
</html>