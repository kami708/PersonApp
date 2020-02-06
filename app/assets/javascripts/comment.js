$(document).on('turbolinks:load', function(){
  function buildHTML(comment){
    var html = `
                <div class ="username">
                <a href=/users/${comment.user_id}>${comment.user_name}</a>
                <div class="comment-style">
                  ${comment.content}`
    return html;
  }
  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $('.products__comments__list').prepend(html);
      $('.textbox').val('')
      $('.form__submit').prop('disabled', false);
    })
//↓エラー時の処理
    .fail(function(){
      alert("error");
    })
  })
})