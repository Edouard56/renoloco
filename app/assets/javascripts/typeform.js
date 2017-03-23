
$(function() {

  // Image picker

  $(".image-picker").imagepicker();


  // Autocomplete second field for works address

  $(function(){
    var $foo = $('#customer_customer_address');
    var $bar = $('#customer_works_address');
    function onChange() {
        $bar.val($foo.val());
    };
    $('#customer_customer_address')
        .change(onChange)
        .keyup(onChange);
  });



  // Placeholder qui change ;)

  // var jobs = ["Directeur général", "Office manager", "Directeur Administratif et Financier", "Partner", "Responsable RH"]

  // setInterval(function(){
  //   var job = jobs[Math.floor(Math.random()*jobs.length)];
  //   $("#challenge_activity").attr("placeholder", job);
  // }, 2000);



  // Smooth scroll

  // $('a[href*="#"]:not([href="#"])').click(function() {
  //   if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
  //     var target = $(this.hash);
  //     target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
  //     if (target.length) {
  //       $('html, body').animate({
  //         scrollTop: target.offset().top
  //       }, 500);
  //       return false;
  //     }
  //   }
  // });



  // On scroll, switch to next question

  // var executed = false;
  // $('.question-container').bind('mousewheel', function(e) {
  //   console.log(e)
  //   if (!executed) {
  //     executed = true;
  //     var delta = e.originalEvent.wheelDelta;
  //     if(delta < 0) {
  //       if($(this).data('next')) {
  //         $('html, body').animate({
  //           scrollTop: $($(this).data('next')).offset().top
  //         }, 500);
  //       }
  //     } else if (delta > 0) {
  //       if($(this).data('prev')) {
  //         $('html, body').animate({
  //           scrollTop: $($(this).data('prev')).offset().top
  //         }, 500);
  //       }
  //     }

  //     setTimeout(function() {
  //       executed = false
  //     }, 1000)
  //   };
  // });



  // On enter in an input, switch to next question

  // $('.questions-container input').on('keydown', function(e) {
  //   if(e.keyCode == 13) {
  //     e.preventDefault();
  //     $(this).parent().parent().parent().find('a').click()
  //   }
  // })

});
