<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
     <link href="style.css" rel="stylesheet"/>
    <title>Home Page</title>
  </head>
  <body>
   <div  >
        <%@include file="navbar.jsp" %>
    </div>
    <div id="carouselExample" class="carousel slide h-80" data-ride="carousel" data-interval="500">
    <div class="carousel-inner" style="height: 570px;">
        <div class="carousel-item active h-80">
            <!-- Your first slide content goes here -->
            <img src="img/2.jpg" class="d-block w-100 h-80" alt="Slide 1" style="height: 580px;">
        </div>
        <div class="carousel-item h-80">
            <!-- Your second slide content goes here -->
            <img src="img/2148707967.jpg" class="d-block w-100 h-80" alt="Slide 2" style="height: 580px;">
        </div>
         <div class="carousel-item h-80">
            <!-- Your second slide content goes here -->
            <img src="img/icon.jpg" class="d-block w-100 h-80" alt="Slide 3" style="height: 580px;">
        </div>
         <div class="carousel-item h-80">
            <!-- Your second slide content goes here -->
            <img src="img/3.jpg" class="d-block w-100 h-80" alt="Slide 4" style="height: 580px;">
        </div>
        <!-- Add more carousel items as needed -->
    </div>
    </div>
  
   

  <script>
    // Add JavaScript to reset the carousel to the first slide after the last one
    $('#carouselExample').on('slide.bs.carousel', function (e) {
        var $e = $(e.relatedTarget);
        var idx = $e.index();
        var itemsPerSlide = 4; // Change this based on the number of items per slide

        if (idx >= $e.parent().children().length - itemsPerSlide) {
            var next = idx - ($e.parent().children().length - 1);
            if (next === 1) {
                next = 0;
            }
            $(this).find('.carousel-item').eq(next).appendTo($(this).find('.carousel-inner'));
        }
    });
</script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>