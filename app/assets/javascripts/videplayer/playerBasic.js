$(document).ready(function () {

    // video player pasic funtions 
    // variable Declaration
    var vid,btnplayPause,loopBtn,muteBtn,curSpan,durSpan;
    // vars in use
    vid = document.querySelector("#videoPlayer");        
    btnplayPause = document.querySelector(".playPause");
    loopbtn = document.querySelector(".loopBtn");    
    curSpan = document.querySelector(".current-time");
    durSpan = document.querySelector(".duration");

    // var with functions
    btnplayPause.addEventListener('click', playPause, false);
    loopbtn.addEventListener('click', vidLoop, false);    

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


        console.log(nt);

        $( "#current-time" ).html(curmins+":"+cursecs);
        $( "#duration" ).html(durmins+":"+dursecs);
        
    }


    // setting functions
    function settings() {

    }


});