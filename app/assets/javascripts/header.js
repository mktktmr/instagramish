(function(){

  document.addEventListener("turbolinks:load", function() {
  
      var canvas = document.getElementById('brand-mark');
      var ctx = canvas.getContext('2d');
      var img = new Image();
      
      img.src = '/assets/header/instagramish-32.png';
      img.onload = function() {
        ctx.drawImage(img, 0, 0, 20, 20);
        ctx.font = '12px cursive';
        ctx.fillText('Instagramish', 40, 15);
      };

      centeringForm();
  });

  window.addEventListener('resize', function(){
    centeringForm();
  });

  function centeringForm() {
    var searchForm = document.getElementById('search-content');
    var centeringMargin = (window.innerWidth / 2) - (searchForm.offsetWidth / 2) - 230;
    searchForm.style.marginLeft = centeringMargin + 'px';
  }

})();
