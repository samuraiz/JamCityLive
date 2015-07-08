var getCountDown = function() {
    var clock = document.getElementById("countdown-holder")
        , targetDate = new Date(2015, 07, 13); // Aug 13, 2015;

    clock.innerHTML = countdown(targetDate).toString();
    setInterval(function(){
        clock.innerHTML = countdown(targetDate).toString();
    }, 1000);
};
$(document).ready(getCountDown);
$(document).on('page:load', getCountDown);
