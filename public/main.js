$(function () {

  $('.delete').on('click', function () {


    var li = $(this).parent().parent();

    if (!confirm("削除する？")) {
      return;
    }

    $.post('/destroy', {
      // liに渡す値を指定
      // id:に渡す値はliのデータ属性で与えたidであると宣言
      id: li.data('id'),
      _csrf: li.data('token')
    }, function () {
      li.fadeOut(500);
    });
  });
});
