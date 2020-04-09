-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 09, 2020 at 02:49 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_roku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movie_id` int(11) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `movie_poster` varchar(100) NOT NULL,
  `movie_year` varchar(20) NOT NULL,
  `movie_runtime` varchar(20) NOT NULL,
  `movie_intro` text NOT NULL,
  `movie_trailer` varchar(100) NOT NULL,
  `movie_type` varchar(50) NOT NULL,
  `IMDb` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movie_id`, `movie_name`, `movie_poster`, `movie_year`, `movie_runtime`, `movie_intro`, `movie_trailer`, `movie_type`, `IMDb`) VALUES
(1, 'The Asphalt Jungle', 'The Asphalt Jungle.jpg', '1950', '112 min', 'When the intelligent criminal Erwin \"Doc\" Riedenschneider is released from prison, he seeks a fifty thousand-dollar investment from the bookmaker Cobby to recruit a small gang of specialists for a million-dollar heist of jewels from a jewelry. Doc is introduced to the lawyer Alonzo D. Emmerich that offers to finance the whole operation and buy the gems immediately after the burglary. Doc hires the safecracker Louis Ciavelli, the driver Gus Minissi and the gunman Dix Handley to the heist. His plan works perfectly but bad luck and betrayals compromise the steps after the heist and the gangsters need to flee from the police.', 'The Asphalt Jungle.mp4', 'Parents', '7.9/10'),
(2, 'Patton', 'patton.jpg', '1970', '172 min', '\"Patton\" tells the tale of General George S. Patton, famous tank commander of World War II. The film begins with Patton\'s career in North Africa and progresses through the invasion of Europe and the fall of the Third Reich. Side plots also speak of Patton\'s numerous faults such his temper and tendency toward insubordination, faults that would prevent him from becoming the lead American general in the Normandy Invasion as well as to his being relieved as Occupation Commander of Germany. ', 'Patton (1970) Trailer.mp4', 'parents', '7.9/10'),
(3, 'Star Wars: Episode V - The Empire Strikes Back', 'starwars.jpg', '1980', '124 min ', 'Luke Skywalker, Han Solo, Princess Leia and Chewbacca face attack by the Imperial forces and its AT-AT walkers on the ice planet Hoth. While Han and Leia escape in the Millennium Falcon, Luke travels to Dagobah in search of Yoda. Only with the Jedi Master\'s help will Luke survive when the Dark Side of the Force beckons him into the ultimate duel with Darth Vader.', 'Star WarsTrailer.mp4', 'Parents', '8.7/10'),
(4, 'Psycho', 'psycho.jpg', '1960', '109 min', 'Phoenix office worker Marion Crane is fed up with the way life has treated her. She has to meet her lover Sam in lunch breaks, and they cannot get married because Sam has to give most of his money away in alimony. One Friday, Marion is trusted to bank forty thousand dollars by her employer. Seeing the opportunity to take the money and start a new life, Marion leaves town and heads towards Sam\'s California store. Tired after the long drive and caught in a storm, she gets off the main highway and pulls into the Bates Motel. The motel is managed by a quiet young man called Norman who seems to be dominated by his mother.', 'Psycho.mp4', 'parents', '8.5/10'),
(5, 'Goodfellas', 'goodfellas.jpg', '1990', '146 min', 'Henry Hill might be a small time gangster, who may have taken part in a robbery with Jimmy Conway and Tommy De Vito, two other gangsters who might have set their sights a bit higher. His two partners could kill off everyone else involved in the robbery, and slowly start to think about climbing up through the hierarchy of the Mob. Henry, however, might be badly affected by his partners\' success, but will he consider stooping low enough to bring about the downfall of Jimmy and Tommy?', 'Goodfellas.mp4', 'parents', '8.7/10'),
(6, 'Cinderella', 'Cinderella.jpg', '1950', '76 min', 'When Cinderella\'s dream of attending the Royal Ball and meeting the Grand Duke is hindered by her cruel stepmother, she gets some astounding help from her Fairy Godmother.', 'Cinderella - Trailer.mp4', 'Kids', '7.3/10'),
(7, 'One Hundred and One Dalmatians\r\n', 'Dalmatians.jpg\r\n', '1961', '79 min', 'Pongo and Perdita have a litter of 15 puppies. Cruella De Vil takes a fancy to the pups, and wants to get hold of them, as well as more pups, to make herself a lovely dalmatian skin coat... Cruella hires some thugs to kidnap the pups and hold them at her mansion. Will Pongo and Perdita find them in time ?', '101 Dalmatians.mp4', 'Kids', '7.2/10'),
(8, 'The Aristocats', 'aristocats.jpg', '1970', '78 min', 'Retired opera star Adelaide Bonfamille enjoys the good life in her Paris villa with even classier cat Duchess and three kittens: pianist Berlioz, painter Toulouse and sanctimonious Marie. When loyal butler Edgar overhears her will leaves everything to the cats until their death, he drugs and kidnaps them. However retired army dogs make his sidecar capsize on the country. Crafty stray cat Thomas O\'Malley takes them under his wing back to Paris. Edgar tries to cover his tracks and catch them at return, but more animals turn on him, from the cart horse Frou-Frou to the tame mouse Roquefort and O\'Malley\'s jazz friends. ', 'The Aristocats.mp4', 'Kids', '7.1/10'),
(9, 'The Little Mermaid', 'The Little Mermaid.jpg', '1989', '83 min', 'In Disney\'s beguiling animated romp, rebellious 16-year-old mermaid Ariel is fascinated with life on land. On one of her visits to the surface, which are forbidden by her controlling father, King Triton, she falls for a human prince. Determined to be with her new love, Ariel makes a dangerous deal with the sea witch Ursula to become human for three days. But when plans go awry for the star-crossed lovers, the king must make the ultimate sacrifice for his daughter.', 'The Little Mermaid.mp4', 'Kids', '7.6/10'),
(10, 'The Lion King', 'The Lion King.jpeg', '1994', '88 min', 'A young lion prince is cast out of his pride by his cruel uncle, who claims he killed his father. While the uncle rules with an iron paw, the prince grows up beyond the Savannah, living by a philosophy: No worries for the rest of your days. But when his past comes to haunt him, the young prince must decide his fate: Will he remain an outcast or face his demons and become what he needs to be?', 'The Lion King.mp4', 'Kids', '8.5/10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_music`
--

CREATE TABLE `tbl_music` (
  `music_id` int(11) NOT NULL,
  `music_name` varchar(100) NOT NULL,
  `music_poster` varchar(100) NOT NULL,
  `music_year` varchar(100) NOT NULL,
  `music_singer` varchar(100) NOT NULL,
  `music_type` varchar(100) NOT NULL,
  `music_link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_music`
--

INSERT INTO `tbl_music` (`music_id`, `music_name`, `music_poster`, `music_year`, `music_singer`, `music_type`, `music_link`) VALUES
(1, 'Can\'t Help Falling In Love', 'Elvis-Presley.jpg', '1961', 'Elvis Presley', 'parents', 'Cant Help Falling In Love.mp4'),
(2, 'Why Don\'t You Believe Me', 'Joni James.jpg', '1954', 'Joni James', 'parents', 'Why Dont You Believe Me.mp4'),
(3, 'Close to you', 'Carpenters.jpg', '1970', 'Carpenters', 'parents', 'Close to you.mp4'),
(4, 'Little Jeannie', 'Elton John.jpg', '1980', 'Elton John', 'parents', 'Little Jeannie.mp4'),
(5, 'Baby One More Time', 'Britney Spears.jpg', '1998', 'Britney Spears', 'parents', 'Baby One More Time.mp4'),
(6, 'Witch Doctor', 'Witch Doctor.jpg', '1958', 'Ross Bagdasarian Sr.', 'Kids', 'Witch Doctor.mp4'),
(7, 'Sugar, Sugar', 'The Archies.jpg', '1969', 'The Archies', 'Kids', 'SugarSugar.mp4'),
(8, 'There\'s a Hippo in My Tub', 'Anne Murray.jpg', '1977', 'Anne Murray', 'Kids', 'Theres a Hippo in My Tub.mp4'),
(9, 'Every Breath You Take\r\n', 'The Police.jpg', '1983', 'The Police', 'Kids', 'Every Breath You Take.mp4'),
(10, 'Cuppy Cake Song ', 'Cuppy Cake Song.jpg', '1995', 'Buddy Castle', 'Kids', 'Cuppy Cake Song.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_television`
--

CREATE TABLE `tbl_television` (
  `tv_id` int(11) NOT NULL,
  `tv_name` varchar(100) NOT NULL,
  `tv_poster` varchar(100) NOT NULL,
  `tv_year` varchar(20) NOT NULL,
  `tv_runtime` varchar(20) NOT NULL,
  `tv_info` text NOT NULL,
  `tv_trailer` varchar(100) NOT NULL,
  `tv_type` varchar(20) NOT NULL,
  `IMDb` varchar(20) NOT NULL,
  `tv_genres` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_television`
--

INSERT INTO `tbl_television` (`tv_id`, `tv_name`, `tv_poster`, `tv_year`, `tv_runtime`, `tv_info`, `tv_trailer`, `tv_type`, `IMDb`, `tv_genres`) VALUES
(1, 'The Jack Benny Program', 'The Jack Benny Program.jpg', '1950', '30 min', 'Jack Benny was a regular on his own radio program since 1932. He brought the program, with his underplayed humor, to television along with his radio regulars. Jack, who remained thirty-nine-years-old, kept his money in his basement and drove his old Maxwell car just as he had done on the radio.', 'The Jack Benny Program.mp4', 'parents', '8.4/10', 'Comedy'),
(2, 'The Andy Griffith Show', 'The Andy Griffith Show.jpg', '1960', '30 min', 'Widower Sheriff Andy Taylor, and his son Opie, live with Andy\'s Aunt Bee in Mayberry, North Carolina. With virtually no crimes to solve, most of Andy\'s time is spent philosophizing and calming down his cousin Deputy Barney Fife.', 'The Andy Griffith Show.mp4', 'parents', '8.3/10', 'Comedy, Family'),
(3, 'The Mary Tyler Moore Show\r\n', 'Mary Tyler.jpg\r\n', '1970', '30 min', 'Mary Richards moves to Minneapolis after a relationship goes bad. She finds work as an associate producer in a small television newsroom where the characters include Lou Grant, her gruff boss, Murray Slaughter the humorous writer, and Ted Baxter the Anchor Man who spends his time mispronouncing country names. Mary continues to hope for romance, but finds that her friends are more dependable.', 'The Mary Tyler Moore Show.mp4', 'parents', '8.1/10', 'Comedy'),
(4, 'Miami Vice', 'Miami Vice.jpg', '1984', '48 min', 'Stubble-faced detective Crockett lived in a sailboat guarded by his alligator Elvis. His partner Tubbs was a black New York cop looking for his brother\'s killer. Together they took on the Florida drug world. The show influenced men\'s fashions toward Italo-casual and interior decor toward the Miami look. Very trendy music and unusual guest performers.', 'Miami Vice.mp4', 'parents', '7.4/10', 'Action, Crime, Drama '),
(5, 'Friends', 'Friends.jpg', '1994', '22 min', 'Rachel Green, Ross Geller, Monica Geller, Joey Tribbiani, Chandler Bing and Phoebe Buffay are six 20 something year-olds, living off of one another in the heart of New York City. Over the course of ten years, this average group of buddies goes through massive mayhem, family trouble, past and future romances, fights, laughs, tears and surprises as they learn what it really means to be a friend.', 'Friends.mp4', 'parents', '8.9/10', 'Comedy, Romance '),
(6, 'The Howdy Doody Show ', 'Howdy Doody.jpg', '1947', '30 min', 'The first nationally televised American children\'s TV program and a prototype for what followed. Buffalo Bob Smith hosts while the puppet, Howdy Doody, stars.', 'The Howdy Doody Show.mp4', 'Kids', '7.7/10', 'Family'),
(7, 'The Flintstones\r\n', 'The Flintstones.jpg\r\n', '1960', '30 min', 'This popular animated television cartoon featured two Stone Age families, the Flintstones and their neighbors, the Rubbles. Much of the humor was based on its comic portrayals of modern conveniences, reinterpreted using Stone Age \'technology.\' Most notably were their cars, complete with absence of floorboards to allow them to be \'foot-powered.\'', 'The Flintstones.mp4', 'Kids', '7.5/10', ' Animation, Adventure, Comedy'),
(8, 'The Muppet Show\r\n', 'The Muppet Show.jpg\r\n', '1976', '30 min', 'Kermit the Frog is the manager of a cabaret-style theatre house, which invariably has more drama behind the stage than on it. He has to contend with wannabe-comedian bears, the smothering advances of Miss Piggy, crabby regular theatre patrons, homicidal chefs, livestock, not to mention making the weekly guest star feel welcome.', 'The Muppet Show.mp4', 'Kids', '8.3/10', 'Comedy, Family, Music '),
(9, 'The Smurfs', 'The Smurfs.jpg', '1981', '30 min', 'Classic Saturday-morning cartoon series featuring magical blue elf-like creatures called Smurfs. The Smurfs, named for their personalities, inhabit a village of mushroom houses in an enchanted forest. These loveable creatures are led by Papa Smurf and live carefree... except for one major threat to their existance: Gargamel, an evil but inept wizard who lives in a stone-built house in the forest; and his feline companion, the equally nasty Azrael. Typical stories deal with the Smurfs\' efforts to fight off Gargamel, who wanted to do one of several things to the blue creatures including eat them, make them slaves and gain their magical secrets in order to gain dignity among the wizard\'s fraternity. More than once, the Smurfs had to save Gargamel from his back-firing plans or even eviler wizards.', 'The Smurfs.mp4', 'Kids', '7.2/10', 'Animation, Adventure, Comedy '),
(10, 'SpongeBob SquarePants ', 'SpongeBob.jpg', '1999', '23 min', 'The character-driven cartoon chronicles the nautical and often nonsensical adventures of SpongeBob, an incurably optimistic and earnest sea sponge, and his underwater friends. Dwelling a few fathoms beneath the tropical isle of Bikini Atoll in the sub-surface city of Bikini Bottom, SpongeBob lives in a two-story pineapple. Instead of taking the logical approach to everyday challenges, SpongeBob approaches life in a wayward and unconventional way. Whether searching for the ultimate spatula to perfect his burger flipping technique at the Krusty Krab or just hanging out with his best friend Patrick (an amiable starfish), SpongeBob\'s good intentions and overzealous approach to life usually create chaos in his underwater world.', 'https://www.imdb.com/video/vi755743257?playlistId=tt0206512&ref_=tt_ov_vi', 'Kids', '8.1/10', ' Animation, Comedy, Family ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_music`
--
ALTER TABLE `tbl_music`
  ADD PRIMARY KEY (`music_id`);

--
-- Indexes for table `tbl_television`
--
ALTER TABLE `tbl_television`
  ADD PRIMARY KEY (`tv_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_music`
--
ALTER TABLE `tbl_music`
  MODIFY `music_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_television`
--
ALTER TABLE `tbl_television`
  MODIFY `tv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
