// open specify modal
$(function ($) {
  $(document).ready(function () {
    // 対象の日付を取得
    var i;
    for (i = 0; i < 7; i++) {
      var today = new Date();
      var target = new Date(today)
      target.setDate(target.getDate() + i)
      var dd = String(target.getDate()).padStart(2, '0');
      var mm = String(target.getMonth() + 1).padStart(2, '0');
      var yyyy = target.getFullYear();
      target = yyyy + '-' + mm + '-' + dd;

      var open = document.getElementById('open-modal-' + target);
      open.addEventListener('click', openModal, false);
      open.targetModal = document.getElementById('modal-' + target);
    }

    function openModal(evt) {
      evt.currentTarget.targetModal.id = 'activeModal';
      evt.currentTarget.targetModal.classList.add('is-active');
    }
  });
});

// close modal
$(function ($) {
  $(document).ready(function () {
    $('#close-modal-button' + ',' + '#modal-background').click(function () {
      var modal = document.getElementById('activeModal');
      modal.classList.remove('is-active');
      modal.removeAttribute('id');
    });
  });
});
