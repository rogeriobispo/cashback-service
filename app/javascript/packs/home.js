// the count down calcs is a copy of
// https://www.w3schools.com/howto/howto_js_countdown.asp

function time_tiking(id, ends_date) {

    setInterval(function () {
        let countDownDate = new Date(ends_date).getTime();
        let now = new Date().getTime();
        let distance = countDownDate - now;
        let days = Math.floor(distance / (1000 * 60 * 60 * 24));
        let hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        let mins = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        let secs = Math.floor((distance % (1000 * 60)) / 1000);
        document.getElementById(`days_${id}`).innerHTML = days;
        document.getElementById(`hours_${id}`).innerHTML = hours;
        document.getElementById(`mins_${id}`).innerHTML = mins;
        document.getElementById(`secs_${id}`).innerHTML = secs;
    }, 1000);
}

global.time_tiking = time_tiking;