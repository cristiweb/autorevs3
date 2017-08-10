-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2017 at 07:48 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auto`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `content` text NOT NULL,
  `img_name` varchar(120) NOT NULL,
  `link` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `img_name`, `link`, `date`) VALUES
(1, 'Dodge Viper, the american supercar the europeans don''t know about', 'The Dodge Viper includes a single-mode high-performance suspension or available driver-selectable two-mode suspension featuring Bilstein DampTronic select shock absorbers with street and track settings. An available five-mode Electronic Stability Control System 1 with launch control helps drivers maintain control of the car under almost any operating condition. The breaking of this car is incredible. Every corner of the Dodge Viper features a robust Brembo brake system with accent painted fixed aluminum calipers and 14x1.26-inch vented/slotted rotors. Braking is firm and confident even under extreme track conditions. And for serious racers, optional Brembo carbon ceramic brake rotors and pads offer superior performance by maintaining their strength after numerous hard stops and holding up better with repeated use. The ACR model features even larger brakes for further heightened performance', '11.jpg', 'http://www.dodge.com/en/viper/', '2017-02-08'),
(2, 'Ferrari 458 Italia - probably the best supercar', 'THE WAIT IS finally over. Ferrari has unveiled the 458 Italia, one of the most anticipated debuts of the Frankfurt auto show, and it is stunning. We''ll say this up front - we fell in love with this car the moment we saw the the pre-release photos and videos. The 458 is one hot car, and judging from the specs, a force to be reckoned with on the street. The new 4,499 cc V8 engine produces 570 horsepower and 398 foot-pounds of torque. The F1-derived dual-clutch gearbox and superlight 3,042-pound dry weight (3.274 ready to drive) mean the 458 Italia shoots from 0 to 100 km/h in less than 3.4 seconds. Top speed is just a hair over 200 mph. To read the specs, it seems the 458 can''t get any better. For starters, it has an ideal weight balance for a mid-engined sports car - 58 percent rear, 42 percent front. More F1-derived tech includes the electronic control system that Ferrari says guarantees optimal performance in all conditions. The new suspension, featuring twin wishbones with L-arms up front and a multilink setup out back, is tuned for maximum handling. The F430 is one of the best-handling cars on the planet, and the 458 promises to raise the standard.', '12.jpg', 'http://autoweek.com/article/car-news/ferrari-458-italia-latest-masterpiece-maranello', '2017-02-10'),
(3, 'Chevrolet Camaro', 'Gutsy engines, aggressive sheetmetal, and rear-wheel drive are essential for any muscle car, but the Camaro stirs in excellent handling and great steering, too. Available as a coupe or convertible, the base engine is a 275-hp 2.0-liter turbo four; a 335-hp 3.6-liter V-6 and a 455-hp 6.2-liter V-8 are optional. All offer either a six-speed manual or optional eight-speed automatic. The interior, though, is tight and offers limited visibility. The V-6 and V-8 Camaros are 10Best winners for 2017.', '10.jpg', 'http://www.chevrolet.com/2016-camaro-sports-car.html', '2017-02-13'),
(4, 'New 2017 Land Rover Discovery', 'The 2017 Land Rover Discovery is one of the most anticipated new cars of the year, and Land Rover has slightly altered the recipe for the Range Rover''s more rugged sibling. With a fluid new shape and a posher cabin, it''s pitched a little further upmarket and closer to the Range Rover, though purists shouldn''t be too concerned - it''ll keep its fabled off-road capability and workhorse reputation. \r\n\r\nThe fifth-generation Discovery was revealed last year at the Paris Motor Show, with Land Rover keen to draw attention to two big mechanical updates - the fresh Discovery sits on a new platform and gets a revised engine line-up, which Land Rover says should usher in a new level of efficiency, refinement and comfort. ', '17.jpg', 'http://britmotorag.ro/oferte-speciale-discovery-sport/?gclid=CMPniaSKktICFVzcGQodXTAMAA', '2017-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(5) NOT NULL,
  `name` varchar(60) NOT NULL,
  `subject` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `subject`, `email`, `message`) VALUES
(1, 'joe', 'topic', 'joe@silva.com', 'mesaj fasdjfbadjfgncjc'),
(2, 'Brad', 'Verificare', 'brad@brad.com', 'Mesaj pentru testarea formularului.\r\nDAcamerge e bine.'),
(3, 'Tim', 'UFC', 'tim@tim.com', 'I realy like to watch UFC fights.'),
(4, 'Travis', 'Football', 'travis@travis.com', 'mesaj babcnkmfzkxcglfghzsfh\r\nzsfghsdrhasr\r\nsrghsdfhsdh'),
(5, '', '', '', ''),
(6, '', '', '', ''),
(7, 'Vasile', 'PSD', 'vasile@vasile.com', 'Jos PSD. sdagcnukma'),
(8, 'Mike', 'Job', 'mike@mike.com', 'Please give me a job.');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(15) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_code`, `product_name`, `product_desc`, `price`, `units`, `total`, `date`, `email`) VALUES
(12, 'JT4', 'Janta aliaj Ats Emotion 7.5x17 5x120 et32', 'ATS este un brand cu 40 de ani de experienta in lumea curselor cu motor.\r\nSe potriveste pe BMW seria 3 dupa 2012.Culoare racing-black.', 120, 4, 480, '2017-02-07 09:30:06', 'sjobs@apple.com'),
(17, 'JT4', 'Janta aliaj Ats Emotion 7.5x17 5x120 et32', 'ATS este un brand cu 40 de ani de experienta in lumea curselor cu motor.\r\nSe potriveste pe BMW seria 3 dupa 2012.Culoare racing-black.', 120, 2, 240, '2017-02-08 07:41:38', 'mex@yahoo.com'),
(18, 'JT9', 'Janta Aliaj Mak Luft W Gun 8j17 5 X 120 Et34', 'Acest model se adreseaza in mod special pasionatilor de Bmw, sportivitatea si eleganta fiind elemente ce definesc aceste jante.', 185, 2, 370, '2017-02-08 07:41:38', 'mex@yahoo.com'),
(19, 'JT9', 'Janta Aliaj Mak Luft W Gun 8j17 5 X 120 ET34', 'Acest model se adreseaza in mod special pasionatilor de Bmw, sportivitatea si eleganta fiind elemente ce definesc aceste jante.', 185, 4, 740, '2017-02-08 12:28:58', 'mex@yahoo.com'),
(20, 'JT3', 'Janta aliaj GMP ATOM BLACK DIAMOND 8.5x19 5x112 ET 35', 'Color black-diamond. Best suited for a coupe car or a sports-looking car with a lot of horesopwer.dfhdfhzdfhzdfh', 199, 3, 597, '2017-02-08 15:55:51', 'sjobs@apple.com'),
(21, 'JT3', 'Alloy wheel GMP ATOMIC 8.5x19 5x112 ET35', 'Color black-diamond. Best suited for a coupe car or a sports-looking car with a lot of horesopwer. TUV and RAR certified', 199, 1, 199, '2017-02-10 19:49:44', 'gigi@gigi.com'),
(22, 'JT3', 'Alloy wheel GMP ATOMIC 8.5x19 5x112 ET35', 'Color black-diamond. Best suited for a coupe car or a sports-looking car with a lot of horesopwer. TUV and RAR certified', 199, 1, 199, '2017-02-12 15:38:05', 'mex@mex.com'),
(23, 'JT9', 'Alloy wheel Mak Luft Gun 8j17 5 X 120 ET34', 'This model suits best BMW 3 series and 5 series (2012-2016) cars, because of their sportiness and elegant look.', 185, 4, 740, '2017-02-12 15:39:55', 'pop@pop.com'),
(24, 'JT3', 'Alloy wheel GMP ATOMIC 8.5x19 5x112 ET35', 'Color black-diamond. Best suited for a coupe car or a sports-looking car with a lot of horesopwer. TUV and RAR certified', 199, 1, 199, '2017-02-12 15:40:21', 'pop@pop.com'),
(25, 'JT5', 'Alloy wheel Momo Next 5/120 18X8 ET35 ', 'Alloy wheel with a  modern design. Best suited for cars like Audi  A4, A5 and Mercedes-Benz C-class and E-class models.', 140, 2, 280, '2017-02-12 15:40:21', 'pop@pop.com'),
(26, 'JT3', 'Alloy wheel GMP ATOMIC 8.5x19 5x112 ET35', 'Color black-diamond. Best suited for a coupe car or a sports-looking car with a lot of horesopwer. TUV and RAR certified', 199, 1, 199, '2017-02-13 11:14:09', 'mex@mex.com'),
(27, 'JT3', 'Alloy wheel GMP ATOMIC 8.5x19 5x112 ET35', 'Color black-diamond. Best suited for a coupe car or a sports-looking car with a lot of horesopwer. TUV and RAR certified', 199, 1, 199, '2017-02-15 12:26:53', 'mex@mex.com');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `qty`, `price`) VALUES
(1, 'JT1', 'Alloy wheel GMP DYNAMIK 10x21 5x120 ET40', 'Recomanded for most SUV''s. Best suited for BMW X5 or X6 model. It has TUV and RAR certification. Color black-diamond.', 'janta-aliaj-GMP-DYNAMIK.jpg', 14, '255.00'),
(2, 'JT2', 'Alloy Wheel AEZ Phoenix 9x20 5X120 ET46 ', 'This alloy wheel  is best suited for SUV''s.\r\nPerfect for Mercedes clasa M, Cayenne, X5 sau Range Rover. TUV and RAR certified.', 'janta-aliaj-AEZ-Phoenix .jpg', 14, '205.00'),
(3, 'JT3', 'Alloy wheel GMP ATOMIC 8.5x19 5x112 ET35', 'Color black-diamond. Best suited for a coupe car or a sports-looking car with a lot of horesopwer. TUV and RAR certified', 'janta-aliaj-GMP-Atom.jpg', 3, '199.00'),
(4, 'JT4', 'Alloy wheel Ats Emotion 7.5x17 5x120 ET32', 'ATS is a brand with 40 years ofexperience in the automovive  world. Recomanded for BMW 3 series 2012.Color:racing-black.', 'janta-aliaj-Ats-Emotion.jpg', 6, '120.00'),
(5, 'JT5', 'Alloy wheel Momo Next 5/120 18X8 ET35 ', 'Alloy wheel with a  modern design. Best suited for cars like Audi  A4, A5 and Mercedes-Benz C-class and E-class models.', 'janta-aliaj-Momo-Next-Silver.jpg', 18, '140.00'),
(6, 'JT6', 'Alloy wheel Anzio Vision 8x18 5x120 ET33 ', 'Anzio is a brand, "Made-in-Europe", wich adresses drivers who want superior quality at a reasonable price.Color grafit-matt.', 'janta-aliaj-Anzio-Vision-Grafit-Matt.jpg', 16, '180.00'),
(7, 'JT7', 'Alloy wheel Momo Drone 5/120 18X8 ET35', 'Alloy wheel that looks like the original from Audi. Color: Matt Dark Grey. TUV si RAR certified. The clinet can opt for the original caps.', 'janta-aliaj-Momo-Drone.jpg', 18, '160.55'),
(8, 'JT8', 'Alloy wheel Mak Gun 9.5j20 5 X 120 Et40', 'Out of respect for the car which you are driving, Mak has specially designed the model MAk Highlands. For Land Rover and Range Rover owners.', 'janta-aliaj-Mak-Highlands-Gun.jpg', 36, '175.00'),
(9, 'JT9', 'Alloy wheel Mak Luft Gun 8j17 5 X 120 ET34', 'This model suits best BMW 3 series and 5 series (2012-2016) cars, because of their sportiness and elegant look.', 'janta-aliaj-Mak-Luft-W-Gun .jpg', 22, '185.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `city`, `email`, `password`, `type`) VALUES
(1, 'Steve', 'Jobs', 'Sunset Boulevard, nr.31', 'California', 'sjobs@apple.com', 'steve', 'user'),
(2, 'Admin', 'Webmaster', 'Internet', 'Barcelona', 'admin@admin.com', 'admin', 'admin'),
(3, 'Mexican', 'Pescara', 'Gringo boulevard, nr. 205', 'Culiacan', 'mex@mex.com', 'mex', 'user'),
(4, 'Gigi', 'Becali', 'Bulevardul Magheru nr.28', 'Bucuresti', 'gigi@gigi.com', 'gigi', 'user'),
(5, 'Andrei', 'Pop', 'str. Teiului nr.10', 'Cluj Napoca', 'pop@pop.com', 'pop', 'user'),
(6, 'Alex', 'Bunea', 'str.Horea, nr.15', 'Cluj Napoca', 'alex@alex.com', 'alex', 'user'),
(9, 'Vasile', 'Lupas', 'str.Dunarii, nr.30', 'Huedin', 'lupas@lupas.com', 'lupas', 'user'),
(18, 'nou', 'nnuo', 'str. Noua, nr.7', 'Bucuresti', 'nou@nou.com', 'nou', 'user'),
(24, 'Alex', 'Baldwin', '19 Sunset Boulevard', 'Los Angeles', 'bald@bald.com', 'bald', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
