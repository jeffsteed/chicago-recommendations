window.onload = function() {

  var places = document.getElementsByClassName('place')

  for (var i = 0; i < places.length; i++) {
    places[i].addEventListener('click', getAjax);
  }

  function getAjax() {
    var xhr = new XMLHttpRequest();
    xhr.onload = function() {
      if (xhr.status == 200) {
        var content = document.getElementById('content');
        var results = JSON.parse(xhr.responseText);
        console.log(results);
        var output = "";
        for (var key in results) {
          output += "<h3>" + key + ": " + results[key] + "</h3>";
        }
        console.log(output);
        content.innerHTML = output;
      }
    };
    xhr.open("GET", "../api/" + this.id, true);
    xhr.send(null);
  };

};
