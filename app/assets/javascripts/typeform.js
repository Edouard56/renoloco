
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

  var adresses = ["8 place de l'opéra, Paris", "40 rue de verdun, Suresnes", "65 boulevard haussmann, Paris", "32 rue thiers, Boulogne-Billancourt", "74 rue Anatole France, Levallois Perret", "32 rue de paradis, Paris", "48 boulevard des belges, Lyon", "6 rue Ménars, Paris"]

  setInterval(function(){
    var adresse = adresses[Math.floor(Math.random()*adresses.length)];
    $("#customer_customer_address").attr("placeholder", adresse);
    $("#customer_works_address").attr("placeholder", adresse);
  }, 2000);


  var jobs = ["Directeur général", "Office manager", "Directeur Administratif et Financier", "Partner", "Responsable RH"]

    setInterval(function(){
    var job = jobs[Math.floor(Math.random()*jobs.length)];
    $("#customer_customer_company_name").attr("placeholder", job);
  }, 1000);

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
