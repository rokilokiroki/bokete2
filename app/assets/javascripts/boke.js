$(window).on("load", function(){
    $('.main-container__menu__list li').click(function(e){
      e.preventDefault();
      var index = $('.main-container__menu__list li').index(this);
      $('.main-container__content li').css('display', 'none');
      $('.main-container__content li').eq(index).css('display','block');
      $('.main-container__menu__list li').removeClass('active');
      $(this).addClass('active')
    });
});
