$(function () {

  $('.delete_todo').on('click', function () {
    var li = $(this).parent().parent();

    // if (!confirm("削除する？")) {
    //   return;
    // }

    $.post('/destroy_todo', {
      // liに渡す値を指定
      // id:に渡す値はliのデータ属性で与えたidであると宣言
      id: li.data('id'),
      _csrf: li.data('token')
    }, function () {
      li.fadeOut(500);
    });
  });


  $('.delete_user').on('click', function () {
    var div = $(this).parent().parent();
    if (!confirm("ユーザーを削除しますか？")) {
      return;
    };

    $.post('/destroy_user', {
      users_id: div.data('user_id'),
      _csrf: div.data('token')
    }, function () {
      div.fadeOut(300);
    });
  });


});
