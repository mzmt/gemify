$(function ($) {
  $(document).ready(function () {
    // close modal
    $('#close-modal-button' + ',' + '#modal-background').click(function () {
      var modal = document.getElementsByClassName('modal is-active')
      modal[0].classList.remove('is-active');
    });
  });
});
