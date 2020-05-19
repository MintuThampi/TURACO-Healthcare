-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2020 at 11:08 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_carehome`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_PRN` varchar(50) NOT NULL,
  `admin_fname` varchar(100) NOT NULL,
  `admin_lname` varchar(100) NOT NULL,
  `admin_adrs` text NOT NULL,
  `admin_city` varchar(100) NOT NULL,
  `admin_cntry` varchar(100) NOT NULL,
  `admin_pin` varchar(10) NOT NULL,
  `admin_phone` varchar(20) NOT NULL,
  `admin_joindate` date NOT NULL,
  `admin_password` varchar(200) NOT NULL,
  `admin_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_PRN`, `admin_fname`, `admin_lname`, `admin_adrs`, `admin_city`, `admin_cntry`, `admin_pin`, `admin_phone`, `admin_joindate`, `admin_password`, `admin_image`) VALUES
(3, 'mintu@turaco.com', '', 'Mintu ', 'Thampi', 'Thottanil', 'Ernakulam', 'kerala', '686663', '8301880963', '2020-02-17', 'mintu', '32.jpg'),
(4, 'athira@turaco.com', '', 'Athira', 'Sailas', 'Kozhippillil(h)\r\n', 'Ernakulam', 'Kerala', '686663', '9961075486', '2020-03-06', 'athira', '1920x120012.jpg'),
(5, 'simonsmith@turaco.com', '', 'SIMON ', 'SMITH', '3.17 William Rankine', 'Wegberg', ' Germany', '54654', ' +44(0)131 6507159', '2019-01-18', 'simon', '21.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_caredetails`
--

CREATE TABLE `tbl_caredetails` (
  `cd_id` int(11) NOT NULL,
  `care_id` int(11) NOT NULL,
  `cd_name` varchar(100) NOT NULL,
  `cd_about` text NOT NULL,
  `cd_adrs` text NOT NULL,
  `cd_mob` varchar(100) NOT NULL,
  `cd_email` varchar(100) NOT NULL,
  `cd_file` varchar(100) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_caredetails`
--

INSERT INTO `tbl_caredetails` (`cd_id`, `care_id`, `cd_name`, `cd_about`, `cd_adrs`, `cd_mob`, `cd_email`, `cd_file`, `created_by`, `created_date`) VALUES
(22, 15, 'OAK HOUSE RESIDENTIAL<br>  CARE HOME', 'Oak House is a warm and welcoming,<br> family run care home <br> situated in the idyllic Rutland<br>  village of Greetham. The home is<br>  registered with the Care Quality Commission <br> and maintains a Good CQC <br> rating in all areas. We offer services<br>  to the frail elderly and people with <br> physical disability or sensory impairment.', 'Pond Ln\r\nOakham, UK', '01572812647', 'oakhouse@gmai.com', '65432227997_0705191152011.jpg', 3, '2020-04-27'),
(23, 14, 'Notaro Care homes', 'Notaro Care Homes has been<br> providing dementia care across<br> Somerset for over 30 years.<br> We have many care homes <br>within Somerset that specialise <br>in care and nursing those<br> living with dementia.', 'N. Notaro Homes Ltd<br>\r\nQueensmead Court<br>\r\nBristol Road<br>\r\nWinscombe<br>\r\nNorth Somerset<br>\r\nBS25 1PR', '01934422824', 'info@notarohomes.co.uk', 'immacollatta_mainphoto1-480x314.jpg', 3, '2020-04-27'),
(28, 24, 'OAK HOUSE RESIDENTIAL<br> CARE HOME', 'Oak House is a warm and <br>welcoming,family run ...', 'Pond Ln<br>\r\nOakham, UK', '01572812647', 'oakhouse@gmai.com', '1_VCP_MEN_18092019_Dell_Care_Home_002JPG1.jpg', 4, '2020-05-10'),
(29, 25, 'Notaro Care homes', 'Notaro Care Homes has been<br> providing dementia ...\r\n', 'N. Notaro Homes Ltd<br>\r\nQueensmead Court<br>\r\nBri...\r\n', '0193442282', 'info@notarohomes.co.uk', '65432227997_0705191152012.jpg', 4, '2020-05-10'),
(30, 24, 'OAK HOUSE RESIDENTIAL<br> CARE HOME', 'Oak House is a warm and <br>welcoming,family run ...', 'Pond Ln<br>\r\nOakham, UK', '01572812647', 'oakhouse@gmai.com', '1_VCP_MEN_18092019_Dell_Care_Home_002JPG1.jpg', 5, '2020-05-11'),
(31, 25, 'Notaro Care homes', 'Notaro Care Homes has been<br> providing dementia ...\r\n', 'N. Notaro Homes Ltd<br>\r\nQueensmead Court<br>\r\nBri...\r\n', '0193442282', 'info@notarohomes.co.uk', '65432227997_0705191152012.jpg', 5, '2020-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_caretype`
--

CREATE TABLE `tbl_caretype` (
  `care_id` int(11) NOT NULL,
  `care_type` varchar(100) NOT NULL,
  `care_description` text NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_caretype`
--

INSERT INTO `tbl_caretype` (`care_id`, `care_type`, `care_description`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(14, 'Dementia care', 'We provide specialist dementia care in most of our care homes.<br> We understand the specific challenges faced by people living with<br> dementia – our teams are able to provide professional and compassionate <br>support for both our residents and their loved ones.        ', 3, '2020-03-06', NULL, NULL),
(15, 'Residential care', ' Our residential care homes provide a safe, warm and friendly <br>environment with support for daily tasks such as washing, <br>cleaning and laundry.', 3, '2020-03-06', NULL, NULL),
(16, 'Nursing care', 'We provide nursing care for individuals with specialist requirements <br>in many of our care homes. Our nursing care teams are fully qualified<br> and have the specialist expertise required to care for residents’ varying <br>medical needs and requirements.', 5, '2020-03-06', NULL, NULL),
(17, 'Day Care', 'Day care offers a friendly and stimulating home-away-from-home,<br> for people who are still living at home and may need <br>some additional support during the day.', 3, '2020-03-06', NULL, NULL),
(23, 'Day Care', 'Day care offers a friendly and stimulating home-away-from-home,<br> for people who are still living at home and may need <br>some additional support during the day.', 4, '2020-03-06', NULL, NULL),
(24, 'Dementia care', 'We provide specialist dementia care in most of our care homes.<br> We understand the specific challenges faced by people living with<br> dementia – our teams are able to provide professional and compassionate <br>support for both our residents and their loved ones.        ', 4, '2020-03-06', NULL, NULL),
(25, 'Nursing care', 'We provide nursing care for individuals with specialist requirements <br>in many of our care homes. Our nursing care teams are fully qualified<br> and have the specialist expertise required to care for residents’ varying <br>medical needs and requirements.', 4, '2020-03-06', NULL, NULL),
(26, 'Residential care', ' Our residential care homes provide a safe, warm and friendly <br>environment with support for daily tasks such as washing, <br>cleaning and laundry.', 4, '2020-03-06', NULL, NULL),
(27, 'Day Care', 'Day care offers a friendly and stimulating home-away-from-home,<br> for people who are still living at home and may need <br>some additional support during the day.', 5, '2020-03-06', NULL, NULL),
(28, 'Dementia care', 'We provide specialist dementia care in most of our care homes.<br> We understand the specific challenges faced by people living with<br> dementia – our teams are able to provide professional and compassionate <br>support for both our residents and their loved ones.        ', 5, '2020-03-06', NULL, NULL),
(29, 'Residential care', ' Our residential care homes provide a safe, warm and friendly <br>environment with support for daily tasks such as washing, <br>cleaning and laundry.', 5, '2020-03-06', NULL, NULL),
(30, 'Nursing care', 'We provide nursing care for individuals with specialist requirements <br>in many of our care homes. Our nursing care teams are fully qualified<br> and have the specialist expertise required to care for residents’ varying <br>medical needs and requirements.', 3, '2020-03-06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_features`
--

CREATE TABLE `tbl_features` (
  `feature_id` int(11) NOT NULL,
  `feature_fe` varchar(100) NOT NULL,
  `feature_des` varchar(100) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_features`
--

INSERT INTO `tbl_features` (`feature_id`, `feature_fe`, `feature_des`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(3, 'Home Consultation by Doctors', 'Well, those who face the<br> challenge of caring<br> for someone confined to his / her bed<br> due t', 3, '2020-04-27', 0, '0000-00-00'),
(4, 'Skilled Nursing', 'Turaco HomeCare has qualified,<br> specially trained and<br> licensed nurses who can visit your love', 3, '2020-04-27', 0, '0000-00-00'),
(5, 'Personal Care', 'Our philosophy of optimum care<br> is based on enabling our clients<br> to perform the activities<br', 3, '2020-04-27', 0, '0000-00-00'),
(6, 'Respite Care', 'Everyone needs a break.<br> If you are a caregiver,<br> you may need a break from <br>caregiving tas', 3, '2020-04-27', 0, '0000-00-00'),
(7, 'Home Consultation by Doctors', 'Well, those who face the<br> challenge of caring<br> for someone confined to his / her bed<br> due t', 4, '2020-04-27', 0, '0000-00-00'),
(8, 'Skilled Nursing', 'Turaco HomeCare has qualified,<br> specially trained and<br> licensed nurses who can visit your love', 4, '2020-04-27', 0, '0000-00-00'),
(9, 'Personal Care', 'Our philosophy of optimum care<br> is based on enabling our clients<br> to perform the activities<br', 4, '2020-04-27', 0, '0000-00-00'),
(10, 'Respite Care', 'Everyone needs a break.<br> If you are a caregiver,<br> you may need a break from <br>caregiving tas', 4, '2020-04-27', 0, '0000-00-00'),
(11, 'Home Consultation by Doctors', 'Well, those who face the<br> challenge of caring<br> for someone confined to his / her bed<br> due t', 5, '2020-04-27', 0, '0000-00-00'),
(12, 'Skilled Nursing', 'Turaco HomeCare has qualified,<br> specially trained and<br> licensed nurses who can visit your love', 5, '2020-04-27', 0, '0000-00-00'),
(13, 'Personal Care', 'Our philosophy of optimum care<br> is based on enabling our clients<br> to perform the activities<br', 5, '2020-04-27', 0, '0000-00-00'),
(14, 'Respite Care', 'Everyone needs a break.<br> If you are a caregiver,<br> you may need a break from <br>caregiving tas', 5, '2020-04-27', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `gal_id` int(11) NOT NULL,
  `care_id` int(11) NOT NULL,
  `gal_image` varchar(100) NOT NULL,
  `gal_title` varchar(100) NOT NULL,
  `gal_desc` text NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`gal_id`, `care_id`, `gal_image`, `gal_title`, `gal_desc`, `created_by`, `created_date`) VALUES
(11, 0, '1.jpg', 'Turaco', 'Gallery1', 3, '2020-04-28'),
(12, 0, '2.jpg', 'Turaco', 'Gallery2', 3, '2020-04-28'),
(13, 0, '3.jpg', 'Turaco', 'Gallery3', 3, '2020-04-28'),
(14, 0, '4.jpg', 'Turaco', 'Gallery4', 3, '2020-04-28'),
(15, 0, '5.jpg', 'Turaco', 'Gallery5', 3, '2020-04-28'),
(16, 0, '1.jpg', 'Turaco', 'Gallery1', 4, '2020-04-28'),
(17, 0, '2.jpg', 'Turaco', 'Gallery2', 4, '2020-04-28'),
(18, 0, '3.jpg', 'Turaco', 'Gallery3', 4, '2020-04-28'),
(19, 0, '4.jpg', 'Turaco', 'Gallery4', 4, '2020-04-28'),
(20, 0, '1.jpg', 'Turaco', 'Gallery1', 5, '2020-04-28'),
(21, 0, '2.jpg', 'Turaco', 'Gallery2', 5, '2020-04-28'),
(22, 0, '3.jpg', 'Turaco', 'Gallery3', 5, '2020-04-28'),
(23, 0, '4.jpg', 'Turaco', 'Gallery4', 5, '2020-04-28'),
(25, 0, '2.jpg', 'Turaco', 'Gallery2', 5, '2020-04-28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(11) NOT NULL,
  `news_image` varchar(100) NOT NULL,
  `news_title` varchar(50) NOT NULL,
  `news_des` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `news_image`, `news_title`, `news_des`, `created_by`, `created_date`) VALUES
(2, '11.jpg', 'Does your loved one need medical OR non-medical ca', 'Aging is a natural process,<br> and slowing down is normal.<br> Things that once took no more <br>than ten minutes might not get <br>done in half an hour or more.<br> For the senior at home, <br>who was steam-rolling <br>through the needs of the family, <br>being forced to take it slow <br>might seem frustrating and upsetting.<br> ‘Ageing […]\r\n\r\n', 3, '2020-04-28'),
(3, '21.jpg', 'Why Does My Senior at Home Need Personal Care?', 'Making decisions is easy for<br> most of us. From picking out<br> what to wear to what to cook for<br> dinner or what movie to <br>watch, we make choices without much deliberation<br> every day. However, when one we are <br>is faced with the task of identifying<br> an external caregiver for a loved one,<br> the decision isn’t […]', 3, '2020-04-28'),
(4, '31.jpg', 'Choosing Your Caregiver', '“My mother just had a fall and <br>broke her hip. She will <br>need help to do her basic<br> activities at least for the next <br>three weeks and physiotherapy thereafter.” <br>“My father is 82. He already had<br> a heart condition and has now <br>been diagnosed with dementia. He will<br> need round-the-clock care to manage<br> his conditions.” […]', 3, '2020-04-28'),
(5, '11.jpg', 'Does your loved one need medical OR non-medical ca', 'Aging is a natural process,<br> and slowing down is normal.<br> Things that once took no more <br>than ten minutes might not get <br>done in half an hour or more.<br> For the senior at home, <br>who was steam-rolling <br>through the needs of the family, <br>being forced to take it slow <br>might seem frustrating and upsetting.<br> ‘Ageing […]\r\n\r\n', 4, '2020-04-28'),
(6, '21.jpg', 'Why Does My Senior at Home Need Personal Care?', 'Making decisions is easy for<br> most of us. From picking out<br> what to wear to what to cook for<br> dinner or what movie to <br>watch, we make choices without much deliberation<br> every day. However, when one we are <br>is faced with the task of identifying<br> an external caregiver for a loved one,<br> the decision isn’t […]', 4, '2020-04-28'),
(7, '31.jpg', 'Choosing Your Caregiver', '“My mother just had a fall and <br>broke her hip. She will <br>need help to do her basic<br> activities at least for the next <br>three weeks and physiotherapy thereafter.” <br>“My father is 82. He already had<br> a heart condition and has now <br>been diagnosed with dementia. He will<br> need round-the-clock care to manage<br> his conditions.” […]', 4, '2020-04-28'),
(8, '11.jpg', 'Does your loved one need medical OR non-medical ca', 'Aging is a natural process,<br> and slowing down is normal.<br> Things that once took no more <br>than ten minutes might not get <br>done in half an hour or more.<br> For the senior at home, <br>who was steam-rolling <br>through the needs of the family, <br>being forced to take it slow <br>might seem frustrating and upsetting.<br> ‘Ageing […]\r\n\r\n', 5, '2020-04-28'),
(9, '21.jpg', 'Why Does My Senior at Home Need Personal Care?', 'Making decisions is easy for<br> most of us. From picking out<br> what to wear to what to cook for<br> dinner or what movie to <br>watch, we make choices without much deliberation<br> every day. However, when one we are <br>is faced with the task of identifying<br> an external caregiver for a loved one,<br> the decision isn’t […]', 5, '2020-04-28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

CREATE TABLE `tbl_staff` (
  `stf_id` int(11) NOT NULL,
  `stf_image` varchar(50) NOT NULL,
  `stf_name` varchar(100) NOT NULL,
  `stf_adrs` varchar(100) NOT NULL,
  `stf_prn` varchar(100) NOT NULL,
  `stf_role` varchar(100) NOT NULL,
  `stf_quali` varchar(100) NOT NULL,
  `stf_exp` varchar(100) NOT NULL,
  `stf_mob` varchar(100) NOT NULL,
  `stf_email` varchar(100) NOT NULL,
  `stf_pswd` varchar(100) NOT NULL,
  `stf_cv` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`stf_id`, `stf_image`, `stf_name`, `stf_adrs`, `stf_prn`, `stf_role`, `stf_quali`, `stf_exp`, `stf_mob`, `stf_email`, `stf_pswd`, `stf_cv`, `status`) VALUES
(1, '1.jpg', 'Sakib Williams', 'Suite C2\r\n\r\n415 Chris Gaupp Dr, Galloway, NJ, 08205', '', 'Senior Physician', ' MD / DNB', '10+', '(609) 652-2033', 'sakibWilliams@gmail.com', 'sakib', 'download.jpg', 1),
(5, '3.jpg', 'Rickey Jhonson', '2011 E 75th St, Chicago, IL, 60649', '', 'Senior Physician', ' MD / DNB', '8+', '(773) 752-7796', 'rickeyJhonson@gmail.com', 'Rickey', 'download.jpg', 1),
(6, '2.jpg', 'Maria Anderson', '2011 E 75th St, Chicago, IL, 60649', '', 'Senior Physician', ' MD / DNB', '8+', '(773) 752-7796', 'MariaAnderson@gmail.com', 'maria', 'download.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vacancies`
--

CREATE TABLE `tbl_vacancies` (
  `vac_id` int(11) NOT NULL,
  `care_id` int(11) NOT NULL,
  `vac_jotitle` varchar(50) NOT NULL,
  `vac_desc` text NOT NULL,
  `vac_salary` varchar(100) NOT NULL,
  `vac_novac` varchar(100) NOT NULL,
  `vac_qual` varchar(100) NOT NULL,
  `vac_exprnz` varchar(100) NOT NULL,
  `vac_city` varchar(100) NOT NULL,
  `vac_ldate` date NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_vacancies`
--

INSERT INTO `tbl_vacancies` (`vac_id`, `care_id`, `vac_jotitle`, `vac_desc`, `vac_salary`, `vac_novac`, `vac_qual`, `vac_exprnz`, `vac_city`, `vac_ldate`, `created_by`, `created_date`) VALUES
(17, 14, 'Doctor', 'Required doctor with good <br>communication skills and well <br>experienced. Interested candidates<br> apply directly to turaco.', '50000-60000', '3', 'MBBS', '2 to 4 Years', 'sherbourne', '2020-06-26', 3, '2020-04-28'),
(18, 15, 'Nurse', 'Clinically and technically skilled<br> and competent. People-oriented, <br>flexible and adaptable.', '28000', '5', 'B.Sc Nursing ', '0 - 5 Years Experience', 'sherbourne', '2020-07-16', 3, '2020-04-28'),
(19, 17, 'Senior Physician', 'We are having vacancies for the following post<br>\r\n\r\n• Anasthesia\r\n<br>\r\n• Cardiologist\r\n<br>\r\n• Consultant\r\n', '45000', '1', ' MD / DNB', '2 to 4 Years', 'sherbourne', '2020-05-23', 3, '2020-04-28'),
(20, 14, 'Doctor', 'Required doctor with good <br>communication skills and well <br>experienced. Interested candidates<br> apply directly to turaco.', '50000-60000', '4', 'MBBS', '2 to 4 Years', 'sherbourne', '2020-06-26', 4, '2020-04-28'),
(21, 15, 'Nurse', 'Clinically and technically skilled<br> and competent. People-oriented, <br>flexible and adaptable.', '28000', '5', 'B.Sc Nursing ', '0 - 5 Years Experience', 'sherbourne', '2020-07-16', 4, '2020-04-28'),
(22, 17, 'Senior Physician', 'We are having vacancies for the following post<br>\r\n\r\n• Anasthesia\r\n<br>\r\n• Cardiologist\r\n<br>\r\n• Consultant\r\n', '45000', '1', ' MD / DNB', '2 to 4 Years', 'sherbourne', '2020-05-23', 4, '2020-04-28'),
(23, 14, 'Doctor', 'Required doctor with good <br>communication skills and well <br>experienced. Interested candidates<br> apply directly to turaco.', '50000-60000', '3', 'MBBS', '2 to 4 Years', 'sherbourne', '2020-06-26', 5, '2020-04-28'),
(24, 15, 'Nurse', 'Clinically and technically skilled<br> and competent. People-oriented, <br>flexible and adaptable.', '28000', '5', 'B.Sc Nursing ', '0 - 5 Years Experience', 'sherbourne', '2020-07-16', 5, '2020-04-28'),
(25, 17, 'Senior Physician', 'We are having vacancies for the following post<br>\r\n\r\n• Anasthesia\r\n<br>\r\n• Cardiologist\r\n<br>\r\n• Consultant\r\n', '45000', '1', ' MD / DNB', '2 to 4 Years', 'sherbourne', '2020-05-23', 5, '2020-04-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_caredetails`
--
ALTER TABLE `tbl_caredetails`
  ADD PRIMARY KEY (`cd_id`);

--
-- Indexes for table `tbl_caretype`
--
ALTER TABLE `tbl_caretype`
  ADD PRIMARY KEY (`care_id`);

--
-- Indexes for table `tbl_features`
--
ALTER TABLE `tbl_features`
  ADD PRIMARY KEY (`feature_id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`gal_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  ADD PRIMARY KEY (`stf_id`);

--
-- Indexes for table `tbl_vacancies`
--
ALTER TABLE `tbl_vacancies`
  ADD PRIMARY KEY (`vac_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_caredetails`
--
ALTER TABLE `tbl_caredetails`
  MODIFY `cd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_caretype`
--
ALTER TABLE `tbl_caretype`
  MODIFY `care_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_features`
--
ALTER TABLE `tbl_features`
  MODIFY `feature_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `gal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  MODIFY `stf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_vacancies`
--
ALTER TABLE `tbl_vacancies`
  MODIFY `vac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
