$(function ($) {
  WindowHeight = $(window).height();
  $('.drower').css('height', WindowHeight); //メニューをwindowの高さいっぱいにする

  $(document).ready(function () {
    $('.btn').click(function () { //クリックしたら
      if ($('.drower').is(":animated")) {
        return false;
      } else {
        $('.drower').animate({ width: 'toggle' }); //animateで表示・非表示
        $(this).toggleClass('peke'); //toggleでクラス追加・削除
        return false;
      }
    });
  });

  //別領域をクリックでメニューを閉じる
  $(document).click(function (event) {
    if (!$(event.target).closest('.drower').length) {
      $('.btn').removeClass('peke');
      $('.drower').hide();
    }
  });
});
