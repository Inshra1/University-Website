-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2024 at 03:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uet_mard`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`, `submitted_at`) VALUES
(1, 'inshra', 'inshra@gmail.com', 'askndasnda', 'jnjdfnjsdbfsdf', '2024-09-07 19:01:17'),
(2, 'marwa', 'marwa@gmail.com', 'madsnasdj', 'jkqdnkndkwd', '2024-09-07 19:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `coursed_details_tab_contents`
--

CREATE TABLE `coursed_details_tab_contents` (
  `id` int(11) NOT NULL,
  `course_details_id` int(11) DEFAULT NULL,
  `tab_title` varchar(255) DEFAULT NULL,
  `tab_description` text DEFAULT NULL,
  `tab_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coursed_details_tab_contents`
--

INSERT INTO `coursed_details_tab_contents` (`id`, `course_details_id`, `tab_title`, `tab_description`, `tab_image`) VALUES
(1, 1, 'Introduction to AI', 'Explore the basics of AI, its history, and its impact on various industries.', 'assets/img/tabs/ai-introduction.png'),
(2, 1, 'Machine Learning', 'Dive into the world of Machine Learning algorithms and techniques.', 'assets/img/tabs/machine-learning.png'),
(3, 1, 'Deep Learning', 'Understand the complexities of Deep Learning and Neural Networks.', 'assets/img/tabs/deep-learning.png'),
(4, 1, 'Natural Language Processing (NLP)', 'Explore how AI understands and processes human language.', 'assets/img/tabs/nlp.png'),
(5, 1, 'AI in Practice', 'See real-world applications and case studies of AI technology.', 'assets/img/tabs/ai-practice.png'),
(6, 2, 'Introduction to Web Design', 'Explore the basics of web design, its history, and its impact on user experience.', 'assets/img/tabs/web-design-introduction.png'),
(7, 2, 'Responsive Design', 'Learn how to create websites that work seamlessly across various devices.', 'assets/img/tabs/responsive-design.png'),
(8, 2, 'UX Design', 'Understand the principles of User Experience design and its importance in web design.', 'assets/img/tabs/ux-design.png'),
(9, 2, 'UI Design', 'Explore the principles of User Interface design and its role in creating engaging web interfaces.', 'assets/img/tabs/ui-design.png'),
(10, 2, 'Web Design in Practice', 'See real-world applications and case studies of web design techniques.', 'assets/img/tabs/web-design-practice.png');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `faculty_name` varchar(50) NOT NULL,
  `faculty_image` varchar(255) NOT NULL,
  `enrolled_students` int(11) DEFAULT 0,
  `likes` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `course_description`, `image`, `faculty_name`, `faculty_image`, `enrolled_students`, `likes`) VALUES
(1, 'Artificial Intelligence', 'Learn how to design beautiful and functional websites.', 'assets/img/course-1.jpg', 'Dr Usman', 'assets/img/trainers/dr-usman.jpg', 50, 65),
(2, 'Web Design', 'Master the art of SEO to boost website traffic.', 'assets/img/course-2.jpg', 'Dr Inayat', 'assets/img/trainers/dr_inayat_cs.jpg', 35, 42),
(3, 'Angular JS', 'Develop skills to write persuasive and engaging content.', 'assets/img/course-3.jpg', 'Dr Najeeb', 'assets/img/trainers/drnajeebsahib.jpeg', 20, 85),
(4, 'Data Science Fundamentals', 'Learn the basics of data science, including data analysis, visualization, and machine learning.', 'assets/img/course-2.jpg', 'Dr Muhammad Faisal Abrar', 'assets/img/trainers/drmuhammadfaisal.jpg', 40, 78),
(5, 'Mobile App Development', 'Build mobile applications from scratch using popular frameworks like Flutter and React Native.', 'assets/img/course-3.jpg', 'Dr Usman', 'assets/img/trainers/dr-usman.jpg', 30, 55);

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE `course_details` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `instructor` varchar(255) DEFAULT NULL,
  `seats_available` int(11) DEFAULT NULL,
  `schedule` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_details`
--

INSERT INTO `course_details` (`id`, `course_id`, `title`, `description`, `image`, `instructor`, `seats_available`, `schedule`) VALUES
(1, 1, 'Introduction to Artificial Intelligence', 'Dive into the world of Artificial Intelligence and explore its fundamental concepts, techniques, and applications. This course covers key AI topics including machine learning, deep learning, and natural language processing. Learn about the history of AI, its current trends, and future directions. Gain practical insights into how AI is transforming industries and how you can leverage it to solve complex problems.', 'assets/img/course-1.jpg', 'Dr. Usman', 25, '3.00 pm - 5.00 pm'),
(2, 2, 'Introduction to Web Design', 'Dive into the world of Web Design and explore its fundamental concepts, techniques, and applications. This course covers key web design topics including responsive design, user experience (UX), and user interface (UI) design. Learn about the history of web design, current trends, and future directions. Gain practical insights into how web design is transforming industries and how you can leverage it to create compelling and user-friendly websites. Our course provides a comprehensive overview, from basic principles to advanced techniques. Engage in hands-on projects and case studies to understand how web design principles are applied in real-world scenarios. By the end of the course, you will be equipped with the knowledge and skills to design effective and aesthetically pleasing websites.', 'assets/img/course-2.jpg', 'Dr. Inayat', 50, '2.00 pm - 3.00 pm');

-- --------------------------------------------------------

--
-- Table structure for table `event_details`
--

CREATE TABLE `event_details` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `event_date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_details`
--

INSERT INTO `event_details` (`id`, `event_id`, `title`, `event_date`, `image`, `description`) VALUES
(1, 1, '17th meeting of the Syndicate UET Mardan', '2024-08-07', 'assets/img/event1.jpeg', 'On August 7, 2024, the 17th meeting of the Syndicate, UET Mardan was held under the chairmanship of Prof. Dr. Imran Khan, Vice-Chancellor, UET Mardan. The attendees included external members: Justice (Rtd) Ms. Irshad Qaiser, Nominee of the Honorable Peshawar High Court, Prof. Dr. Fazal Ahmad Khalid, Nominee of the Chairman HEC, Mr. Fayyaz Khan, Additional Secretary, Higher Education Department, Mr. Muhammad Irfan Usman, Deputy Secretary, Establishment Department, Miss. Amela Faheem, Additional Secretary, Finance Department, Khyber Pakhtunkhwa; and internal members: Prof. Dr. Sadaqat Jan, Prof. Dr. Ibrar Ali Shah, Engr. Sajjad Ali, Treasurer, Dr. Muhammad Abbas Mehmood, Associate Professor, Dr. Jalal Khan, Assistant Professor, Dr. Muhammad Faisal Abrar, Lecturer, Mr. Abdul Hafeez, Deputy Director Budget, Mr. Irshad Ali, Deputy Director Audit and Mr. Murad Ali Khan, Deputy Controller of Examination. The meeting addressed critical matters focused on quality of education and strategic planning, aiming to ensure the University’s sustainability and future growth. The 17th Syndicate Meeting at UET Mardan exemplified the commitment of the University’s leadership and stakeholders to drive progress and development.');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `designation`, `description`, `image`, `twitter`, `facebook`, `instagram`, `linkedin`) VALUES
(1, 'Dr Usman', 'Professor', 'Specializes in building intelligent systems using machine learning, deep learning, and data analysis techniques.', 'assets/img/team/dr-usman.jpg', '#', '#', '#', '#'),
(2, 'Dr. Inayat Khan', 'Assistant Professor', 'Versatile in designing and developing complete applications, managing both frontend and backend development.', 'assets/img/team/dr_inayat_cs.jpg', '#', '#', '#', '#'),
(3, 'Dr Najeeb', 'Professor', 'Proficient in developing robust and scalable applications using Java for web, mobile, and enterprise solutions.', 'assets/img/team/drnajeebsahib.jpeg', '#', '#', '#', '#'),
(4, 'Shehzad Ahmad', 'Lecturer', 'Skilled in developing interactive and responsive web applications using Angular.js and TypeScript.', 'assets/img/team/shehzadahmad.jpeg', '#', '#', '#', '#'),
(5, 'Mian Saeed Akbar', 'Lecturer', 'Expert in crafting dynamic and high-performance user interfaces using React.js and modern JavaScript frameworks.', 'assets/img/team/miansaeedakbar.jpeg', '#', '#', '#', '#'),
(6, 'Dr Muhammad Faisal Abrar', 'Lecturer', 'Experienced in creating efficient and scalable applications with Python for web development, data science, and automation.', 'assets/img/team/drmuhammadfaisal.jpg', '#', '#', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_details`
--

CREATE TABLE `faculty_details` (
  `id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `biography` text DEFAULT NULL,
  `experience` text DEFAULT NULL,
  `qualification` text DEFAULT NULL,
  `honors` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_details`
--

INSERT INTO `faculty_details` (`id`, `faculty_id`, `name`, `title`, `department`, `phone`, `email`, `biography`, `experience`, `qualification`, `honors`, `image`) VALUES
(1, 1, 'Engr. Dr. Muhammad Usman', 'Professor / Chairman', 'Computer Science', '+92-937-9230452', 'usman@uetmardan.edu.pk', 'Dr. Muhammad Usman is a Professor in the Department of Computer Science. With a profound interest in advancing the fields of artificial intelligence and machine learning, he has dedicated his career to exploring cutting-edge research and fostering innovation in technology.', '28-09-2019 till date, Associate Professor, UET Mardan<br>07.03.2018 to 27.09.2019, Assistant Professor, UET Mardan<br>14.11.2009 to 06-03-2018, Assistant Professor, UET Peshawar (Mardan Campus)<br>08.01.2007 to 13.11.2009, Assistant Professor, UET Peshawar<br>01.04.2006 to 07.01.2006, Lecturer, UET Peshawar (Mardan Campus)<br>15.07.2005 to 31.03.2006, Lab Engineer, National University of Computer & Emerging Sciences, Islamabad<br>15.09,2004 to 24.01.2005, Lecturer, UET Peshawar (Mardan Campus)', 'Ph.D. from University of Ulsan, South Korea, 2013-2016<br>M.Sc, in Computer Engineering from UET Taxila (Center for Advanced Studies in Engineering (CASE), Islamabad), 2005-2007<br>B.Sc, in Computer Information Systems Engineering from UET Peshawar, 2000-2004', 'Best Paper Award 2015 by the Korean Government through Brain Korea (BK) 21+ project.<br>CASE Talented student award in 2005 in Graduate studies.<br>Among top ten students in F.Sc (Pre-Engineering Session 1997-99) in the Board of Intermediate and Secondary Education (BISE) Peshawar', 'assets/img/trainers/dr-usman.jpg'),
(2, 2, 'Dr. Inayat Khan', 'Assistant Professor', 'Department of Computer Science', NULL, 'inayatkhan@uetmardan.edu.pk', 'Dr. Inayat is a Professor in the Department of Computer Science. With a profound interest in advancing the fields of artificial intelligence and machine learning, he has dedicated his career to exploring cutting-edge research and fostering innovation in technology.', 'Assistant Professor, Department of Computer Science, University of Engineering & Technology Mardan (October-2022, Present); Lecturer, Department of Computer Science, University of Buner, Buner (November-2017, October-2022); Lecturer, University of Peshawar (January-2011, February 2017)', 'PhD in Computer Science', 'Merit Certificate (2nd Position in BCS from 2005 to 2010), University of Peshawar; Selected in Prime Minister Fee Reimbursement Scheme for MS in Computer Science; Selected in Prime Minister Laptop Scheme; HEC Indigenous Fellowship for PhD; HEC Travel Grant for presenting research paper in Chengdu, China 2018.', 'assets/img/team/dr_inayat_cs.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `news_events`
--

CREATE TABLE `news_events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `event_date` datetime NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` enum('news','event') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news_events`
--

INSERT INTO `news_events` (`id`, `title`, `event_date`, `description`, `image`, `type`) VALUES
(1, 'Introduction to Web Design', '2024-09-26 19:00:00', 'Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 'assets/img/event1.jpeg', 'event'),
(2, 'Marketing Strategies', '2024-11-15 19:00:00', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo', 'assets/img/event2.jpeg', 'event'),
(3, 'New Course Launch', '2024-10-01 09:00:00', 'We are excited to announce the launch of our new course in Data Science starting from October 1st, 2024.', 'assets/img/event3.jpeg', 'news'),
(4, 'Campus Renovation Announcement', '2024-12-01 10:00:00', 'Our campus is undergoing renovations to provide better facilities to our students and staff.', 'assets/img/news1.jpg', 'news');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coursed_details_tab_contents`
--
ALTER TABLE `coursed_details_tab_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_details_id` (`course_details_id`) USING BTREE;

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_details`
--
ALTER TABLE `course_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `event_details`
--
ALTER TABLE `event_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `freignnkey` (`event_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_details`
--
ALTER TABLE `faculty_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `freegn key` (`faculty_id`);

--
-- Indexes for table `news_events`
--
ALTER TABLE `news_events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coursed_details_tab_contents`
--
ALTER TABLE `coursed_details_tab_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course_details`
--
ALTER TABLE `course_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event_details`
--
ALTER TABLE `event_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faculty_details`
--
ALTER TABLE `faculty_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news_events`
--
ALTER TABLE `news_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coursed_details_tab_contents`
--
ALTER TABLE `coursed_details_tab_contents`
  ADD CONSTRAINT `coursed_details_tab_contents_ibfk_1` FOREIGN KEY (`course_details_id`) REFERENCES `course_details` (`id`);

--
-- Constraints for table `course_details`
--
ALTER TABLE `course_details`
  ADD CONSTRAINT `course_id` FOREIGN KEY (`course_id`) REFERENCES `course_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `event_details`
--
ALTER TABLE `event_details`
  ADD CONSTRAINT `freignnkey` FOREIGN KEY (`event_id`) REFERENCES `event_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty_details`
--
ALTER TABLE `faculty_details`
  ADD CONSTRAINT `freegn key` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
