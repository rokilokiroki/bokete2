$(function(){
    $('.main-container__menu__list li').click(function(e){
      e.preventDefault();
      var index = $('.main-container__menu__list li').index(this);
      $('.main-container__content li').css('display', 'none');
      $('.main-container__content li').eq(index).css('display','block');
      $('.main-container__menu__list li').removeClass('active');
      $(this).addClass('active')
    });

    $('.evaluation input').on("click", function() {
    $('.boke_text').show();
    $("#button").show();
  });

    function buildHTML(comment){
      var html = `<p>
                    ${comment.user_name}
                  </p>
                  <p>
                    ${comment.text}
                  </p>`
        return html;

    }
    $('.boke_comment').on('submit', function(e){
      // formの内容をとる為にclick buttonではなくboke_commentというformを指定している。
      e.preventDefault();
      var formData = new FormData(this);
      var url = $(this).attr('action')
      console.log(url);
      $.ajax({
        url: url,
        type: "POST",
        data: formData,
        dataType: 'json',
        processData: false,
        contentType: false
      })
      .done(function(data){
        console.log(data);
        var html = buildHTML(data)
        $('.boke_comments').append(html);
        $('.boke_text').val('');
      })
    })
    $('.evaluation2 input').on("click", function() {
    $('.new_text').show();
    $("#button2").show();
  });

});

