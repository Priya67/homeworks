console.log("Hello from the JavaScript console!");

// Your AJAX request here

$.ajax({
  method: "GET",
  url: "http://api.openweathermap.org/data/2.5/weather?q=NY,NY&appid=bcb83c4b54aee8418983c2aff3073b3b",
  success(data) {
    console.log("Your data is: ");
    console.log(data);
  },
  error() {
    console.error("An error occured");
  },
});

console.log("It is the end of the program");

// Add another console log here, outside your AJAX request


// 1) Request is sent at the start of the program from url and data
// 2) We get response at success(data) itself
// 3) Current Weather in New York is:
// {temp: 293.3, pressure: 1011, humidity: 94, temp_min: 291.15, temp_max: 295.15}
// 4) The page didnt refresh
// 5) in the method we can specify the different HTTP methods
