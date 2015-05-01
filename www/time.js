/*global cordova*/

var exec = require("cordova/exec");

var Time = function(){};

Time.prototype.WhatIstTime = function (successCallback, errorCallback) {
    cordova.exec(successCallback, errorCallback, "Time", "whatIsTime", []);
};
Time.install = function () {
  if (!window.plugins) {
    window.plugins = {};
  }

  window.plugins.time = new Time();
  return window.plugins.time;
};

cordova.addConstructor(Time.install);
 
