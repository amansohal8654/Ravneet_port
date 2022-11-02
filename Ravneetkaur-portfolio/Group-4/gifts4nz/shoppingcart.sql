-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2018 at 01:22 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shoppingcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `birthday_prod`
--

CREATE TABLE IF NOT EXISTS `birthday_prod` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(900) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `birthday_prod`
--

INSERT INTO `birthday_prod` (`id`, `name`, `image`, `price`, `description`) VALUES
(1, 'Birthday''s', 'images/special/birthdaycard2.jpg', 35.00, 'This card features a hand drawn girl face that’s perfect for friend!'),
(2, 'Birthday''s', 'images/special/birthdaycard1.jpg.jpg', 10.00, 'Celebrate with this blue gold printed card'),
(3, 'Birthday''s', 'images/hampers/2.jpg', 250.00, 'This hamper is a brilliant, unique alternative to the conventional baby gift basket.');

-- --------------------------------------------------------

--
-- Table structure for table `celebration_prod`
--

CREATE TABLE IF NOT EXISTS `celebration_prod` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(900) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `celebration_prod`
--

INSERT INTO `celebration_prod` (`id`, `name`, `image`, `price`, `description`) VALUES
(1, 'Celebration', 'images/special/celebrationcard1.jpg', 25.00, 'Trend celebration card for used embossed gold metallic.'),
(2, 'Celebration', 'images/special/anniversarycard1.jpg', 25.00, 'Celebrate the most wonderful of news with a classy card bursting with love.'),
(3, 'Celebration', 'images/hampers/3.jpg', 550.00, 'This Hamper is for the lady who likes to indulge in the finer things of life.');

-- --------------------------------------------------------

--
-- Table structure for table `christmas_prod`
--

CREATE TABLE IF NOT EXISTS `christmas_prod` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(900) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `christmas_prod`
--

INSERT INTO `christmas_prod` (`id`, `name`, `image`, `price`, `description`) VALUES
(1, 'Christmas', 'images/special/christmascard1.jpg', 40.00, 'A fun Christmas card, featuring a reindeer peeping out from the bottom of the card.'),
(2, 'Christmas', 'images/special/christmascard2.jpg', 40.00, 'Show someone you care and are thinking of them this Christmas with this delicate and thoughtful thinking of you Christmas card.'),
(3, 'Christmas', 'images/hampers/5.jpg', 550.00, 'This is one of our most popular gift hampers for all occasions');

-- --------------------------------------------------------

--
-- Table structure for table `her_prod`
--

CREATE TABLE IF NOT EXISTS `her_prod` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(900) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `her_prod`
--

INSERT INTO `her_prod` (`id`, `name`, `image`, `price`, `description`) VALUES
(1, 'Women''s blazzers', 'images/her/blaggers.jpg', 300.00, 'The unique and high-quality items provide you a long lasting outerwear.'),
(2, 'Women''s Lipsticks', 'images/her/lipstick.jpg', 50.00, 'Different Colours and Shades to Beautify the lips'),
(3, 'Women''s Perfumes', 'images/her/perfume.jpg', 65.00, 'The perfume lingers on the skin, drying down to a dreamy finish of white woods, musk, and an elusive hint of coconut water.'),
(4, 'Women''s Scarfs', 'images/her/scarf.jpg', 30.00, 'A gorgeous grey bird and leaf print scarf with a muted trim.'),
(5, 'Special Teddy bears', 'images/her/teddybear.jpg', 75.00, 'They are amazingly soft and huggable, and everyone just loves them.'),
(6, 'Women''s Wines', 'images/her/wine.jpg', 250.00, 'Red, Strong, Mild Wines in Different varieties of fruits and added materials.'),
(7, 'women''s Watches', 'images/his/watch.jpg', 89.00, 'The watch is beautifully presented in Elie Beaumont''s trademark gift box and leather watch protector.'),
(8, 'Special Chocolates', 'images/her/chocolate.jpg', 56.00, 'It''s a milk, dark and white chocolates is even more captivating.'),
(9, 'Special Hampers', 'images/hampers/2.jpg', 450.00, 'This hamper is a brilliant, unique alternative to the conventional baby gift basket.');

-- --------------------------------------------------------

--
-- Table structure for table `his_prod`
--

CREATE TABLE IF NOT EXISTS `his_prod` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(900) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `his_prod`
--

INSERT INTO `his_prod` (`id`, `name`, `image`, `price`, `description`) VALUES
(1, 'Men''s Wines', 'images/his/bottle_him.jpg', 200.00, 'Red, Strong, Mild Wines in Different varieties of fruits and added materials.'),
(2, 'Men''s Pens', 'images/his/pen.jpg', 70.00, 'Enhanced by your chosen name or message engraved on the pen, it''s a thoughtful gift for congratulating, rewarding, thanking, or just because.'),
(3, 'Men''s Shirts', 'images/his/shirt.jpg', 150.00, 'Blue woven denim casual shirt with a washed effect, has a spread collar, a full button placket, a patch pocket, long sleeves, a curved hemline'),
(4, 'Men''s socks', 'images/his/socks.jpg', 60.00, 'This sock box filled with three pairs of socks each decorated with arrows and triangles, perfect for adding style and pattern to your wardrobe.'),
(5, 'Men''s Sunglasses', 'images/his/sunglasses.jpg', 99.00, 'Premium natural frames original wooden casual polarized lens sunglasses men and women with gift box.'),
(6, 'Men''s Ties', 'images/his/tie.jpg', 80.00, 'Perfectly woven with silk and polyester that''s why it is soft and smooth textured.'),
(7, 'Men''s watches', 'images/his/watch.jpg', 350.00, 'The watch is beautifully presented in Elie Beaumont''s trademark gift box and leather watch protector.'),
(8, 'Dark Chocolates', 'images/her/chocolate.jpg', 120.00, 'It''s a milk, dark and white chocolates is even more captivating.'),
(9, 'Special Hampers', 'images/hampers/4.jpg', 400.00, 'The ultimate champagne gift basket includes equally refined chocolate truffles.');

-- --------------------------------------------------------

--
-- Table structure for table `kids_prod`
--

CREATE TABLE IF NOT EXISTS `kids_prod` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(900) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `kids_prod`
--

INSERT INTO `kids_prod` (`id`, `name`, `image`, `price`, `description`) VALUES
(1, 'kid''s Clothes', 'images/kids/clothes.jpg', 40.00, 'The little outfit comes with a long sleeve wrap-over top, matching hat and footed trousers.'),
(2, 'Kid''s Colouring material ', 'images/kids/crayon.jpg', 25.00, 'Kid''s will have so much creative fun making decorative cards, gifts and holiday crafts'),
(3, 'Kid''s Games', 'images/kids/games.jpg', 35.00, 'DisneyCarToys Sandra and Spidey play Jumping Jack a fun game where you pull carrots and have to catch a leaping bunny.'),
(4, 'Kid''s Soft Toys', 'images/kids/soft toys.jpg', 55.00, 'This colourful stacking cement toy is an ideal addition to any child''s bed or play room.'),
(5, 'Kid''s Teddy Bears', 'images/kids/teddy bear.jpg', 70.00, 'Brown Teddy Bear Soft Plush Toys Stuffed Animals Adorable Gift for Kids Children.'),
(6, 'Kid''s Toys', 'images/kids/toys.jpg', 65.00, 'Wooden Train Pull Preload Road Block Fun Toy Set Toddler Educational Toy Train Set');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(900) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `image`, `price`, `description`) VALUES
(9, ' Wines', 'images/his/bottle_him.jpg', 200.00, 'Red, Strong, Mild Wines in Different varieties of fruits and added materials.'),
(10, 'Ladies Products', 'images/her/lipstick.jpg', 70.00, 'Different Colours and Shades to Beautify the lips'),
(19, 'Hampers', 'images/hampers/3.jpg', 250.00, 'wine, chocolate, candle various type of gift set.'),
(13, ' Watches', 'images/his/watch.jpg', 150.00, 'The watch is beautifully presented in Elie Beaumont''s trademark gift box and leather watch protector.'),
(15, 'Kids Toys', 'images/kids/soft toys.jpg', 50.00, 'This colourful stacking cement toy is an ideal addition to any child''s bed or play room.'),
(20, 'Chocolates', 'images/her/chocolate.jpg', 60.00, 'It''s a milk, dark and white chocolates is even more captivating.');

-- --------------------------------------------------------

--
-- Table structure for table `wedding_prod`
--

CREATE TABLE IF NOT EXISTS `wedding_prod` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(900) NOT NULL,
  `price` double(10,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wedding_prod`
--

INSERT INTO `wedding_prod` (`id`, `name`, `image`, `price`, `description`) VALUES
(1, 'Weddings', 'images/special/weddingcard1.jpg', 50.00, 'Laser Cut Wedding Invitations Card with Embossed Flower Printable Paper Cards.'),
(2, 'Weddings', 'images/special/weddingcard2.jpg', 50.00, 'Elegant laser cut design with modern calligraphy printing. All tied with lovely bow.'),
(3, 'Weddings', 'images/hampers/1.jpg', 450.00, 'This is an amazing hamper, bursting with milk chocolate flavours and ideal for families, friends and anyone who makes milk chocolate their number 1 treat.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `birthday_prod`
--
ALTER TABLE `birthday_prod`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `celebration_prod`
--
ALTER TABLE `celebration_prod`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `christmas_prod`
--
ALTER TABLE `christmas_prod`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `her_prod`
--
ALTER TABLE `her_prod`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `his_prod`
--
ALTER TABLE `his_prod`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kids_prod`
--
ALTER TABLE `kids_prod`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wedding_prod`
--
ALTER TABLE `wedding_prod`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `birthday_prod`
--
ALTER TABLE `birthday_prod`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `celebration_prod`
--
ALTER TABLE `celebration_prod`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `christmas_prod`
--
ALTER TABLE `christmas_prod`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `her_prod`
--
ALTER TABLE `her_prod`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `his_prod`
--
ALTER TABLE `his_prod`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `kids_prod`
--
ALTER TABLE `kids_prod`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `wedding_prod`
--
ALTER TABLE `wedding_prod`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
