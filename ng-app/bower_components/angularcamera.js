(function(){"use strict";angular.module("omr.directives",[]).directive("ngCamera",["$timeout","$sce",function(a,b){return{require:"ngModel",template:'<div class="ng-camera clearfix">        <p ng-hide="isLoaded">Loading Camera...</p>        <p ng-show="noCamera">Couldn\'t find a camera to use</p>        <div class="ng-camera-stack" ng-hide="!isLoaded">          <div class="ng-camera-countdown" ng-show="activeCountdown">            <p class="tick">{{countdownText}}</p>          </div>          <img class="ng-camera-overlay" ng-hide="!overlaySrc" ng-src="{{overlaySrc}}" width="{{width}}" height="{{height}}">          <video id="ng-camera-feed" autoplay width="{{width}}" height="{{height}}" src="{{videoStream}}">Install Browser\'s latest version</video>          <canvas id="ng-photo-canvas" width="{{width}}" height="{{height}}" style="display:none;"></canvas>        </div>        <div class="ng-camera-controls" ng-hide="hideUI">          <button class="btn ng-camera-take-btn" ng-click="takePicture()">Take Picture</button>        </div>      </div>',replace:!1,transclude:!0,restrict:"E",scope:{type:"@",media:"=ngModel",width:"@",height:"@",overlaySrc:"=",countdown:"@",captureCallback:"&capture",enabled:"=",captureMessage:"@"},link:function(c){return c.activeCountdown=!1,navigator.getUserMedia=navigator.getUserMedia||navigator.webkitGetUserMedia||navigator.mozGetUserMedia||navigator.msGetUserMedia,window.URL=window.URL||window.webkitURL||window.mozURL||window.msURL,c.$on("$destroy",function(){c.stream&&"function"==typeof c.stream.stop&&c.stream.stop()}),c.enableCamera=function(){return navigator.getUserMedia({audio:!1,video:!0},function(a){return c.$apply(function(){return c.stream=a,c.isLoaded=!0,c.videoStream=b.trustAsResourceUrl(window.URL.createObjectURL(a))})},function(){return c.$apply(function(){return c.isLoaded=!0,c.noCamera=!0})})},c.disableCamera=function(){return navigator.getUserMedia({audio:!1,video:!0},function(){return c.$apply(function(){return c.videoStream=""})})},c.takePicture=function(){var b,d,e,f;return b=window.document.getElementById("ng-photo-canvas"),f=null!=c.countdown?1e3*parseInt(c.countdown):0,null!=b&&(f>0&&(c.activeCountdown=!0,c.hideUI=!0),d=b.getContext("2d"),c.countdownTimer&&a.cancel(c.countdownTimer),c.countdownTimer=a(function(){var a;return c.activeCountdown=!1,a=window.document.getElementById("ng-camera-feed"),d.drawImage(a,0,0,c.width,c.height),null!=c.overlaySrc?c.addFrame(d,c.overlaySrc,function(){return c.$apply(function(){return c.media=b.toDataURL("image/jpeg")}),null!=c.captureCallback?c.captureCallback(c.media):void 0}):(c.media=b.toDataURL("image/jpeg"),null!=c.captureCallback&&c.captureCallback(c.media)),c.hideUI=!1},f+1e3),c.countdownText=parseInt(c.countdown),e=setInterval(function(){return c.$apply(function(){var a;return a=parseInt(c.countdownText)-1,0===a?(c.countdownText=null!=c.captureMessage?c.captureMessage:"GO!",clearInterval(e)):c.countdownText=a})},1e3)),!1},c.addFrame=function(a,b,d){var e;return null==d&&(d=!1),e=new Image,e.onload=function(){return a.drawImage(e,0,0,c.width,c.height),d?d(a):void 0},e.crossOrigin="",e.src=b},c.$watch("media",function(a){return null!=a?c.packagedMedia=c.media.replace(/^data:image\/\w+;base64,/,""):void 0}),c.$watch("overlaySrc",function(a){var b;return null!=c.overlaySrc?(c.isLoaded=!1,b=new Image,b.crossOrigin="",b.src=a,b.onload=function(){return c.$apply(function(){return c.isLoaded=!0})}):c.isLoaded=!0}),c.$watch("enabled",function(a,b){if(a){if(!b)return c.enableCamera()}else if(null!=b)return c.disableCamera()}),c.$watch("type",function(){switch(c.type){case"photo":if(c.enabled)return c.enableCamera();break;default:if(c.enabled)return c.enableCamera()}})}}}])}).call(this);