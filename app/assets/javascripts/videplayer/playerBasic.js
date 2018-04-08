$(document).ready(function () {

    // video player pasic funtions 
    // variable Declaration
    var vid,btnplayPause,loopBtn,muteBtn,curSpan,durSpan,muteBtn, fullscreenBtn;
    // vars in use
    vid = document.querySelector("#videoPlayer");        
    btnplayPause = document.querySelector(".playPause");
    muteBtn = document.querySelector(".muteBtn");        
    loopbtn = document.querySelector(".loopBtn");    
    curSpan = document.querySelector(".current-time");
    durSpan = document.querySelector(".duration");
    fullscreenBtn = document.getElementById("btnFullscreen");
    

    // var with functions
    btnplayPause.addEventListener('click', playPause, false);
    vid.addEventListener('click', playPause, false);    
    loopbtn.addEventListener('click', vidLoop, false);
    muteBtn.addEventListener('click', mutebtn, false);
    fullscreenBtn.addEventListener('click', fullscreenEnter, false);
    

    // play pause functions
    function playPause() {
        if (vid.paused) {
            vid.play();
            $(".playPause").removeClass("playIcon").addClass("pauseIcon");            
          }else {
            vid.pause();
            $(".playPause").addClass("playIcon").removeClass("pauseIcon");            
          }
    }
    // video loop functions
    function vidLoop(){
        vid.loop = true;
        console.log("video Loop true");
    }
    // video volume contol functions
    function mutebtn() {

        if (vid.muted) {
            vid.muted = false;
            $('.muteBtn').addClass("mutedIcon");
            $('.muteBtn').removeClass("muteIcon");
        }else {
            vid.muted = true;
            $('.muteBtn').addClass("muteIcon");
            $('.muteBtn').removeClass("mutedIcon");
            
        }

    }

    // video Time update functions
    vid.ontimeupdate = function timerUpdate() {
        const nt = vid.currentTime * (100 / vid.duration);
        var curmins = Math.floor(vid.currentTime / 60);
        var cursecs = Math.floor(vid.currentTime - curmins * 60);
        var durmins = Math.floor(vid.duration / 60);
        var dursecs = Math.floor(vid.duration - durmins * 60);
        if(curmins < 10){ curmins = "0"+curmins; }
        if(cursecs < 10){ cursecs = "0"+cursecs; }
        if(durmins < 10){ durmins = "0"+durmins; }
        if(dursecs < 10){ dursecs = "0"+dursecs; }

        $( "#current-time" ).html(curmins+":"+cursecs);
        $( "#duration" ).html(durmins+":"+dursecs);

        
    }


    // setting functions
    function settings() {

    }

    // fullscreen master

    function fullscreenToggle() {
        console.log("fullscreen")
    }

    function fullscreenEnter() {
        if (vid.requestFullScreen) {
            vid.requestFullScreen();
          }else if (vid.webkitRequestFullScreen) {
            vid.webkitRequestFullScreen();
          }else if(vid.mozRequestFullScreen){
            vid.mozRequestFullScreen();
          }

          $(".uhPlayer").addClass("fullscreenMode");
    }





    var fullscreen = false;
    if(document.fullscreenEnabled)
        fullscreen = {
            request: "requestFullscreen",
            element: "fullscreenElement",
            exit: "exitFullscreen",
            event: "fullscreenchange"
        };
    else if(document.msfullscreenEnabled)
        fullscreen = {
            request: "msRequestFullscreen",
            element: "msFullscreenElement",
            exit: "msExitFullscreen",
            event: "msfullscreenchange"
        };
    else if(document.mozfullscreenEnabled)
        fullscreen = {
            request: "mozRequestFullScreen",
            element: "mozFullScreenElement",
            exit: "mozCancelFullScreen",
            event: "mozfullscreenchange"
        };
    else if(document.webkitFullscreenEnabled)
    fullscreen = {
        request: "webkitRequestFullscreen",
        element: "webkitFullscreenElement",
        exit: "webkitExitFullscreen",
        event: "webkitfullscreenchange"
    };


    if(fullscreen){
        document.addEventListener(fullscreen["event"], function(event){
            if(document[fullscreen["element"]]){
                $(".uhPlayer").addClass("fullscreenMode");                

            } else {
                $(".uhPlayer").removeClass("fullscreenMode");                

            }
        console.log("bariiiiiiiis");                
        }, false);
    }




    





    // end fullScreenToggle


});