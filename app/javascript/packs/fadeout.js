function fade(element) {
  var op = 1;  // initial opacity

  setTimeout(() => {
    var timer = setInterval(function () {
      if (op <= 0.1) {
        clearInterval(timer);
        element.style.display = 'none';
      }
      element.style.opacity = op;
      element.style.filter = 'alpha(opacity=' + op * 100 + ")";
      op -= op * 0.1;
    }, 50);
  }, 5000)
}

fade(document.getElementById('fadeout'));
