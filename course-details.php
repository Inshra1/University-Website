<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Course Details - Mentor Bootstrap Template</title>
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">


</head>

<body class="course-details-page">

  <header id="header" class="header d-flex align-items-center sticky-top">
    <div class="container-fluid container-xl position-relative d-flex align-items-center">

      <a href="index.html" class="logo d-flex align-items-center me-auto">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <img src="assets/img/logo.jpeg" alt="">
        <h1 class="sitename">UET Mardan</h1>
      </a>

      <nav id="navmenu" class="navmenu">
        <ul>
          <li><a href="index.php" >Home<br></a></li>
          <li><a href="about.html">About</a></li>
          <li><a href="courses.php" class="active">Courses</a></li>
          <li><a href="faculty.php">Faculty</a></li>
          <li><a href="events.php">Events</a></li>

          <li><a href="contact.php">Contact</a></li>
        </ul>
        <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav>


    </div>
  </header>


<?php
include 'dbcon.php';

if (isset($_GET['id'])) {
    $course_id = (int)$_GET['id']; 

    
    $course_sql = "SELECT * FROM course_details WHERE id = $course_id";
    $course_result = mysqli_query($conn, $course_sql);

    if ($course_result) {
        $course = mysqli_fetch_assoc($course_result);
    } else {
        die("Error fetching course details: " . mysqli_error($conn));
    }

  
    $tab_sql = "SELECT * FROM coursed_details_tab_contents WHERE course_details_id = $course_id";
    $tab_result = mysqli_query($conn, $tab_sql);

    if ($tab_result) {
        $tabs = mysqli_fetch_all($tab_result, MYSQLI_ASSOC);
    } else {
        die("Error fetching tab contents: " . mysqli_error($conn));
    }
}

?>


  <main class="main">
    <!-- Page Title -->
    <div class="page-title" data-aos="fade">
      <nav class="breadcrumbs">
        <div class="container">
          <ol>
            <li><a href="index.php">Home</a></li>
            <li class="current">Course Details</li>
          </ol>
        </div>
      </nav>
    </div><!-- End Page Title -->

    <!-- Courses Course Details Section -->
    <section id="courses-course-details" class="courses-course-details section">
      <div class="container" data-aos="fade-up">
        <div class="row">
          <div class="col-lg-8">
            <img src="<?php echo htmlspecialchars($course['image']); ?>" class="img-fluid" alt="Course Image">
            <h3><?php echo htmlspecialchars($course['title']); ?></h3>
            <p><?php echo nl2br(htmlspecialchars($course['description'])); ?></p>
          </div>
          <div class="col-lg-4">
            <div class="course-info d-flex justify-content-between align-items-center">
              <h5>Instructor</h5>
              <p><a href="#"><?php echo htmlspecialchars($course['instructor']); ?></a></p>
            </div>
            <div class="course-info d-flex justify-content-between align-items-center">
              <h5>Available Seats</h5>
              <p><?php echo htmlspecialchars($course['seats_available']); ?></p>
            </div>
            <div class="course-info d-flex justify-content-between align-items-center">
              <h5>Schedule</h5>
              <p><?php echo htmlspecialchars($course['schedule']); ?></p>
            </div>
          </div>
        </div>
      </div>
    </section><!-- /Courses Course Details Section -->

    <!-- Tabs Section -->
    <section id="tabs" class="tabs section">
      <div class="container" data-aos="fade-up" data-aos-delay="100">
        <div class="row">
          <div class="col-lg-3">
            <ul class="nav nav-tabs flex-column">
              <?php foreach ($tabs as $index => $tab): ?>
                <li class="nav-item">
                  <a class="nav-link <?php echo $index === 0 ? 'active show' : ''; ?>" data-bs-toggle="tab" href="#tab-<?php echo $index + 1; ?>">
                    <?php echo htmlspecialchars($tab['tab_title']); ?>
                  </a>
                </li>
              <?php endforeach; ?>
            </ul>
          </div>
          <div class="col-lg-9 mt-4 mt-lg-0">
            <div class="tab-content">
              <?php foreach ($tabs as $index => $tab): ?>
                <div class="tab-pane <?php echo $index === 0 ? 'active show' : ''; ?>" id="tab-<?php echo $index + 1; ?>">
                  <div class="row">
                    <div class="col-lg-8 details order-2 order-lg-1">
                      <h3><?php echo htmlspecialchars($tab['tab_title']); ?></h3>
                      <p class="fst-italic"><?php echo htmlspecialchars($tab['tab_description']); ?></p>
                    </div>
                    <div class="col-lg-4 text-center order-1 order-lg-2">
                      <img src="<?php echo htmlspecialchars($tab['tab_image']); ?>" alt="" class="img-fluid">
                    </div>
                  </div>
                </div>
              <?php endforeach; ?>
            </div>
          </div>
        </div>
      </div>
    </section><!-- /Tabs Section -->

  </main>

 <footer id="footer" class="footer position-relative light-background">

    <div class="container footer-top">
      <div class="row gy-4">
        <div class="col-lg-4 col-md-6 footer-about">
          <a href="index.html" class="logo d-flex align-items-center">
            <span class="sitename">University of Engineering &Technology, Mardan</span>
          </a>
          <div class="footer-contact pt-3">
            <p>Charsadda Road, 23200 Mardan</p>
            <p> Khyber Pakhtunkhwa, Pakistan</p>
            <p class="mt-3"><strong>Phone:</strong> <span>+92-937-9230295</span></p>
            <p><strong>Email:</strong> <span>info@uetmardan.edu.pk</span></p>
          </div>
          <div class="social-links d-flex mt-4">
            <a href=""><i class="bi bi-twitter-x"></i></a>
            <a href=""><i class="bi bi-facebook"></i></a>
            <a href=""><i class="bi bi-instagram"></i></a>
            <a href=""><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

        <div class="col-lg-2 col-md-3 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">About us</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Terms of service</a></li>
            <li><a href="#">Privacy policy</a></li>
          </ul>
        </div>

        <div class="col-lg-2 col-md-3 footer-links">
          <h4>Our Services</h4>
          <ul>
            <li><a href="#">Web Design</a></li>
            <li><a href="#">Web Development</a></li>
            <li><a href="#">Product Management</a></li>
            <li><a href="#">Marketing</a></li>
            <li><a href="#">Graphic Design</a></li>
          </ul>
        </div>

        <div class="col-lg-4 col-md-12 footer-newsletter">
          <h4>Our Newsletter</h4>
          <p>Subscribe to our newsletter and receive the latest news about our products and services!</p>
          <form action="forms/newsletter.php" method="post" class="php-email-form">
            <div class="newsletter-form"><input type="email" name="email"><input type="submit" value="Subscribe"></div>
            <div class="loading">Loading</div>
            <div class="error-message"></div>
            <div class="sent-message">Your subscription request has been sent. Thank you!</div>
          </form>
        </div>

      </div>
    </div>

    <div class="container copyright text-center mt-4">
      <p>© <span>Copyright</span> <strong class="px-1 sitename">UET MARDAN</strong> <span>All Rights Reserved</span></p>
      <div class="credits">
        
      </div>
    </div>

  </footer>


  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>