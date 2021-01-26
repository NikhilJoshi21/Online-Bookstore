-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3301
-- Generation Time: May 27, 2019 at 07:35 AM
-- Server version: 5.7.24
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `b_id` int(4) NOT NULL AUTO_INCREMENT,
  `b_nm` varchar(60) NOT NULL,
  `b_author` longtext NOT NULL,
  `b_price` int(5) NOT NULL,
  `b_img` longtext NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`b_id`, `b_nm`, `b_author`, `b_price`, `b_img`) VALUES
(1, 'A Dictionary of Architecture ', 'Containing over 5,000 entries from Aalto to ziggurat, this is the most comprehensive and up-to-date dictionary of architecture in paperback. Beautifully illustrated and written in a clear and concise style, it is an invaluable work of reference for both students of architecture and the general reader, as well as professional architects. Covers all periods of Western architectural history, from ancient times to the present day Concise biographies of leading architects, from Brunelleschi and Imhotep to Le Corbusier and Richard Rogers Over 250 illustrations specially drawn for this volume', 500, 'upload_image/ARC9.jpg'),
(2, 'Elephant Kingdom : Sculptures from Indian Architecture ', 'Elephants occupy a special place in the life and art of India. Since ancient times, they have been treasured and pampered as the ultimate beasts of burden, venerated as the vehicles of gods and kings and even worshipped in their own right. Their legendary attributes of strength, intelligence, nobility and longevity are eulogized in myth, epic and popular literature. In the figural and decorative arts, elephants provide an enduring fascination. Elephant Kingdom traces the myriad stories and symbolisms behind India\'s much-loved animal, through its depictions in architectural sculpture. At the heart of the study is a collection of over 60 colour photographs from a diversity of antique settings-many of them in remote parts of the subcontinent. At centuries-old temples, monasteries, forts and palaces, elephants flank ceremonial entrances, enrich columns and capitals, form balustrades to stairways or stand as enigmatic sentinels of vast courtyards. Some are legendary characters in tales of dreams and salvation; others enact scenes from a faithfully observed natural history. Some transport kings and heroes into battle and the hunt; others are celestial messengers of rain, fertility and good fortune. From monumental freestanding sculptures to finely-worked narrative friezes, the warmth and energy of these depictions bear testimony to the achievements of countless anonymous artisans. ', 1000, 'upload_image/ARC8.jpg'),
(3, 'Close to Events-Works of Bikash Bhattacharjee', 'Launching his creative career in the late ?50s, Bikash Bhattacharjee stood out among his contemporaries by making hard-edged chiseled realism the core appeal of his canvases when realism or naturalism of every shade was considered a retrograde trend. Bikash?s strengths were his exceptional technical mastery and his power to charge the tangible appearance of the surface with the reality of the depth beneath. He was admired not merely for the near-illusionist evocation of realistic details, but for the obvious or subtle distortions in his imagery as a key to their complex multi-layered meanings. His realistic idiom is fascinatingly robust and compulsive, laced with rich irony, strong-veined allegory and lush visual metaphors. His portrait-based images enact the artist?s own experience of our time with all its dark social and moral tones and textures. Close to Events: Works of Bikash Bhattacharjee deals with Bikash?s early life in an old North Calcutta locality, the urban social ambience that shaped his creative personality and explores why he chose to remain ?close to events? and free from the dominant trends in post-Independence Indian art. It also analyses the technical and stylistic development of art with detailed exposition of some of the themes and subjects in the major series of his paintings. ', 2000, 'upload_image/ART6.JPG'),
(4, 'A Social History of Indian Architecture ', 'Studies in Indian architecture have been confined to those exploring the building techniques of palaces, temples, and tombs. Little attention has traditionally been paid by scholars to the patterns and influences involved in the making of domestic residences, market places, inns, community halls, courts, and other \'lesser\' buildings. The result is the emergence of a very partial picture of what constitutes architecture in India. This volume se eks to overcome this inadequacy by examining the geographical, historical, and functional aspects of architecture in India. Looking beyond the point of view of dynasties, periods or religions, the book traces the various social and historical developments in the field. Following a multi-disciplinary approach that emphasizes sociological aspects, the volume examines in detail, settlement patterns, the architecture of individual houses and chaityas, as also structural materials used for their construction, in addition to those of palaces, funerary monuments, temples, mosques, and monasteries. While examining the planning and design orientation of peoples and architectural techniques across India, the volume pays special attention to that of western India especially Gujarat and Rajasthan. The author also addresses rural and urban patterns of setlement and the linkages between the two. He explains regional and period-specific phenomena, while also quoting from ancient accounts of towns. These vary from the typical urban and rural houses to the Muslim aristocratic residences and Rajput palaces. Based on extensive fieldwork, the author also documents family histories, lifestyles and usage of space to provide a comprehensive social history of Indian architecture. Complemented by over eighty figures including photographs, plans, and detailed diagrams, this book will interest scholars of architecture, history, sociology, and the informed lay reader', 1000, 'upload_image/ARC10.jpg'),
(5, 'YOGIS, DESTINY & THE WHEEL OF TIME ', 'Contents: Dedication; Acknowledgements; About the author; Preface; Preface to the 2nd edition; 1. That great guru; 2. Profile of a guru\'s life; 3. Prabhu bejoy Krishna Goswami; 4. I meet my guru; 5. Awakened kundalini; 6. Astrological instruction; 7. Pre-destination: The negative side; 8. Rokadia Hanuman Baba; 9. My Jyotish guru-1; 10. My Jyotish guru-2; 11. Pre-destination & divine bliss; 12. Nagari Das Baba; 13. Ranga Avadhoot; 14. Religion of yogis; 15. Caution & warning; 16. Ecstasies spring from fire-1; 17. Ecstasies spring from fire-2; 18. Ecstasies spring from fire-3; 19. Ecstasies spring from fire-4; 20. Ecstasies spring from fire-5; 21. Ecstasies spring from fire-6; 22. The seers; 23. Astrology, when it is an illumination; 24. Memory glows; 25. Why astrology at all?; 26. Poetical guidance; 27. Bliss & confusion; Index.', 300, 'upload_image/ASTRO1.jpg'),
(6, 'You Deserve, We Conserve A Biotechnological Approach to Wild', 'There is a tremendous wealth of mega-biodiversity in the world. But the very existence of this wealth is under threat due to habitat destruction, pushing animals towards inbreeding depression and thereby paving way for their extinction. This has made essential human intervention and assisted reproductive technologies. Thus, the issues of conservation of wildlife and biodiversity have become the need of the hour, especially in terms of policy making at the government level. You deserve, We Conserve: A Biotechnological Approach to Wildlife Conservation contains 16 articles by scientists engaged in research on the conservation of wildlife, role of reproductive technologies and modern approaches being followed in wildlife conservation. It also deals with various techniques used in field conditions such as chemical capture, molecular genetics, ultrasonography, cryopreservation, wildlife forensics, etc. The present book will be of special interest to professionals engaged in forest and environment related activities, particularly wildlife conservationists, students pursuing their career in veterinary discipline of wild animals and policy makers. It will also be useful for nature enthusiasts, who have an interest in wildlif', 659, 'upload_image/forest.jpg'),
(7, 'Visual Basic 2005', '\'VB connectivity\'', 120, 'upload_image/comp8.jpg'),
(8, 'Java & Xml', '\'Complete Reference\'', 500, 'upload_image/comp9.jpg'),
(9, 'Microsoft Windows Powershell Step By Step', '\'Learn Microsoft Windows PowerShell step by step with hands-on instruction from a leading Microsoft scripting trainer. This guide features self-paced labs, timesaving tips, and dozens of sample scripts', 295, 'upload_image/comp6.jpg'),
(10, 'C# Programming', '\'C# is platform independent,includes namespace,garbage collection,automatic memory management', 300, 'upload_image/1861004877.jpg'),
(11, 'Java Server Programming', '\'jsp uses  html tags and run on java platform\'', 560, 'upload_image/1861004656.jpg'),
(12, 'Programming with Perl', 'Perl is programming langauge which is not comfortable to handle.', 450, 'upload_image/0596000278.jpg'),
(13, 'HTML for world wide web', 'html uses tags,it\'\'s  not case sensitive,work with own html tagswhich must be enclosed.', 400, 'upload_image/0201354934.jpg'),
(14, 'ASP Server Pages 3.0', 'Active server pages uses xml files ,it run on internet explorer or other browser..', 950, 'upload_image/1861003382.jpg'),
(15, 'Perl and CGI', 'CGI for graphics purpose', 300, 'upload_image/020135358X.gif'),
(16, 'A Biological Survey for the Nation', 'The National Biological Survey will produce the map we need to avoid the\\r\\neconomic and environmental \"train wrecks\" we see scattered across the country.\\r\\nNBS will provide the scientific knowledge America needs to balance the\\r\\ncompatible goals of ecosystem protection and economic progress', 450, 'upload_image/biology.gif'),
(17, 'Book of Tea', 'The Philosophy of Tea is not mere aestheticism in the ordinary acceptance of the term, for it expresses conjointly with ethics and religion our whole point of view about man and nature. It is hygiene, for it enforces cleanliness.It represents the true spirit of Eastern democracy by making all its votaries aristocrats in taste. (from \"The Book of Tea\")', 100, 'upload_image/bookoftea.jpg'),
(18, 'Coffee : Scrumptious Drinks', 'Every day, millions search for The Perfect Cup of Coffee in caf s, diners, and kitchens around the world. Here, coffee guru Betty Rosbottom offers easy-to-follow recipes guaranteed to please \\r\\nanyone who takes delight in sampling, sipping, and serving exquisite coffee concoctions.', 100, 'upload_image/cofee.jpg'),
(19, 'Stone Soup', 'A hungry traveler tricks a little old lady into cooking him soup starting with a stone.', 350, 'upload_image/stonesoup.jpg'),
(20, 'Pasta Perfection', 'This new series will help you get back into the kitchen and experience the fun of creating sensationalmouth-watering meals thought he simplicity of easy-to-read, step-by-step ...', 100, 'upload_image/pasta1.jpg'),
(21, 'Bhartiya Vynjano ka khajana', 'Vyanjan made by Sanjeev kapoor,he makes very sweet and delicious dishes', 350, 'upload_image/bhartiya.jpg'),
(22, 'Descriptious du Cafeier', 'millions search for The Perfect Cup of Coffee in caf s, diners, and kitchens around the world. Here, coffee guru Betty Rosbottom offers easy-to-follow recipes guaranteed to please anyone who takes delight in sampling, sipping, and serving exquisite coffee concoctions.', 100, 'upload_image/cofee2.jpg'),
(23, 'Your Income-Tax 2010', 'A guide to income tax returns provides information on the most recent tax legislation, tax-filing tips, advice on how to reduce tax liabilities, helpful financial advice, and sample tax forms, worksheets,', 1000, 'upload_image/tax1.jpg'),
(24, 'Your Income-Tax Professional Edition', 'Provides information about filing requirements, exemptions, income, deductions, tax credits, shelters, and tax law.', 120, 'upload_image/tax2.jpg'),
(25, 'J K Lesser\'s Tax Savings in your Pocket', '*  Save more for your child education now!\r\n   * Increase your retirement savings\r\n   * New deductions, tax breaks, and planning tips', 300, 'upload_image/tax3.jpg'),
(26, 'On Liberty', 'the liberal tradition, revered for his defense of liberal principles and expansive personal liberty.', 300, 'upload_image/li1.jpg'),
(27, 'On Liberty in Focus', 'his book gathers together for the first time J.S. Mill\'\'s On Liberty and a selection of importantessays by the eminent scholars Isaiah Berlin, Alan Ryan, John Rees C.L. Ten\'', 350, 'upload_image/li2.jpg'),
(28, 'Debugging Microsoft .NET 2.0 Applications', 'Get hands-on instruction for using the tools in Microsoft Visual Studio? 2005 to debug, tune, and test applications. This guide features practical advice and code samples for developers at all levels from a leading authority on improving code. Traditionally, tools for performance tuning, testing applications, and debugging code have been expensive, hard to learn, and difficult to use. While previous versions of Microsoft Visual Studio? have included debuggers and other code-improvement tools, Visual Studio 2005 presents developers with robust and useful tools and processes to help ensure top-quality code. In this guide, an expert on improving code, John Robbins, steps back from the expert-level information that characterized his previous debugging books to present hands-on, practical advice for working developers on how to use the debugging, testing, and tuning features in Visual Studio 2005', 699, 'upload_image/comp2.jpg'),
(29, 'The Mad, Mad World of Cricket', 'The funny side of the gentleman?s game?captured by a master cartoonist In India cricket is more than a game; it is a national obsession. And with a World Cup always around the corner, there is no better way to prepare for the excitement of seeing the men in blue in action than with renowned cartoonist Sudhir Dar?s creations.', 125, 'upload_image/c1.jpg'),
(30, 'Dream Team India: The Best World Cup Squad Ever !', 'Are you one of those who just knows India will win the match the moment the game starts? Do you drown yourself in cricket and cricket-related trivia every four years and dream of seeing India win the World Cup? If the answer is ?yes? to any of the above, here is the team that will bring home the Cup for you. ', 200, 'upload_image/c2.jpg'),
(31, 'HOW TO PREPARE FOR QUANTITATIVE APTITUDE FOR CAT', 'More than 3000 questions categorised into three levels of difficulty - LOD1, LOD2 and LOD3 * Notes emphasising relative importance of topics in the CAT, at appropriate places in the book * Short-cut methods to aid faster solutions to problems * Five practice CAT tests (actual CAT questions based on memory)', 325, 'upload_image/COMPETITIVE8.jpg'),
(32, 'Physics', 'Get all you need to know with Super Reviews! Each Super Review is packed with in-depth, student-friendly topic reviews that fully explain everything about the subject.', 495, 'upload_image/p2.jpg'),
(33, 'Thermal Physics', 'The book presents a lucid and systematic exposition of the fundamental principles of Thermal Physics.', 163, 'upload_image/p6.jpg'),
(34, 'The Rough Guide to the Earth?', 'From the opening and closing of oceans over millions of years to the overnight reshaping of landscapes by volcanoes, the Earth beneath our feet is constantly changing. The Rough Guide to the Earth explores all aspects of our dynamic planet, from the planet?s origins and evolution and the seasons and tides to melting ice caps, glaciers and climate change. Featuring many spectacular images and helpful diagrams, this Rough Guide provides a fascinating and accessible introduction to Earth science.', 650, 'upload_image/ART3.JPG'),
(35, 'A TEXTBOOK OF COST AND MANAGEMENT ACCOUNTING 8th ed.', ' Student friendly and examination oriented approach # Innovative, comprehensive and systematic presentation of the subject matter # Use of diagrams and exhibits to help students understand concepts easily and clearly # Around 500 solved problems and illustrations with working notes # Solved and unsolved practical questions from various university and professional examinations like BCom, MCom, CA, CS, ICWA, etc. # Objective type questions and select theory questions # Ideal for self study.', 395, 'upload_image/busi7.jpg'),
(36, 'Computer Networks, 4th Ed', '(38, \'Computer Networks, 4th Ed\', \'46\', \'updated, this classic bestseller, now in its fourth edition, reflects the newest and most important networking technologies with a special emphasis on wireless networking. The material on wireless networks includes detailed coverage of 802.11, wireless local loops, 2G and 3G cellular networks, BluetoothTM, WAP, i-mode, and others. It prepares students to work with wireless technologies in networks of all sizes-both local and wide area networks. There is also lots of new material on applications, including the Web, Internet radio, voice over IP, and video on demand. Finally, an entirely new chapter is devoted exclusively to security to help students deal with one of the most crucial topics in networking today. Despite a large amount of material added on wireless networks, fixed networks have not been ignored-topics covered include ADLS, Internet over cable, gigabit Ethernet, peer-to-peer networks, NAT, and MPLS. Each chapter follows a consistent approach. The author first presents the key principles-underlying hardware at the physical layer up through the top-level application layer-and then illustrates them utilizing real-world examples drawn from the Internet and wireless networks, all in Tanenbaum\'\'s classic entertaining style.', 325, 'upload_image/comp7.jpg'),
(37, 'Investing for Beginners', 'Investment Risks and Rewards: How to overcome the fear of investment risk and how taking a few risks can reap long-term benefits. Your Starting Point: How to assess your investment goals. Diversification: How to allocate your money among various investment avenues for safety, steady income and capital growth. How to Pick Stocks: How to use fundamental indicators of value to pick good stocks. Investing in Bonds: Why you need bonds in your portfolio and which bonds to choose. Mutual Funds Primer: What they are and how to select the ones that suit your needs. Disinvesting: How to figure out when it\'\'s time to get out of an investment. Keeping in Touch: How to understand financial information. Keeping Track of Your Investments: Simple record-keeping tricks.', 195, 'upload_image/business.jpg'),
(38, 'Games Lawyers need to Play - Moot Court Problems ', 'The Raj Anand Moot Court Competition was initiated in 1998 with its focus centrally on Intellectual Property law. Over the years the scope of the Competition has widened though Intellectual Property remains the core area. One of its primary aims is to sharpen the skills of ?mooting? among aspiring lawyers. Games Lawyers Need to Play brings together the Problems and ten of the finest Memorials of the Competition. Each chapter deals with a specific year beginning with 2004 and going back to 1998. The problems deal with various aspects of Intellectual Property but are ?out of ordinary?, to enable participants to combine good quality research with creativity and originality. The book has a foreword by Judge Michael Fysh, QC, SC. The Introduction is written by Pravin Anand.', 595, 'upload_image/lawyer.jpg'),
(39, 'An ABC of Indian Culture : A Personal Padayatra of Half a Ce', 'An authentic interpretation of over 400 Indian concepts and practices derived from a personal exploration of India over a period of 50 years. Arranged alphabetically, these range from key traditional ones such as \'dharma\' to more contemporary ones such as \'secularism\' and \'democracy\' to popular ones such as Indian films! \'Padayatra\' is a journey on foot and each selected concept and practice is treated as a stepping-stone in a journey to understanding what India is all about. Descriptions are based on personal experience maturing over half a century, and written in cultural essays that present the essence of the Indian tradition. Malformations of the tradition are explained but without polemics. The book is a sensitive, cultured and sophisticated introduction to India for an intelligent and serious readership, and will be invaluable also as a handy reference text for libraries, cultural exchange agencies, business orientation courses especially for those anticipating an extended interaction with India, and the like.', 595, 'upload_image/cul1.jpg'),
(40, 'HOW TO PREPARE FOR THE CAT, 2/E ', 'More than 3000 questions categorised into three levels of difficulty - LOD1, LOD2 and LOD3 * Notes emphasising relative importance of topics in the CAT, at appropriate places in the book * Short-cut methods to aid faster solutions to problems * Five practice CAT tests (actual CAT questions based on memory)', 499, 'upload_image/CAT.jpg'),
(41, 'Safe and Simple Steps to Fruitful Meditation', 'Meditation has been widely accepted as a tested method to reduce mental tensions and achieve inner peace and tranquillity, leading to spiritual growth. In this book, various techniques are presented in an easy step-by-step manner, starting with simple techniques that can be practised for just a few minutes', 80, 'upload_image/yoga1.jpg'),
(42, 'STATISTICS FOR BUSINESS AND ECONOMICS', 'This book covers various aspects of the field of statistics in 20 chapters, making each topic relevant and useful. A unique feature of this book is the inclusion of databases to be utilized by computers and software statistical packages. Contents - Introduction ? Statistical Terms and Concepts ? Data Collection ? Data Presentation ? Data Characteristics: Descriptive Measures ? Basic Concepts of Probability ? Probability Distribution ? Sampling Distribution ? Statistical Inference: Estimation ? Hypothesis Testing I ? Hypothesis Testing II ? Hypothesis Testing III ? Hypothesis Testing IV (Comparing Several Proportions Chi Square Test) ? Hypothesis Testing V(Comparing Several Population Means) One-Way Analysis of Variance (ANOVA) ? Regression and Correlation Analysis ? Multiple Regression ? Non-Parametric Statistics ? Time Series Analysis ? Statistical Decision Making ? Statistical Quality.', 372, 'upload_image/9062999.jpg'),
(43, 'Himalayan Vignettes : The Garhwal and Sikkim Treks', 'In the 1950s Himalayan trekking was not as popular as it is now. The network of roads deep into the Himalayas did not exist and the hills were more pristine and undeveloped.', 2000, 'upload_image/1445.jpg'),
(44, 'Insight Guide Iceland', 'A travel series unlike any other, Insight Guides go beyond the sights and into reality.', 935, 'upload_image/t2.jpg'),
(45, 'SPIDER MAN', 'second 100 issues as May Mayday Parker learns that she can\'t escape her great responsibilities! Featuring the original Hobgoblin, the Black Tarantula and more! Plus: the saga of Spider-Girl! Collects Amazing Spider-Girl #0-6. ', 606, 'upload_image/comic1.jpg'),
(46, 'The Missing ', 'The woman missing for five years. The Crime Scene Investigator who finds her. And the serial killer who wants them both dead? When Boston CSI Darby McCormick finds a raving and emaciated woman hiding at the scene of a violent kidnap, she runs a DNA search to identify the Jane Doe. The result confirms that the woman was abducted five years earlier and has somehow managed to escape from the dungeon in which she?s been caged. With a teenage couple also missing and the Jane Doe seriously ill, the clock is ticking for Darby as she hunts for the dungeon before anyone else disappears or dies. And when the FBI takes over the investigation, it becomes clear that a sadistic serial killer has been on the prowl for decades ? and is poised to strike again at any moment. A killer with links to horrors that Darby has desperately tried to bury in her past?\r\n\r\n', 240, 'fic1.jpg'),
(49, 'Pakistan`s Extremism', 'The book studies the rise of religious extremism in pakistan and analyses its connection to the pakistani army policies and fluctuating US - Pakistani Relationship. It is a book which readers as well as students of Political Science and history will enjoy thoroughly.', 600, 'pak.jpg'),
(50, 'Learning SQL 2005 ', 'Anyone who interacts with today?s modern databases needs to know SQL (Structured Query Language), the standard language for generating, manipulating, and retrieving database information. In recent years, the dramatic rise in the popularity of relational databases and multiuser databases has fueled a healthy demand for application devel?opers and others who can write SQL code efficiently and correctly. If you?re new to databases or need a SQL refresher, Learning SQL on SQL Server 2005 is an ideal step-by-step introduction to this database query tool, with everything you need for programming SQL using Microsoft?s SQL Server 2005?one of the most powerful and popular database engines used today. Plenty of books explain database theory. This guide lets you apply the theory as you learn SQL. You don?t need prior database knowledge, or even prior computer knowledge. Based on a popular university-level course designed by authors Sikha Saha Bagui and Richard Walsh Earp, Learning SQL on SQL Server 2005 starts with very simple SQL concepts, and slowly builds into more complex query development. Every topic, concept, and idea comes with examples of code and output, along with exercises to help you gain proficiency in SQL and SQL Server 2005. With this book, you?ll learn: * Beginning SQL commands, such as how and where to type an SQL query, and how to create, populate, alter, and delete tables * How to customize SQL Server 2005?s settings and about SQL Server 2005?s functions * About joins, a common database mechanism for combining tables * Query development, the use of views and other derived structures, and simple set operations * Subqueries, aggregate functions, and correlated subqueries, as well as indexes and constraints that can be added to tables in SQL Server 2005 Whether you?re a self-learner who has access to the new Microsoft database, working on SQL Server with access at your company, or a computer science student or MIS student, Learning SQL on SQL Server 2005 will get you up to speed on SQL in no time.\r\n\r\n', 350, 'sql.jpg'),
(51, 'Another Brooklyn', 'Jacqueline woodson', 200, 'brooklyn.jpg'),
(52, 'The Hobbit', 'J.R.R. Tolkien', 250, 'hobbit.jpg'),
(53, 'Vampire Diaries', 'L.J. Smith', 245, 'vd.jpg'),
(54, 'Alexander Hamilton', 'Ron Chernow', 200, 'hamilton.jpg'),
(55, 'Game Of Thrones', 'George R.R. Martin', 250, 'got.jpg'),
(56, 'Misdirection', 'Ning Cai', 245, 'misdir.jpg'),
(57, 'Harry Potter', 'J.K Rowling', 200, 'hp.jpg'),
(58, 'Only Truth', 'Martin Halsall', 250, 'onlytruth.jpg'),
(59, 'The Outsider', 'Stephen King', 240, 'stephk.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(4) NOT NULL AUTO_INCREMENT,
  `cat_nm` varchar(30) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_nm`) VALUES
(1, 'Architecture'),
(2, 'Art And Culture'),
(3, 'Forest'),
(4, 'Sports'),
(5, 'Astrology'),
(6, 'Business'),
(7, 'Economics'),
(8, 'Low Books'),
(9, 'Tourism'),
(10, 'Yoga'),
(11, 'Religion'),
(12, 'Management'),
(13, 'Terrorism'),
(14, 'Tracking'),
(15, 'Fiction'),
(16, 'Comics'),
(17, 'Computer'),
(18, 'Cooking'),
(19, 'Science'),
(20, 'Compititive Exam'),
(21, 'tess');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `con_id` int(4) NOT NULL AUTO_INCREMENT,
  `con_nm` varchar(25) NOT NULL,
  `con_email` varchar(35) NOT NULL,
  `con_query` longtext NOT NULL,
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`con_id`, `con_nm`, `con_email`, `con_query`) VALUES
(1, 'Hiren', 'hiru@gmail.com', 'English Novels...'),
(3, 'Manali', 'manali@yahoo.com', 'Java Complete Reference is available?'),
(4, 'Rina', 'rina@gmail.com', 'Artificial Intelligence');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE IF NOT EXISTS `purchase` (
  `purchase_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(20) NOT NULL,
  PRIMARY KEY (`purchase_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

DROP TABLE IF EXISTS `purchase_details`;
CREATE TABLE IF NOT EXISTS `purchase_details` (
  `SR_NO` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_details_id` int(20) DEFAULT NULL,
  `u_unm` varchar(100) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_price` int(100) NOT NULL,
  `item_quantity` int(20) NOT NULL,
  `total` int(20) DEFAULT NULL,
  PRIMARY KEY (`SR_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_details`
--

INSERT INTO `purchase_details` (`SR_NO`, `shipping_details_id`, `u_unm`, `item_id`, `item_name`, `item_price`, `item_quantity`, `total`) VALUES
(32, NULL, 'nikhil', 55, 'Game Of Thrones', 250, 1, 250),
(33, 82, 'nikhil', 55, 'Game Of Thrones', 250, 1, 250),
(34, 83, 'nikhil', 55, 'Game Of Thrones', 250, 1, 250),
(35, 84, 'nikhil', 55, 'Game Of Thrones', 250, 9, 14750),
(36, 84, 'nikhil', 52, 'The Hobbit', 2500, 5, 14750),
(37, 85, 'nikhil', 55, 'Game Of Thrones', 250, 9, 14750),
(38, 85, 'nikhil', 52, 'The Hobbit', 2500, 5, 14750),
(39, 86, 'nikhil', 55, 'Game Of Thrones', 250, 9, 14750),
(40, 86, 'nikhil', 52, 'The Hobbit', 2500, 5, 14750),
(41, 87, 'nikhil', 55, 'Game Of Thrones', 250, 9, 14750),
(42, 87, 'nikhil', 52, 'The Hobbit', 2500, 5, 14750),
(43, 88, 'nikhil', 55, 'Game Of Thrones', 250, 9, 14750),
(44, 88, 'nikhil', 52, 'The Hobbit', 2500, 5, 14750),
(45, 89, 'nikhil', 55, 'Game Of Thrones', 250, 9, 14750),
(46, 89, 'nikhil', 52, 'The Hobbit', 2500, 5, 14750),
(47, 90, 'aj', 55, 'Game Of Thrones', 250, 9, 15245),
(48, 90, 'aj', 52, 'The Hobbit', 2500, 5, 15245),
(49, 90, 'aj', 58, 'Only Truth', 250, 1, 15245),
(50, 90, 'aj', 53, 'Vampire Diaries', 245, 1, 15245),
(51, 87, 'aj', 54, 'Alexander Hamilton', 200, 1, 400),
(52, 87, 'aj', 51, 'Another Brooklyn', 200, 1, 400),
(53, 88, 'aj', 54, 'Alexander Hamilton', 200, 1, 400),
(54, 88, 'aj', 51, 'Another Brooklyn', 200, 1, 400),
(55, 89, 'aj', 54, 'Alexander Hamilton', 200, 1, 400),
(56, 89, 'aj', 51, 'Another Brooklyn', 200, 1, 400),
(57, 90, 'nikhil', 51, 'Another Brooklyn', 200, 1, 200),
(58, 91, 'aj', 55, 'Game Of Thrones', 250, 1, 250),
(59, 92, 'aj', 56, 'Misdirection', 245, 1, 245),
(60, 93, 'aj', 52, 'The Hobbit', 2500, 1, 2900),
(61, 93, 'aj', 51, 'Another Brooklyn', 200, 1, 2900),
(62, 93, 'aj', 57, 'Harry Potter', 200, 1, 2900),
(63, 94, 'aj', 52, 'The Hobbit', 2500, 1, 2900),
(64, 94, 'aj', 51, 'Another Brooklyn', 200, 1, 2900),
(65, 94, 'aj', 57, 'Harry Potter', 200, 1, 2900),
(66, 95, 'nikhil', 52, 'The Hobbit', 2500, 1, 2500),
(67, 96, 'nikhil', 51, 'Another Brooklyn', 200, 1, 200),
(68, 97, 'nikhil', 51, 'Another Brooklyn', 200, 1, 200),
(69, 98, 'nikhil', 51, 'Another Brooklyn', 200, 1, 200),
(70, 99, 'nikhil', 49, 'Pakistan`s Extremism', 600, 7, 4680),
(71, 99, 'nikhil', 46, 'The Missing ', 240, 2, 4680),
(72, 100, 'nikhil', 56, 'Misdirection', 245, 1, 445),
(73, 100, 'nikhil', 51, 'Another Brooklyn', 200, 1, 445),
(74, 101, 'nikhil', 50, 'Learning SQL 2005 ', 350, 1, 1350),
(75, 101, 'nikhil', 51, 'Another Brooklyn', 200, 5, 1350);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_details`
--

DROP TABLE IF EXISTS `shipping_details`;
CREATE TABLE IF NOT EXISTS `shipping_details` (
  `shipping_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `address` text NOT NULL,
  `zip_code` bigint(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  PRIMARY KEY (`shipping_details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_details`
--

INSERT INTO `shipping_details` (`shipping_details_id`, `name`, `address`, `zip_code`, `city`, `state`, `phone`) VALUES
(1, 'sanjeev kumar', ' 141 delhi', 110009, 'delhi', 'delhi', 9015501897),
(2, 'sanjeev kumar', ' 141 delhi', 110009, 'delhi', 'delhi', 9015501897),
(3, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(4, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(5, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(6, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(7, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(8, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(9, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(10, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(11, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(12, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(13, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(14, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(15, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(16, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(17, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(18, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(19, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(20, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(21, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(22, 'Nikhil Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 3301, 'Concord', 'Maharashtra', 9930065548),
(23, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(24, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(25, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(26, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(27, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(28, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(29, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(30, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(31, 'JoshiNikhil', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(32, 'JoshiNikhil', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(33, 'JoshiNikhil', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(34, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(35, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(36, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(37, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(38, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(39, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(40, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(41, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(42, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(43, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(44, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(45, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(46, 'Arushi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(47, 'Arushi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(48, 'xcm', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(49, 'xcm', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(50, 'xcm', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(51, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(52, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(53, 'Nikhil Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 3301, 'Concord', 'Maharashtra', 9930065548),
(54, 'Nikhil Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 3301, 'Concord', 'Maharashtra', 9930065548),
(55, 'Nikhil Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 3301, 'Concord', 'Maharashtra', 9930065548),
(56, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(57, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(58, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(59, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(60, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(61, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(62, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(63, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(64, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(65, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(66, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(67, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(68, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(69, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(70, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(71, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(72, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(73, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(74, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(75, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(76, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(77, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(78, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(79, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(80, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(81, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(82, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(83, 'Trupti Joshi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(84, 'Arushi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(85, 'Arushi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(86, 'Arushi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(87, 'Arushi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(88, 'Arushi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(89, 'Arushi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(90, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(91, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(92, 'Arushi', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(93, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(94, 'divya', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(95, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(96, 'Nikhil Joshi33', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(97, 'Nikhil Joshi33', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(98, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(99, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548),
(100, 'Nikhil Joshi33', 'A-6/04, Thakur Complex Road\r\nD-702,703 Gayatri Darshan', 400101, 'Mumbai', 'Maharashtra', 9930065548),
(101, 'Nikhil Joshi', 'Alton woods drive\r\n1', 3301, 'Concord', 'Maharashtra', 9930065548);

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

DROP TABLE IF EXISTS `subcat`;
CREATE TABLE IF NOT EXISTS `subcat` (
  `subcat_id` int(4) NOT NULL AUTO_INCREMENT,
  `parent_id` int(4) NOT NULL,
  `subcat_nm` varchar(35) NOT NULL,
  PRIMARY KEY (`subcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`subcat_id`, `parent_id`, `subcat_nm`) VALUES
(1, 1, 'Architecture'),
(2, 2, 'Art And Culture'),
(3, 3, 'Forest'),
(4, 4, 'Sports'),
(5, 5, 'Astrology'),
(6, 6, 'Business'),
(7, 7, 'Economics'),
(8, 8, 'Low Books'),
(9, 9, 'Tourism'),
(10, 10, 'Yoga'),
(11, 11, 'Religion'),
(12, 12, 'Management'),
(13, 13, 'Terrorism'),
(14, 14, 'Tracking'),
(15, 15, 'Fiction'),
(16, 16, 'Comics'),
(17, 17, 'Programming'),
(18, 17, 'Database'),
(19, 17, 'Web-Design'),
(20, 17, 'Networking'),
(22, 18, 'Pasta'),
(23, 18, 'Tea - Coffee'),
(24, 18, 'Soup - Sauce'),
(25, 18, 'Vegetarian Item'),
(26, 19, 'Physics'),
(27, 19, 'Biology'),
(28, 19, 'Medical'),
(29, 17, 'O.S.'),
(31, 20, 'GMAT'),
(32, 20, 'MBA'),
(33, 20, 'CAT'),
(34, 20, 'BBA'),
(35, 21, 'test1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `u_id` int(4) NOT NULL AUTO_INCREMENT,
  `u_unm` varchar(25) NOT NULL,
  `u_pwd` varchar(20) NOT NULL,
  `u_email` varchar(35) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_unm`, `u_pwd`, `u_email`) VALUES
(1, 'Hiren', 'hiru', 'hiru@gmail.com'),
(2, 'shital', 'shital', 'shital@yahoo.com'),
(3, 'Lina123', '123', 'lina123@gmail.com'),
(4, 'admin', 'admin123', 'admin@gmail.com'),
(5, 'Darcy', '160160160', 'darcy@gmail.com'),
(6, 'kumar', 'sanjeev', 'sanjeevtech2@gmail.com'),
(7, 'nikhil', 'qwerty', 'nikhildjoshi1999@gmail.com'),
(8, 'nikhil', 'qwerty2108', 'nikhildjoshi1999@gmail.com'),
(9, 'nikhil', 'qwerty', 'nikhildjoshi1999@gmail.com'),
(10, 'aj', 'aj123', 'arushij@gmail.com'),
(11, 'jay', 'jay123', 'jay@gmail.com'),
(12, 'nikhil213', 'qwerty', 'nikhildjoshi19993'),
(13, 'xyz', 'qwerty', 'xyz@gmail.com'),
(14, 'om', 'asdfghjkl', 'om@gmail.com'),
(15, 'om12', 'asdfghjkl', 'om12@gmail.com'),
(16, 'guest', '1234567', 'guest@gmail.com'),
(17, 'nikhil6666', 'qwerty', 'x@gmail.com'),
(18, 'qa', 'qw', 'qa@gmail.com'),
(19, 'q', 'q', 'ch@gmail.com'),
(20, 'jay12', 'jay', 'jay123@gmail.com'),
(21, 'nj21', 'nj21', 'nj2108@gmail.com'),
(22, 'nj2108', 'qwerty', 'nj210899@gmail.com'),
(23, 'nj21089', 'qwerty', 'nj2108999@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
