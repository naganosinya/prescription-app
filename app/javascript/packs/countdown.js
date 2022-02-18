document.addEventListener('turbolinks:load', () => {
  var count = 5;
    var countdown = function(){
      document.getElementById('sec').textContent = count.toString();
      console.log(count--);
      var id = setTimeout(countdown, 1000);
      if(count < 0){
        clearTimeout(id);
      }
    }
    countdown();
});
