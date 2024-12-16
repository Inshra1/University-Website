<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Staff Details</title>

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com" rel="preconnect">
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">


    <!-- Main CSS File -->
    <link href="assets/css/main.css" rel="stylesheet">
    <style>

:root {
  --default-font: "Open Sans",  system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", "Liberation Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
  --heading-font: "Raleway",  sans-serif;
  --nav-font: "Poppins",  sans-serif;
}


        body {
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
              font-family: var(--heading-font);
                font-family: var(--default-font);


        }

        .staff-container {
            width: 60%;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .staff-header {
            display: flex;
            align-items: center;
            border-bottom: 1px solid #ddd;
            padding-bottom: 20px;
            margin-bottom: 20px;
        }

        .profile-image {
            width: 150px;
            height: 141px;
            border-radius: 50%;
            margin-right: 20px;
        }

        .staff-info {
            flex: 1;
        }

        .staff-info h1 {
            margin: 0;
            font-size: 28px;
        }

        .staff-info .title {
            font-size: 20px;
            color: #777;
        }

        .staff-info .department {
            font-size: 18px;
            color: #555;
        }

        .staff-info p {
            margin: 5px 0;
        }

        .staff-info a {
            color: #007bff;
            text-decoration: none;
        }

        .staff-details h2 {
            margin-bottom: 10px;
            color: #333;
        }

        .staff-details ul {
            list-style-type: disc;
            margin-left: 20px;
        }

        .staff-details h3 {
            margin-top: 20px;
            margin-bottom: 5px;
            color: #555;
        }

        .staff-details p {
            margin: 10px 0;
            color: #666;
        }

        .staff-details em {
            color: #999;
        }
    </style>
</head>

<body>
    <header id="header" class="header d-flex align-items-center sticky-top">
        <div class="container-fluid container-xl position-relative d-flex align-items-center">

            <a href="index.html" class="logo d-flex align-items-center me-auto">
                <img src="assets/img/logo.jpeg" alt="">
                <h1 class="sitename">UET Mardan</h1>
            </a>

            <nav id="navmenu" class="navmenu">
                <ul>
                    <li><a href="index.php" class="active">Home<br></a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="courses.php">Courses</a></li>
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
if(isset($_GET['id'])){
    $faculty_id=$_GET['id'];
$sql = "SELECT * FROM faculty_details WHERE id=$faculty_id"; 
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        ?>

        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file -->
            <title>Faculty Details</title>
        </head>
        <body>
        <div class="staff-container">
            <div class="staff-header">
                <img src="<?php echo $row['image']; ?>" alt="<?php echo $row['name']; ?>" class="profile-image">
                <div class="staff-info">
                    <h1><?php echo $row['name']; ?></h1>
                    <p class="title"><?php echo $row['title']; ?></p>
                    <p class="department"><?php echo $row['department']; ?></p>
                    <p><strong>Phone:</strong> <?php echo $row['phone']; ?></p>
                    <p><strong>Email:</strong> <?php echo $row['email']; ?></p>
                </div>
            </div>

            <div class="staff-details">
                <h2>Biography</h2>
                <p><?php echo $row['biography']; ?></p>

                <h2>Experience</h2>
                <p><?php echo $row['experience']; ?></p>

                <h2>Qualification</h2>
                <p><?php echo $row['qualification']; ?></p>

                <h2>Honor & Awards</h2>
                <p><?php echo $row['honors']; ?></p>
            </div>
        </div>
        </body>
        </html>

        <?php
    }
} else {
    echo "No faculty details found.";
}}

?>


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
                        <div class="newsletter-form"><input type="email" name="email"><input type="submit"
                                value="Subscribe"></div>
                        <div class="loading">Loading</div>
                        <div class="error-message"></div>
                        <div class="sent-message">Your subscription request has been sent. Thank you!</div>
                    </form>
                </div>

            </div>
        </div>

        <div class="container copyright text-center mt-4">
            <p>© <span>Copyright</span> <strong class="px-1 sitename">UET MARDAN</strong> <span>All Rights
                    Reserved</span></p>
            <div class="credits">

            </div>
        </div>

    </footer>

    <!-- Scroll Top -->
    <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

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