Definition
==========
This an example ios cordova plugin that is written in swift. The plugin returns hour and minute of current time.   

How to Install ? 
=============

Download or clone the repository and open terminal at your project directory than add the plugin to your project :

    $ cordova plugin add <path_of_the_plugin>

To make the plugin run; open your ios project which is under `platform/ios/<your_application_name>.xcodeproj`  then follow this steps :  

 1. Go to project settings and change deployment target to 7.0 or above( the minimum deployment target for swift language is ios 7.0).
 2. Go to **Build Settings** / **Swift Compiler - Code Generation** and add : `./<Project_Name>/Plugins/com.example.time/Bridging-Header.h` to **Objective-c Bridging Header**
 3. Add again under **Build Settings** this `@executable_path/Frameworks` to **RunPath Search Paths** 
      

Test The Plugin
===============
Add the following code to `onDeviceReady` function 

      window.plugins.time.WhatIstTime(function(data){
            alert(JSON.stringify(data));
       },function(err){
            console.log(err);
       });

