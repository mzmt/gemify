$(function ($) {
  $(document).ready(function () {
    $('#copy').click(function () { //クリックしたら
      var txt = document.querySelector('#copy-target');
      copyText(txt);
      alert('リンクをコピーしました！');
    });
  });
});

const copyText = (target) => {
  // テキストの選択
  document.getSelection().selectAllChildren(target);
  // 選択範囲のコピー
  document.execCommand("copy");
  // テキスト選択の解除
  document.getSelection().empty(target);
}
