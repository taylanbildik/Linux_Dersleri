  // Retrieve canvas element and set it to occupy the whole window
  var canvas = document.getElementById("canvas");
  canvas.width  = window.innerWidth;
  canvas.height = window.innerHeight;
 
  // Retrieve the 2d context which we will use to draw our big red dot
  var context = canvas.getContext("2d");
  context.fillStyle =  "red";
 
  // The zoom factor which will be affected by the mouse position
  var zoom = 1;
 
  // Going up zooms out, going down zooms in
  canvas.addEventListener('mousemove', function(e) {
      zoom = e.clientY / canvas.height;
  });
 
  // Request an initial update of the canvas
  requestAnimationFrame(update);
 
  // Draw the red dot with a size proportional to the zoom factor
  function update() {
 
      context.clearRect(0, 0, canvas.width, canvas.height);
      context.beginPath();
      context.arc(
          canvas.width/2,
          canvas.height/2,
          canvas.height * zoom,
          0,
          2 * Math.PI
      );
      context.fill();
 
      requestAnimationFrame(update);
 
  }
 
};