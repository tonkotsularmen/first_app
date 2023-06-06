/*global $*/
$(document).ready(function() {
  $('.js-blood_type').change(function() {
    var user_id = $(this).data('id');
    var blood_type = $(this).val();

    $.ajax({
      type: 'PATCH',
      url: '/users/' + user_id + '/blood_type',
      data: {
        user: {
          id: user_id,
          blood_type: blood_type
        }
      },
      dataType: 'json',
    })
    .done(function(data) {
      alert(data.user_name + 'さんの血液型を' + data.blood_type + '型に更新しました。');
    })
  });
});