document.addEventListener("DOMContentLoaded", function(){
  const my_canvas = document.getElementById("mycanvas");

  my_canvas.width = 500;
  my_canvas.height = 500;

  const ctx = my_canvas.getContext("2d");
  ctx.fillStyle = "lightred";
  ctx.fillRect(0, 0, 500, 500);
  ctx.beginPath();

  ctx.fillStyle = 'rgb(0, 170, 170)';
  ctx.fillRect(20,20,50,50);
  // void ctx.arc(x, y, radius, startAngle, endAngle, anticlockwise);

  ctx.arc(250,250,150,0,Math.PI);
  ctx.strokeStyle = "green";
  ctx.lineWidth = 30;
  ctx.arc(250,250,100,0,2*Math.PI);
  ctx.strokeStyle = "limegreen";
  ctx.lineWidth = 20;
  ctx.arc(250,250,50,0,Math.PI);
  ctx.strokeStyle = "lime";
  ctx.lineWidth = 10;

  ctx.setLineDash([5, 15]);

  ctx.lineTo(400, 50);
  ctx.stroke();

  // ctx.arc(250,250, 200, 2* Math.PI);
  // ctx.setLineDash([50,50]);
  // ctx.arc(250,250,150,0,2* Math.PI);
  // ctx.strokeStyle = "limegreen";
  // ctx.lineWidth = 30;
  ctx.stroke();
  // ctx.fillStyle = 'rgb(200, 0, 0)';
  // ctx.fill();
  // ctx.fillRect(10, 10, 50, 50);
  //
  // ctx.fillStyle = 'rgba(0, 0, 200, 0.5)';
  // ctx.fillRect(30, 30, 50, 50);

});
