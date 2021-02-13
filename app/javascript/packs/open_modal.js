$(function ($) {
  $(document).ready(function () {
    $('#open-modal').click(function () {
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
