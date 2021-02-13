$(function ($) {
  $(document).ready(function () {
    var open = document.getElementsByClassName('open_modal');
    $(open).click(function () {
      var modal = document.getElementById('modal');
      modal.classList.add('is-active');
    });
  });
});

$(function ($) {
  $(document).ready(function () {
    $('#close-modal-button' + ',' + '#modal-background').click(function () {
      var modal = document.getElementById('modal');
      modal.classList.remove('is-active');
    });
  });
});
