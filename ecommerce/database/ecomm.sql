-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2021 at 02:22 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(18, 9, 9, 1),
(19, 9, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Madhya Pradesh', 'laptops'),
(2, 'Uttar Pradesh', 'desktop-pc'),
(3, 'Chattisgarh', 'tablets'),
(4, 'Bihar', 'Bihar'),
(7, 'Jammu State', 'Jammu State'),
(8, 'Tamil Nadu', 'Tamil Nadu');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'Woven Chanderi Cotton Silk Saree (FROM THE CITY OF CHANDERI)', '<h2>SKU : 10616066GR</h2>\r\n\r\n<h3>The famous Chanderi fabric is a hand-woven combination of silk and cotton. The town of Chanderi, where the craft originated, is still home to master weavers who practice the age-old tradition of creating the cloth on handlooms. Chanderi saris, woven in subtle, pleasant colours, with a rich gold border, are the most popular. The traditional bootis, or motifs, of the saris include lotuses and peacocks. It is said that when this incomparable cloth was first woven, the only colour used was an extraction from the much-prized saffron herb. The delicacy of the weave and the ratio of silk to cotton are the factors that decide the worth of the sari. Nowadays, you can also find scarves, salwar kameez and mens&rsquo; jackets made with Chanderi cloth.</h3>\r\n', 'woven-chanderi-cotton-silk-saree-city-of-chanderi', 719, 'dell-inspiron-15-7000-15-6_1623478582.jpeg', '2021-06-12', 1),
(2, 1, 'Bamboo Handcrafted water mug (FROM THE REGIONS OF SHADOL, BALAGHAT)', '<h2>SKU : 10616063GR</h2>\r\n\r\n<h3>The bamboo work of Madhya Pradesh is a reflection of its raw rural lifestyle, and continues to serve purposes both utilitarian as well as ornamental. Abundantly available in the regions of Shahdol, Balaghat, Mandla and Seoni, Bamboo is used to create products ranging from hunting tools to household baskets. The Baiga, Gond, and Korku tribal communities of MP are known to be the best in this craft, fusing ancestral expertise with contemporary designs.</h3>\r\n', 'bamboo-handcrafted-water-mug-regions-of-shadol-balaghat', 459, 'microsoft-surface-pro-4-typecover-128-gb_1623478165.jpg', '2021-06-08', 1),
(3, 1, 'Grey Polyester Carpet (FROM THE CITY OF JABALPUR, SHADOL)', '<h2>SKU : 10616065GR</h2>\r\n\r\n<h3>When we enter a room that has a shaggy carpet, the feeling is very warm and welcoming! The white N gray colour abstract shaggy carpet ensures a different and colorful aesthetic look for your rooms. This multi-coloRed design shaggy carpet is made to add color to your flooring. It is highly durable.</h3>\r\n', 'grey-polyester-carpet-city-of-jabalpur-shadol', 5999, 'dell-inspiron-15-5000-15-6_1623478405.jpeg', '2021-06-12', 2),
(4, 1, 'Women Salwar & Kurta Set Pure Cotton (FROM THE CITY OF DHAR)', '<h2>SKU : 10616067GR</h2>\r\n\r\n<p>Although block prints are largely associated with Rajasthan, the residents of Madhya Pradesh much prefer their own bagh prints. This bold, vibrant hand-block printing originates from Bagh village in the district of Dhar. While there are several imitations of the original print now, the real stuff is still made with organic dyes &ndash; and you can tell which is authentic by the cloth&rsquo;s distinctive smell. The process is slow, and involves treating the cloth in a mixture that includes sea salt and castor oil. The prints &ndash;geometrical, floral patterns &ndash;themselves are done by hand, and the teakwood blocks used for printing are also crafted painstakingly by hand.</p>\r\n', 'women-salwar-kurta-set-pure-cotton-city-of-dhar', 710, 'lenovo-ideapad-320s-14ikb-14-laptop-grey_1623478875.jpeg', '2021-06-04', 1),
(5, 3, 'Godna Inspired Bedsheet (FROM THE REGION OF JAMGALA)', '<h2>SKU : 10616786GR</h2>\r\n\r\n<h3>Godna is perhaps the most ground-breaking art form, presently practiced by handful of women in Jamgala district of Chhattisgarh. Ladies paint conventional tattoo motifs on textiles. They make use of natural color acquired from the forest and merge them with acrylic paint to craft it more constant on fabric.</h3>\r\n', 'godna-inspired-bedsheet-region-of-jamgala', 2999, 'apple-9-7-ipad-32-gb-gold_1623483064.jpg', '2018-07-09', 3),
(6, 1, 'Tribal Folk Painting (FROM THE REGIONS OF MALWA, NIMAR)', '<h2>SKU : 10616064GR</h2>\r\n\r\n<h3>The Folk paintings of Madhya Pradesh are world famous for its beautiful representation of art combined with daily lives of tribal people of Madhya Pradesh. These paintings also depict auspicious beliefs of rural rustic people and their emotions. The festivities can be seen in these colorful paintings. These paintings not only serve the purpose of d&eacute;cor but also have strong religious roots. It is also a famous handicraft In Delhi.</h3>\r\n', 'tribal-folk-painting-regions-of-malwa-nimar', 4999, 'dell-inspiron-15-5000-15_1623478285.jpg', '2021-06-12', 1),
(7, 3, 'Kashta Shilp Tribal Scripture (FROM THE TRIBES OF BADHAIS)', '<h2>SKU : 10616785GR</h2>\r\n\r\n<h3>Another form of craft is woodcraft. People of Chhattisgarh utilize wood for many things. Badhais tribe is expert in this craft.</h3>\r\n', 'kashta-shilp-tribal-scripture-tribes-of-badhais', 10999, 'apple-10-5-ipad-pro-64-gb-space-grey-2017_1623482937.jpg', '0000-00-00', 0),
(8, 1, 'Tribal Men Standing Statue (FROM THE CITY OF TIKAMGARH)', '<h2>SKU : 10616062GR</h2>\r\n\r\n<h2>Tikamgarh is a town situated around 85 kms from Chanderi which is famous for its weaving culture.The bell metal casting in Madhya Pradesh&#39;s Tikamgarh has been practiced for over three centuries. The craftsmanship initially catered to kings and soldiers for war weapons. Today, all kind of decorative items are crafted here for every need and desire.</h2>\r\n', 'tribal-men-standing-statue-city-of-tikamgarh', 2199, 'asus-transformer-mini-t102ha-10-1-2-1-silver_1623478014.jpg', '0000-00-00', 0),
(9, 2, 'Meenakari Embroidered earring (FROM THE CITY OF BABA VISHWANATH(VARANASI))', '<h2>SKU : 10615959GR</h2>\r\n\r\n<h3>Bridal Wedding Traditional Meenakari Multicolor Peacock Jhumki Earring Jewellery Stylish Fancy Bollywood Celebrity Style Party Wear Jhumki / Jhumka Earrings For Women &amp; Girls Pearl Copper Jhumki Earring</h3>\r\n', 'meenakari-embroidered-earring-city-of-baba-vishwanath-varanasi', 424, 'pc-specialist-vortex-core-lite-gaming-pc_1623475925.jpeg', '2021-06-12', 4),
(10, 2, 'Athizay Marble Elephant statue (From the City of Taj)', '<h2>SKU : 10615954GR</h2>\r\n\r\n<h3>Handcrafted offwhite Pure Marble Gold plated elephant looks Gorgeous and Majestic. An aristocratic Piece for gifting to friends or Colleague.Plating: Gold; It is also a fine item for corporate gifting. Simple and classy. The Marble Items are long lasting and elegant in appeal. It can be clean and maintained easily for long. It does not loose its shine and appeal for years ahead since marble and that too with gold plated is a durable Item. Use them to stay on trend. athizay offers the same pop of classical style without the big price tag to its customer. Incorporating Marble in small doses to your Space will give a big bang for your buck. shop freely from us, be assured for 100% genuine Marble Handicraft.</h3>\r\n', 'athizay-marble-elephant-statue-city-of-taj', 3040, 'athizay-marble-elephant-statue-city-of-taj_1623474986.jpeg', '2021-06-12', 3),
(11, 2, 'AMOR Artificial Flower Pot (FROM THE CITY OF MEERUT, KHURJA & HAPUR )', '<h1>SKU : 10615955GR</h1>\r\n\r\n<h3>Artificial Flower Pot | Flower vase for Home Decoration | Flower Pot for Artificial Flowers Glossy Wooden Vase for Artificial Flower</h3>\r\n', 'amor-artificial-flower-pot-city-of-meerut-khurja-hapur', 380, 'amor-artificial-flower-pot-city-of-meerut-khurja-hapur_1623475292.jpg', '2021-06-12', 1),
(12, 2, 'Lucknow\'s Chikan long Kurta', '<h2>SKU : 10615953GR</h2>\r\n\r\n<h3>Mens Kurta.&nbsp;<strong>Disclaimer:</strong>&nbsp;There may be some minor dissimilarities in crafting and embroidery than showcase image. Since it is hand crafted product and these minor differences are natural when the crafting procedure has human involvement. However these crafting changes are beautiful likewise show uniqueness.&nbsp;<strong>Note:</strong>&nbsp;Product maybe altered down by one size if required. For instance size 40 can be altered to size 38.</h3>\r\n', 'lucknow-s-chikan-long-kurta', 1790, 'lucknow-s-chikan-long-kurta_1623128178.jpg', '2021-06-12', 1),
(13, 2, 'Ajmal MUKHALLAT AL WAFA Floral Attar (From the city of Kannauj)', '<h2>SKU : 10615956GR</h2>\r\n\r\n<h3>A sparkling fragrance with bright fresh spicy notes derived from Lemon and Bergamot, Mukhallat Al Wafaa is created for those individuals who are confident and love the great out doors. Sandalwood and Patchouli combine to give the fragrance a woody spicy head settling into a Powdery Oudh inspired base through the use of Vanilla and Agarwood.</h3>\r\n', 'ajmal-mukhallat-al-wafa-floral-attar-city-of-kannauj', 450, 'hp-pavilion-power-580-015na-gaming-pc_1623475409.jpg', '2021-06-12', 2),
(14, 2, '1L Tea Glass/Pot with Strainer (FROM THE CITY OF BANGLES(FIROZABAD))', '<h2>SKU : 10615957GR</h2>\r\n\r\n<h3>BOROFOOD Carafe can be used directly on the flame and hot plate. Not to be used in Microwave., Package Contents: 1-Piece Carafe with Strainer in Lid (1000 ML), Color: Transparent, Material: Borosilicate Glass, Made of borosilicate glass and is guaranteed to withstand temperatures of upto 350 degree centigrade</h3>\r\n', '1l-tea-glass-pot-strainer-city-of-bangles-firozabad', 849, '1l-tea-glass-pot-strainer-city-of-bangles-firozabad_1623475694.jpeg', '2018-05-10', 13),
(15, 2, 'Home Style Multicolor Cotton Carpet (FROM THE CITY OF CARPET(BADHOHI))', '<h2>SKU : 10615960GR</h2>\r\n\r\n<h3>JUSTWAY chillen CARPET Warm ... quiet ... cushy and comfy! Carpet makes a home, well, homier. But it also serves as a striking design element. With so many colors and textures to choose from, there&rsquo;s one perfectly suited for your budget. Find the carpet that helps you express your unique style.</h3>\r\n', 'home-style-multicolor-cotton-carpet-city-of-carpet-badhohi', 259, 'pc-specialist-vortex-minerva-xt-r-gaming-pc_1623476170.png', '2018-07-09', 1),
(16, 2, 'Silk Saree With Zardozi Work Blouse (FROM THE CITY OF BABA VISHWANATH(VARANASI))', '<h2>SKU : 10615958GR</h2>\r\n\r\n<h3>ascinating &amp; Pristine Maroon Silk Saree With Heavy Embroidered Silk Velvet Border Paired With Attractive Zardozi Work Maroon Silk Velvet Blouse. Style Code : YMN-25 Colour : Maroon Fabric : Silk, Silk Velvet Number Of Pieces In Set : 2 Wash Care : Dry Clean Only For Customisation, Email Us On customercare@anjumodi.com</h3>\r\n', 'silk-saree-zardozi-work-blouse-city-of-baba-vishwanath-varanasi', 150000, 'pc-specialist-vortex-core-ii-gaming-pc_1623475757.jpg', '2021-06-12', 3),
(17, 3, 'Horse loha Shilp Carved Scripture (FROM THE REGIONS OF BASTAR)', '<h2>SKU : 10616782GR</h2>\r\n\r\n<h3>Loha Shilp or wrought iron is used to craft dark raw forms of metal figurines or artifacts and is another form of craft in Chhattisgarh. The raw material used for this craft is frequently recycled scrap iron. Things like candle stands, lamps, effigies of musicians, figurines, deities and toys are the distinctive products made of this craft.</h3>\r\n', 'horse-loha-shilp-carved-scripture-regions-of-bastar', 13000, 'amazon-fire-7-tablet-alexa-2017-8-gb-black_1623482515.jpg', '2018-05-12', 1),
(18, 3, 'Dhokra art Scripture (FROM THE REGIONS OF BASTAR)', '<h2>SKU : 10616783GR</h2>\r\n\r\n<h3>Raigarh and Bastar districts of Chhattisgarh are admired for crafting bell metal handicrafts with bronze and brass. Tribes like &lsquo;Jharas&rsquo; of Raigarh and &lsquo;Ghadwas&rsquo; of Bastar generally practice this form of art, which is also identified as Dhokra art. This is done with hollow casting and lost wax technique.</h3>\r\n', 'dhokra-art-scripture-regions-of-bastar', 23000, 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black_1623482624.jpg', '2021-06-12', 1),
(19, 3, 'Terracota Scriptures (FROM THE REGIONS OF BASTAR)', '<h2>SKU : 10616784GR</h2>\r\n\r\n<h3>Like in other states, Terracotta has found a place in handicrafts in Chhattisgarh. Terracotta pottery represents the customs and rituals of tribal life in Chhattisgarh and represents their emotions.</h3>\r\n', 'terracota-scriptures-regions-of-bastar', 18490, 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black_1623482742.jpg', '2018-05-10', 1),
(20, 3, 'Tumba Inspired Tribal Horn (FROM THE REGIONS OF BASTAR)', '<h2>SKU : 10616787GR</h2>\r\n\r\n<h3>Tumba is a less recognized craft extensively produced in Bastar region, which instigated with the extensive use of hollow gourd shells. Tribals employ them as containers to accumulate water and salfi, from which this art is stimulated.</h3>\r\n', 'tumba-inspired-tribal-horn-regions-of-bastar', 4999, 'apple-9-7-ipad-32-gb-space-grey_1623483164.jpg', '2018-05-12', 1),
(27, 1, 'Woven Maheshwari Jacquard, Silk Saree (FROM THE CITY OF MAHESHWAR)', '<h2>SKU : 10616067GR</h2>\r\n\r\n<h3>Maheshwari is also a fabric, somewhat similar to Chanderi. It is said to have originated from Maheshwar, a city approximately 90 km from Indore. The fabric was created by weavers, who were brought from Surat by Maharani Ahilya Bai Holkar (1725-1795) to weave cloth for the royal household. The queen, particularly partial to floral designs, and thus the weavers, commanded to only create geometrical motifs, drew inspiration from the detailing of the Maheshwar Fort. Thus, even today, the main difference between Maheshwari and Chanderi saris is the former&rsquo;s distinctive design, which comprises checks and stripes, while Chanderi has a less austere touch with pretty floral motifs woven throughout the sari.</h3>\r\n', 'woven-maheshwari-jacquard-silk-saree-city-of-maheshwar', 899, 'dell-xps-15-9560_1623478699.jpeg', '2018-07-09', 9),
(28, 4, 'Manjusha Painting Framed (FROM THE REGIONS OF BHAGALPUR)', '<h2>SKU : 10616073GR</h2>\r\n\r\n<h3>&ldquo;Manjusha Art&rdquo; is the heritage of Anga Pradesh. According to Vedic historians, this art is the art of the Indus-Valley civilization. In which the story of &lsquo;BihulaBishari&rsquo; is depicted. It is the first folk traditional art in Asia. Which is a full story. This art originated in the state capital, Champa.Which is currently located in Bhagalpur Bihar. Based on folklore and folklore, Bihula traveled to heaven by water carrying the body of her famine, fictitious, serpent-bitten husband Bala-Lakhendra in a multi-story boat NumaManjusha built by DevShilpiVishwakarma, and returned her dead husband alive and called Sati.</h3>\r\n', 'manjusha-painting-framed-regions-of-bhagalpur', 12000, 'samsung-note-8_1623481057.jpg', '2021-06-06', 1),
(29, 4, 'Madhubani Painting Framed (FROM THE REGIONS OF MITHILA)', '<h2>SKU : 10616072GR</h2>\r\n\r\n<h3>Madhubani painting or Mithila painting is a style of art in the Mithila region of Bihar in India. Madhubani paintings are made using natural colors and pigments using fingers, twigs, brushes, nib-pens and matchsticks and are characterized by attractive geographical patterns. Madhubani paintings are usually about occasions and festivals like birth, marriage, Holi, Surya Shastri, Durga Puja and other important days of Hindu calendar and culture. The gaps are filled with paintings of flowers, animals, birds, and even geometric designs.</h3>\r\n', 'madhubani-painting-framed-regions-of-mithila', 15000, 'samsung-galaxy-s9-128-gb_1623480910.jpeg', '2021-06-06', 1),
(30, 2, 'Metal Handicrafts Swastik Ganesh (FROM THE CITY OF MORDADABAD)', '<h2>SKU : 10615961GR</h2>\r\n\r\n<h3>Metal Handicraft Metal Golden Finish Swastik ganesh (Satiya Ganesh). Swastik ganesh is gold plated with antique finish so looks very beautiful and use for the purpose of worship and for home decorative. It&#39;s design to looks traditional stylish and inspiration from the day&#39;s of royal touch, that is made in white-metal casting with silver antiques finish, white metal to bring elegance to your home. This is hand made handcrafted items use it to religious worship of god&amp;goddess. That is use and utility items &amp; an ideals gift it to your dear once to pass on your best wishes, that is an ideal gift for have House warming anniversaries, birthday, wedding gifts, return gifts, corporation gifts, religious-gifts &amp; Indian festivals. Our White Metal Gold Plated Wall Hangaings is an impressive piece of art that is made from the finest-grade raw materials and intricately designed by our teams of adroit designers and craftsmen using high-end technologies</h3>\r\n', 'metal-handicrafts-swastik-ganesh-city-of-mordadabad', 355, 'metal-handicrafts-swastik-ganesh-city-of-mordadabad.jpeg', '0000-00-00', 0),
(31, 2, 'Hand printed Wooden Printing Block Poplar (FROM THE CITY OF FARUKKHABAD)', '<h2>SKU : 10615962GR</h2>\r\n\r\n<h3>The oldest craft in the India as well as Uttar Pradesh is hand printing. The patterns and the skill has survived the modern times in fact has re-emerged as one of the commendable arts and crafts of the country. The traditional fabric patterns are butis (polka dots) and the &lsquo;tree of life&rsquo;, paisley, Persian pickles, etc. which are the most impressive creations. The city of Farrukhabad is lauded for hand printing. Wooden blocks are also used in recent times, keeping the fascinating craft alive and evolving.</h3>\r\n', 'hand-printed-wooden-printing-block-poplar-city-of-farukkhabad', 199, 'hand-printed-wooden-printing-block-poplar-city-of-farukkhabad.jpeg', '0000-00-00', 0),
(32, 1, 'Cotton Floor Durries (FROM THE CITY OF SIRONJ)', '<h2>SKU : 10616068GR</h2>\r\n\r\n<h3>Durries (rugs) in Madhya Pradesh have been made for centuries near Sironj, a city in Vidisha district, though now they are also made in Jabalpur and Shahdol, among other places. Made of thick cotton, the durries are woven by a technique called &lsquo;punja&rsquo;. They come in vibrant colours, with bold patterns and folk designs, including birds and animal motifs, and geometric weaves.</h3>\r\n', 'cotton-floor-durries-city-of-sironj', 1198, 'cotton-floor-durries-city-of-sironj.jpg', '0000-00-00', 0),
(33, 1, 'Batto Bai Dolls (FROM THE CITY OF JHABUA & BHOPAL)', '<h2>SKU : 10616069GR</h2>\r\n\r\n<h3>Named after their creator, a craftswoman from Gwalior, Batto Bai dolls are now made in Bhopal and Jhabua as well. Made of rags and paper, these rustic dolls are influenced by the different cultures of the country. These are charmingly dressed in bright, traditional clothing, and in varying sizes, which can go up to 5 ft in height.</h3>\r\n', 'batto-bai-dolls-city-of-jhabua-bhopal', 3550, 'batto-bai-dolls-city-of-jhabua-bhopal.jpg', '0000-00-00', 0),
(34, 1, 'Zari Embroidered Silk Blend Saree (FROM THE CITY OF BHOPAL)', '<h2>SKU : 10616070GR</h2>\r\n\r\n<h3>Zari is a metallic thread, used for weaving and embroidery. It was originally made of gold or silver, which is no longer the case. However, that hasn&rsquo;t lessened the beauty of this craft, where talented artisans use the metallic thread to embroider delicate, intricate designs on items ranging from clothes and jootis (slippers) to bags. Bhopal&rsquo;s cacophonic Chowk market, in the middle of the old city, is where you can find beautifully embroidered and beaded batuas (purses).</h3>\r\n', 'zari-embroidered-silk-blend-saree-city-of-bhopal', 199999, 'zari-embroidered-silk-blend-saree-city-of-bhopal.jpeg', '0000-00-00', 0),
(35, 1, 'Camel Creative Leather Statue (FROM THE CITY OF DEWAS)', '<h2>SKU : 10616071GR</h2>\r\n\r\n<h3>Craftspeople in Madhya Pradesh have an age-old tradition of working with leather. The state&rsquo;s stuffed leather toys are famous, with camels, zebras and elephants being the most popular. The craft has evolved over time, and today Gwalior is known for shoes, and Indore and Dewas for leather apparel. Most factories in Dewas, in fact, create apparel for large fashion houses based in Europe and the US.</h3>\r\n', 'camel-creative-leather-statue-city-of-dewas', 1000, 'camel-creative-leather-statue-city-of-dewas.jpeg', '0000-00-00', 0),
(36, 1, 'Metal Natraj Statue for Home (FROM THE CITY OF TIKAMGARH)', '<h2>SKU : 10616072GR</h2>\r\n\r\n<h3>Although you will find beautifully made metal objects, ranging from idols of gods and goddesses to items of home d&eacute;cor across the length and breadth of Madhya Pradesh, Tikamgarh is where it all originated. The craft of bell metal casting has been practiced here for many centuries. The technique used is lost-wax casting, where a duplicate sculpture is cast from an original one, using wax as a mould. Although the number of craftspeople in Tikamgarh has declined, the few artisans that are left behind still make exquisite figurines, lamps, vessels and toys that are appreciated the world over.</h3>\r\n', 'metal-natraj-statue-home-city-of-tikamgarh', 30000, 'metal-natraj-statue-home-city-of-tikamgarh.jpg', '0000-00-00', 0),
(37, 4, 'Tikuli Painting Framed (FROM THE CAPITAL CITY OFBIHAR (PATNA))', '<h2>SKU : 10616074GR</h2>\r\n\r\n<h3>Tikuli art is a unique art form of Bihar. Which contains a rich and deep traditional history. The word Tikuli is called Bindi in the local language which is usually in the form of a very shiny dot. The woman puts her forehead between the two eyebrows. In the past, Bindi was created as a poetic tool for worshiping the intellect and preserving the modesty of women. Tikuli art originated 800 years ago from Patna. The Mughals also patronized this form of art and greatly appreciated its importance. No art outside Bihar can be counted with Tikuli art. This art is a complex technique that requires a lot of hard work. This is a rare feature of Bihar and no such work is found anywhere else.</h3>\r\n', 'tikuli-painting-framed-capital-city-ofbihar-patna', 17999, 'tikuli-painting-framed-capital-city-ofbihar-patna.jpg', '0000-00-00', 0),
(38, 4, 'Patna Kalam Painting Framed (FROM THE CAPITAL CITY OFBIHAR (PATNA))', '<h2>SKU : 10616075GR</h2>\r\n\r\n<h3>The Patna Kalam or &lsquo;Indo British Style&rsquo; developed under the patronage of the British, coinciding with the miniature painting style of India and the British style. It was the predominance of individual paintings, and pictures drawn in this style emerged from the midst of the tragedies of ordinary life.The Patna Kalam style was independently the first such art style in the world to place common people and their lives on canvas. This style, based on watercolor, began in the Mughal court and the British court around 1760. It was started by Nohar and Manohar, two artists of the court of Mughal emperor Akbar.Later his disciples came to Patna and made many experiments in this style and created artworks on the lifestyle of common people.</h3>\r\n', 'patna-kalam-painting-framed-capital-city-ofbihar-patna', 45999, 'patna-kalam-painting-framed-capital-city-ofbihar-patna.jpg', '0000-00-00', 0),
(39, 4, 'Lord Buddha Sikki Hancrafted (FROM THE REGION OF MITHLANCHAL)', '<h2>SKU : 10616076GR</h2>\r\n\r\n<h3>The people, especially women, started making characters for storage of grains and household items from the flowering of Sikkhi grass in the waterlogged areas of Mithilanchal. In those days, almost every household in Mithilanchal used to make daily use items like Dalia, Mauni, Daura, Chattai etc. from Sikki grass. Over time there were changes in the productions made from them.Apart from food grains, toys, dolls etc. were also made for the entertainment of children and it was called as Sikki Crafts. Children also started learning to make toys, animals, birds etc. from Sikki. Some made a lion of Sikki, some a doll. The marriages of these dolls were also done with great pomp. The old women of the house used to teach the girls how to run family and family through them.</h3>\r\n', 'lord-buddha-sikki-hancrafted-region-of-mithlanchal', 7999, 'lord-buddha-sikki-hancrafted-region-of-mithlanchal.jpeg', '0000-00-00', 0),
(40, 4, 'LAC Bangles (FROM THE CAPITAL CITY OFBIHAR (PATNA))', '<h2>SKU : 10616077GR</h2>\r\n\r\n<h3>The word bangle is derived from a Hindi word &ldquo;bangli&rdquo; meaning glass. Various metals like bronze, copper, gold and silver have been used to make bangles through centuries. But the art of making lac bangles is unique to India. This natural resin has been mentioned in Indian texts as ancient as the Vedas, where the Laksha taru (the Lac tree) has been mentioned. In the Atharva Veda, there is a small chapter devoted to the description of Lac insect, its habits and usefulness.</h3>\r\n', 'lac-bangles-capital-city-ofbihar-patna', 499, 'lac-bangles-capital-city-ofbihar-patna.png', '2021-06-12', 2),
(41, 4, 'Sujani Embroidered Bedsheet (FROM THE REGION OF MUZZAFARPUR)', '<h2>SKU : 10616078GR</h2>\r\n\r\n<h3>Sujani is a tradition that has been going on for centuries. The sujani embroidery work of Bihar is a textile expression art product given protection under the GI registration.The earliest known traditional practice of making the embroidered Sujani quilt is traced to the 18th century. Its basic purpose was to give a soft cover to the newly born babies immediately after birth. It was then made with pieces of cloth in different colors derived from used saris and dhotis by sewing them together, adopting a simple running stitch. This process involved use of three or four patches of old saris or dhotis, fitted one over the other and then quilting them together using the thread that was also drawn from the discarded garments.</h3>\r\n', 'sujani-embroidered-bedsheet-region-of-muzzafarpur', 1200, 'sujani-embroidered-bedsheet-region-of-muzzafarpur.jpg', '0000-00-00', 0),
(42, 4, 'Khatwa Embroidered Bedsheet (FROM THE CITY OF AARAH)', '<h2>SKU : 10616079GR</h2>\r\n\r\n<h3>The applique and patchwork of Bihar is locally called Khatwa. Aplique is ornamental needle work in which pieces of fabric in different shapes and patterns are sewn or stuck onto a larger pieces to form a picture or pattern. It is commonly used as decoration, especially on garments. Applique is one of the major textile techniques which has found its way in almost every section of the fashion industry, from luxury designer products to regular craft expo goodies which sits in every Indian households, the wall hangings to the bed sheets. In the modern world of fashion where designs are created at one part of the world</h3>\r\n', 'khatwa-embroidered-bedsheet-city-of-aarah', 1800, 'khatwa-embroidered-bedsheet-city-of-aarah.jpg', '0000-00-00', 0),
(43, 4, 'Jute Bags (FROM THE CITY OF KATHAR)', '<h2>SKU : 10616080GR</h2>\r\n\r\n<h3>Jute fiber is extracted from the stem of the plant grown as a cash crop in Bihar, West Bengal, Assam, Orissa, Uttar Pradesh and Tripura. Jute mills form an important industry here. The Jute industry occupies significant place in the Indian economy. The Indian Jute Industry is a very old &amp; predominant in the eastern part of India. The Government of India has included the Jute Industry for special attention in its National Common Minimum Programme. It forms an integral part of the Indian Textile Industry. Further, the Jute industry contributes to the national exchequer from exports &amp; taxes. From 17th to 20th century, the jute industry in India was delegated by the British East India Company which was the first jute trader.</h3>\r\n', 'jute-bags-city-of-kathar', 350, 'jute-bags-city-of-kathar.jpg', '0000-00-00', 0),
(44, 4, 'Wood Crafted Lord Buddha Scripture (FROM THE CITY OF GAYA)', '<h2>SKU : 10616080GR</h2>\r\n\r\n<h3>Wood Art and Craft is another most important handicraft or art form which is popular in the state of Bihar. This type of art is originated from the earlier centuries which are worth watching while on tour to this state. During the reign of Emperor Ashoka, beautiful royal throne, royal gates or panels of doors and temples were constructed by artists of wood art of Bihar. The area of ??Gaya city is important among the main centers of wood art in Bihar. Presently, craftsmen are located in three units (Gaya, Bodh Gaya and Khukhari villages) in Gaya district. The craftsmen mostly sculpt the Buddha and the craftsman is completely dependent on pilgrims and tourists (China, Nepal, Japan, Malaysia, Singapore, Thailand, and Europe).</h3>\r\n', 'wood-crafted-lord-buddha-scripture-city-of-gaya', 19999, 'wood-crafted-lord-buddha-scripture-city-of-gaya.jpg', '0000-00-00', 0),
(45, 4, 'Terracota Crafted Elephant Scripture (FROM THE CITY OF DARBHANGA)', '<h2>SKU : 10616081GR</h2>\r\n\r\n<h3>The contribution of Bihar in the terracotta crafts is the oldest. No definite date of its origin can be stated. Even before the Vedic era, terracotta crafts were prevalent in Bihar. Looking at the terracotta figures of human animals derived from excavations in Vaishali and other parts of the state, it is known that in the prehistoric era man began to construct terracotta sculptures to reveal his interests and aspirations.Terracotta art developed in the Vedic era. It is mentioned in the Mahabharata that Eklavya made a statue of his imaginary Guru Dronacharya. How ancient is the Mrumurti tradition. It can also be understood from this story-reference.</h3>\r\n', 'terracota-crafted-elephant-scripture-city-of-darbhanga', 3500, 'terracota-crafted-elephant-scripture-city-of-darbhanga.jpg', '0000-00-00', 0),
(46, 4, 'Wood Carved Design (FROM THE CITY OF GAYA)', '<h2>SKU : 10616082GR</h2>\r\n\r\n<h3>Wood Art and Craft is another most important handicraft or art form which is popular in the state of Bihar. This type of art is originated from the earlier centuries which are worth watching while on tour to this state. During the reign of Emperor Ashoka, beautiful royal throne, royal gates or panels of doors and temples were constructed by artists of wood art of Bihar. The area of ??Gaya city is important among the main centers of wood art in Bihar. Presently, craftsmen are located in three units (Gaya, Bodh Gaya and Khukhari villages) in Gaya district. The craftsmen mostly sculpt the Buddha and the craftsman is completely dependent on pilgrims and tourists (China, Nepal, Japan, Malaysia, Singapore, Thailand, and Europe).</h3>\r\n', 'wood-carved-design-city-of-gaya', 11999, 'wood-carved-design-city-of-gaya.jpg', '0000-00-00', 0),
(47, 3, 'Cotton Fabric Bedsheet (FROM THE REGIONS OF BASTAR)', '<h2>SKU : 10616788GR</h2>\r\n\r\n<h3>Cotton Fabrics are one of the renowned and striking handicrafts made by tribals of Chhattisgarh. It is made of Kosa thread which is made from a type of worm found in forest, hand printed and hand-woven by tribes who sketch their lineage to the 14th century weaver/saint/poet Kabir. The hand printing is usually done with natural vegetable dye extracted from aal that is found in Chhattisgarh forests. These fabrics include cotton saris famous as Chattisgarh Kosa Saree, drapes and dress materials.</h3>\r\n', 'cotton-fabric-bedsheet-regions-of-bastar', 1200, 'cotton-fabric-bedsheet-regions-of-bastar.jpg', '0000-00-00', 0),
(48, 3, 'Bamboo Wind Chime (FROM THE CITY OF SHADOL, BALAGHAT)', '<h2>SKU : 10616789GR</h2>\r\n\r\n<h3>The Bamboo thickets are ordinary sight in the State and Chhattisgarh tribals have been putting their craftsmanship to work. Craftsmanship of Chhattisgarh&rsquo;s tribal group can be seen from changeable articles of craft produce they insinuate from bamboo. Articles for decorative as well as daily use are formed by these artisans. Some of the well-known Bamboo produce contain fishing traps, hunting tools, baskets and agricultural implements.</h3>\r\n', 'bamboo-wind-chime-city-of-shadol-balaghat', 1800, 'bamboo-wind-chime-city-of-shadol-balaghat.jpg', '0000-00-00', 0),
(49, 3, 'Wood Carved Facemask (FROM THE REGIONS OF BASTAR )', '<h2>SKU : 10616790GR</h2>\r\n\r\n<h3>Woodcarving art has been affluent in Chhattisgarh from time immemorial and one can discover delightfully carved wooden stuffs designed by craftsmen. The dexterous craftsmen of Chhattisgarh whittle beautiful wooden ceilings, lintels, doors etc. using dissimilar kinds of wood like teak, shisham, dhudi, kikar and sal. The craftsmen also make masks, pipes, doors, sculptures and window frames.</h3>\r\n', 'wood-carved-facemask-regions-of-bastar', 18499, 'wood-carved-facemask-regions-of-bastar.jpg', '0000-00-00', 0),
(50, 7, 'Hunain Paper Elephant (FROM THE REGIONS OF JAMMU )', '<h2>SKU : 10676791GR</h2>\r\n\r\n<h3>Papier Machie is one of the most popular of crafts practised in Kashmir. The tradition of the Kashmir Papier Machie has its origin rooted in the 15th century when king Zain-ul-Abidin invited accomplished artists and craftsmen from Central Asia. A French term so commonly adopted in East and West and meaning &quot;mashed paper&quot; papier machine is in fact a unique combination of line and colour on moulded forms of a variety of objects. It involves ornamentation in colour over smoothened surfaces built up of paper pulp or layers of paper. Paper pulp is not always found effective and is some times replaced by other substitutes.</h3>\r\n', 'hunain-paper-elephant-regions-of-jammu', 25000, 'hunain-paper-elephant-regions-of-jammu.png', '2021-06-12', 3),
(51, 7, 'Dart – Handmade Chainstitch (FROM THE REGIONS OF JAMMU )', '<h2>SKU : 10676792GR</h2>\r\n\r\n<h3>Chain Stitch - Natively known as &quot;Jalakdozi&quot;, chain stitch rugs are the speciality of Kashmir. These rugs are made on &quot;hessain cloth&quot; or hand made cotton cloth, in continued stitch with superior woolen or silken yarn, with the help of a hook type tool natively called &quot;Aurah&quot;. The designs range from floral patterns to animal and human forms traced by a designer, while the craftsman embroiders in two-ply or three ply woollen/silken yarn. The rug looks like a carpet in which the pile is substituted by the texture. Chainstitch rugs is used both as floor covering and wall hanging.</h3>\r\n', 'dart-handmade-chainstitch-regions-of-jammu', 4900, 'dart-handmade-chainstitch-regions-of-jammu.jpg', '0000-00-00', 0),
(52, 7, 'Kashmiri Hanging Rug (FROM THE REGIONS OF JAMMU )', '<h2>SKU : 10676793GR</h2>\r\n\r\n<h3>You can hang it on walls to enhance the aesthetic appeal of your rooms. Are wall hangings and hanging rugs the same or are they different? They are not different.</h3>\r\n', 'kashmiri-hanging-rug-regions-of-jammu', 3600, 'kashmiri-hanging-rug-regions-of-jammu.jpg', '0000-00-00', 0),
(53, 7, 'Samak Hamdmade Bangles (FROM THE REGIONS OF JAMMU )', '<h2>SKU : 10676794GR</h2>\r\n\r\n<h3>The samak is a trinket alloy without nikel that does not change color.</h3>\r\n', 'samak-hamdmade-bangles-regions-of-jammu', 17500, 'samak-hamdmade-bangles-regions-of-jammu.png', '2021-06-12', 1),
(54, 7, 'Pashmina Shawl (FROM THE REGIONS OF JAMMU )', '<h2>SKU : 10676795GR</h2>\r\n\r\n<h3>The basic fabric is of the three types - Shah Tush, Pashmina and Raffal. Shah Tush (King of wool) passes through a ring and is also known as Ring shawl. It comes from a rare Tibetan antelope living at a height of over 14000 ft in the wilds of the Himalayas. Pashmina is known world over as cashmere wool, it comes from a special goat (Capra hircus) living at an altitude of 12000 to 14000 ft reared by shephered nomads around famous pongkong lake in close vicinity of western Tibet. Raffal is spun out of marino wool tops and is a popular type of shawl.</h3>\r\n', 'pashmina-shawl-regions-of-jammu', 14999, 'pashmina-shawl-regions-of-jammu_1623484461.jpg', '0000-00-00', 0),
(55, 7, 'Kashmiri Jacket-Women (FROM THE REGIONS OF JAMMU )', '<h2>SKU : 10676796GR</h2>\r\n\r\n<h3>Shop Kashmiri embroidered Winter Jackets online in India at the lowest price. Kashmiri Aari Work Woolen Silk Jacket Kashmiri Embroidery Coat for Ladies.</h3>\r\n', 'kashmiri-jacket-women-regions-of-jammu', 2500, 'kashmiri-jacket-women-regions-of-jammu.jpg', '0000-00-00', 0),
(56, 8, 'Nettoor Casket (FROM THE REGIONS OF TAMIL NADU)', '<h2>SKU : 10676997GR</h2>\r\n\r\n<h3>What better souvenir could represent Tamil Nadu, than its very own handicraft &ndash; the Nettoor Petti? The Nettoor Petti is a beautiful handicraft that borrows its name from the place of its origins, Nettoor town in Tamil Nadu. The jewel box (petti meaning box), represents Tamil Nadu&rsquo;s royal heritage, as it was originally a part of the Royal households used to store their precious gems. Before we tell you five very important reasons why you should buy one, here is more about the exquisite handicraft.</h3>\r\n', 'nettoor-casket-regions-of-tamil-nadu', 21000, 'nettoor-casket-regions-of-tamil-nadu.jpg', '2021-06-12', 3),
(57, 8, 'Tanjore Painting (FROM THE REGIONS OF TAMIL NADU )', '<h2>SKU : 10676998GR</h2>\r\n\r\n<h3>Thanjavur painting is a classical South Indian painting style, which was inaugurated from the town of Thanjavur.</h3>\r\n', 'tanjore-painting-regions-of-tamil-nadu', 23499, 'tanjore-painting-regions-of-tamil-nadu.jpg', '0000-00-00', 0),
(58, 8, 'Kathakkali Mask (FROM THE REGIONS OF TAMIL NADU )', '<h2>SKU : 10676999GR</h2>\r\n\r\n<h3>Kathakali is one of the major forms of classical Indian dance It is a &quot;story play&quot; genre of art, but one distinguished by the elaborately colorful make-up and face masks that the traditionally male actor-dancers wear Kathakali has the most elaborate consisting of head dresses, face masks and vividly painted faces. This is an abstract form of kathakali</h3>\r\n', 'kathakkali-mask-regions-of-tamil-nadu', 8999, 'kathakkali-mask-regions-of-tamil-nadu.jpeg', '0000-00-00', 0),
(59, 8, 'Thanjavur Dolls (FROM THE REGIONS OF TAMIL NADU )', '<h2>SKU : 10677000GR</h2>\r\n\r\n<h3>The Thanjavur doll is a type of traditional Indian bobblehead or roly-poly toy made of terracotta material. The centre of gravity and total weight of the doll is concentrated at its bottom-most point, generating a dance-like continuous movement with slow oscillations</h3>\r\n', 'thanjavur-dolls-regions-of-tamil-nadu', 18490, 'thanjavur-dolls-regions-of-tamil-nadu.jpg', '0000-00-00', 0),
(60, 8, 'Rosewood Painting (FROM THE REGIONS OF TAMIL NADU )', '<h2>SKU : 10677001GR</h2>\r\n\r\n<h3>Made up of pure rose wood, lucky for vastu, &nbsp;without any artificial colours. Original inlay art from mysore, mysore painting without synthetic colours.</h3>\r\n\r\n<p>NOTE: 1) Wood may have marks/patches which are natural. 2) Colors can vary little bit as its 100% handmade product.</p>\r\n', 'rosewood-painting-regions-of-tamil-nadu', 84999, 'rosewood-painting-regions-of-tamil-nadu.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Geek', 'Team', '', '', '[000006].jpg', 1, '', '', '2018-05-01'),
(9, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', 'Silay City, Negros Occidental', '09092735719', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', 'demo', '7542214500', 'female3.jpg', 1, '', '', '2018-07-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
