
function videoTimer() {
	console.log("Video Timer ON");

	var vid = document.getElementById("videoPlayer");
	console.log(vid.currentTime);
	$('#current_duration').val(vid.currentTime);
}

