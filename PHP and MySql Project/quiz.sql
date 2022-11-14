-- Sujan Basnet
--4/17/2021
--PHP and MySql Project

phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2022 at 07:15 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--
CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `grade` text NOT NULL,
  `category` text NOT NULL,
  `question_no` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `right` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `grade`, `category`, `question_no`, `question`, `option1`, `option2`, `right`) VALUES
(1, '1', 'english', 1, 'The plural of “moose” is… ', 'Moose', 'Mooses', 'Moose'),
(2, '1', 'english', 2, 'How many letters are in the English alphabet? ', '24', '26', '26'),
(3, '1', 'english', 3, 'In the story about the boy who cried wolf, what is the lesson?', 'Be nice to everyone', 'Always tell the truth', 'Always tell the truth'),
(4, '1', 'english', 4, 'What is the term for a word that is similar in meaning to another word? ', 'Antonym', 'Synonym', 'Synonym'),
(5, '2', 'english', 1, 'What type of literature features magical creatures, such as giants, gnomes, and goblins?', 'Science Friction', 'Fairy Tales', 'Fairy Tales'),
(6, '2', 'english', 2, ' Is “red” an adjective or a noun?', 'Both', 'None', 'Both'),
(7, '2', 'english', 3, 'What is the term for a word that has the opposite meaning of another word? ', 'Synonym', 'Antonym', 'Antonym'),
(8, '2', 'english', 4, 'What are the five interrogative or \"question\" words?', 'Who, what, when, where, why', 'Who, what, when, where, whose', 'Who, what, when, where, why'),
(9, '3', 'english', 1, 'The person in a novel who tells the story from a third-person perspective is called a what?', 'A writer', 'A narrator', 'A narrator'),
(10, '3', 'english', 2, 'Adding conjunctions such as “and” or “but” turns a simple sentence into what type of \r\nsentence?', 'Compound sentence', 'Concrete sentences', 'Compound sentence'),
(11, '3', 'english', 3, 'Who is the author of James and the Giant Peach? ', 'Mark Twain', 'Roald Dahl', 'Roald Dahl'),
(12, '3', 'english', 4, 'The main series of events in a story is called a what? ', 'Twist ', 'A plot', 'A plot'),
(13, '4', 'english', 1, ' What is the main character in a story called?', 'A protagonist', 'Hero', 'A protagonist'),
(14, '4', 'english', 2, 'What type of word is “truthfully?” ', 'Adverb', 'Adjective', 'Adverb'),
(15, '4', 'english', 3, ' In this book titled The Lion, the Witch, and the Wardrobe, what is the last comma called?', 'The Oxford comma', 'Semicolon ', 'The Oxford comma'),
(16, '4', 'english', 4, ' A story conveying a moral lesson is called what?', 'A fable', 'A Plot', 'A fable'),
(17, '5', 'english', 1, ' Who is the creator of the classic book characters Tom Sawyer and Huckleberry Finn?', 'Mark Twain\r\n', 'Ronald Dahl', 'Mark Twain\r\n'),
(18, '5', 'english', 2, ' The words “the,” “an,” and “a,” are known as what in English grammar? ', 'Adverbs', 'Articles', 'Articles'),
(19, '5', 'english', 3, 'Often seen at the end of a sentence, the three trailing dots that indicate the omission from speech or writing of a word or words that are superfluous or able to be understood from contextual clues are known as…', 'Ellipsis', 'Eclips', 'Ellipsis'),
(20, '5', 'english', 4, 'What is the name of the most famous English playwright?', 'William Shakespeare\r\n', 'Harper Lee', 'William Shakespeare\r\n'),
(21, '1', 'math', 1, 'How many face cards are in a regular deck of playing cards? ', '12', '14', '12'),
(22, '1', 'math', 2, 'The first day of the 20th century was… \r\n', '1 January 2000', '1 January 1901', '1 January 1901'),
(23, '1', 'math', 3, ' How many states made up the United States before Alaska and Hawaii joined? ', '48', '56', '48'),
(24, '1', 'math', 4, 'The largest number that can be pronounced with a single syllable is… ', '10', '12', '12'),
(25, '2', 'math', 1, ' What is the area of a triangle with a height of 4 and a width of 4? … ', '6', '8', '8'),
(26, '2', 'math', 2, 'Solve the following equation: 3 + 2 / 1 = … ', '5', '8', '5'),
(27, '2', 'math', 3, 'On a class field trip, there are 4 buses taking 36 students to the zoo. Each bus has the same number of student. How many students are on each bus?', '9 students on each bus', '12 students on each bus', '9 students on each bus'),
(28, '2', 'math', 4, '2 dozen kittens and 3 dozen puppies get adopted from the shelter. How many animals were adopted? ', '50', '60', '60'),
(29, '3', 'math', 1, ' To the nearest multiple of 10, how many kilograms of cheese are in 110 pounds of cheese…', '50', '60', '50'),
(30, '3', 'math', 2, 'If a shopping cart contains 1 apple, 2 bananas, 3 oranges, 4 hot dogs, what percent of the cart’s total contents is a fruit? ', '50%', '60%', '60%'),
(31, '3', 'math', 3, 'If the first person takes 25% of the cake and the second person takes 20% of the remainder, how much of the original cake remains?', ' 40%', ' 60%', ' 60%'),
(32, '3', 'math', 4, 'How many grams are in a thousand kilograms?', 'One Million', 'Ten Million', 'One Million'),
(33, '4', 'math', 1, 'If a train leaves the station and travels at 60 kilometers per hour, how much time will have passed when it arrives at a station 300 kilometers away? ', '3 hours or 180 minutes', '5 hours or 300 minutes', '5 hours or 300 minutes'),
(34, '4', 'math', 2, 'The interior angles of a triangle always sum to…', '180 degrees\r\n', '360 degrees\r\n', '180 degrees\r\n'),
(35, '4', 'math', 3, 'A farmer notices that every day for the past 10 days, the number of pigeons in his field has doubled. There are 1024 pigeons in the field today, and there were 2 pigeons there the first day. How many pigeons were there yesterday? ', '510', '512', '512'),
(36, '4', 'math', 4, 'Solve the following equation: 5 + 3 * 4 / 2 - 1 = … ', '10', '12', '10'),
(37, '5', 'math', 1, 'A hexagon has how many sides? ', '6', '8', '6'),
(38, '5', 'math', 2, 'A father has 7 daughters and 100 dollars. If he wants to give each daughter an equal amount of money, rounding to the nearest dollar, how much does each daughter get?', '12 dollars', '14 dollars', '14 dollars'),
(39, '5', 'math', 3, 'If a football field is 100 yards long, how many feet long is the football field? ', '200 feet', '300 feet', '300 feet'),
(40, '5', 'math', 4, 'You collect 48 pieces of Halloween candy. Your parents say you can eat 2 pieces per day, plus an extra piece on Saturdays and Sundays. How many weeks will it take to finish all of your candy? ', '3 weeks', '4 weeks', '3 weeks'),
(41, '1', 'geography', 1, 'How many continents are there? ', '6', '7', '7'),
(42, '1', 'geography', 2, 'What country is Paris the capital of? ', 'Italy', 'France', 'France'),
(43, '1', 'geography', 3, 'In which country are the famous Pyramids of Giza?', 'Egypt', 'India', 'Egypt'),
(44, '1', 'geography', 4, 'How many states are in the United States of America?', '50', '52', '50'),
(45, '2', 'geography', 1, 'Which state is called the Lone Star state? ', 'Colorado', 'Texas', 'Texas'),
(46, '2', 'geography', 2, 'In what state is the Grand Canyon located?', 'Alaska', 'Arizona', 'Arizona'),
(47, '2', 'geography', 3, 'What three countries are located in North America? ', 'The United States, and Mexico', 'Canada, the United States, and Mexico', 'Canada, the United States, and Mexico'),
(48, '2', 'geography', 4, 'To travel from New York to London, one must fly over which ocean? ', 'The Artic Ocean', 'The Atlantic Ocean', 'The Atlantic Ocean'),
(49, '3', 'geography', 1, 'What is the longest river in the world?', 'The Nile', 'The Amazon', 'The Amazon'),
(50, '3', 'geography', 2, 'On what continent is the country of Greece located? ', 'Asia', 'Europe', 'Europe'),
(51, '3', 'geography', 3, 'What is the name for a body of land that is completely surrounded by water?', 'An island', 'A valley', 'An island'),
(52, '3', 'geography', 4, 'What is the capital of New York?', 'Buffalo', 'Albany', 'Albany'),
(53, '4', 'geography', 1, ' Where is the largest desert in the world located? \r\n', 'Northern Africa', 'Southern Europe', 'Northern Africa'),
(54, '4', 'geography', 2, 'How many kingdoms are part of the United Kingdom?', '4: England, Northern Ireland, Scotland \r\nand Wales\r\n', '3: England, Scotland \r\nand Wales\r\n', '4: England, Northern Ireland, Scotland \r\nand Wales\r\n'),
(55, '4', 'geography', 3, 'Which country is the largest in size? ', 'China', 'Russia', 'Russia'),
(59, '4', 'geography', 4, 'What is the southernmost continent called?', 'Antarctica', 'Austerlia', 'Antarctica'),
(60, '5', 'geography', 1, 'What is the main language spoken in the Canadian province of Quebec?', 'English', 'French', 'French'),
(61, '5', 'geography', 2, 'Which country is both an island and a continent? ', 'Australia', 'India', 'Australia'),
(62, '5', 'geography', 3, 'What is the name of the sea bordered by Europe to the north and North Africa to the south? ', ' The Mediterranean Sea', 'The Caribbean Sea ', ' The Mediterranean Sea'),
(63, '5', 'geography', 4, 'The mountain range that includes Mount Everest is called...', 'The Himalayas', 'The Rocky Mountain', 'The Himalayas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
