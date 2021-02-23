-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2021 at 02:53 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2021_02_15_070703_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'The Evolving Future of the Office', 'As I write this, a growing number of companies have either announced plans to move out of California to a more \"friendly\" state or have already done so.\r\n\r\nHowever, in this environment where people don\'t need to go physically into the office, it is unclear if any California-based workforce must or will move with these companies that are fleeing the Golden State.\r\n\r\nI participated in a group analyst event several weeks ago about companies converting their offices into collections of meeting rooms. We couldn\'t picture people who have been meeting remotely for so many months suddenly concluding that the long commute to and from the office was worth meeting in person; given they are now okay with using solutions like Webex or Microsoft Teams.\r\n\r\nLet\'s talk about what the future of the office should be, and we\'ll conclude with my product of the week, the Microsoft Surface Pro 7.', '2021-02-15 07:44:37', '2021-02-15 07:44:37'),
(2, 'Where Will the Penguin March From Here?', 'One of Linux\'s greatest and most distinguishing traits is its adaptability. Compare how it started and how it\'s going, and you\'ll see what I mean.\r\n\r\nLinux began its life as a humble experiment in Unix porting, but from there it quickly became a popular kernel for server OSes due to its low cost (\"free\" is pretty low) and customizability. From there it morphed to power network appliances (think routers) and Android, proving it was lean enough for a whole gamut of embedded systems.\r\n\r\nIt\'s easy to forget that Linux\'s proliferation to every class of computing device has not concluded its evolution. With that in mind, I want to take a moment to not only catch up with its changes, but to potentially get ahead of them.\r\n\r\nDon\'t take this as gospel truth, though. This is just me expanding on an intuition I had while studying technology trends. Plus, the beginning of the year has me, like many people, in a prognosticatory mood.', '2021-02-15 07:45:20', '2021-02-15 07:45:20'),
(3, 'The Unforeseen Consequences of Amazon\'s Boardroom Switch', 'Jeff Bezos last week announced he will be stepping down from his role of CEO Amazon. Bezos is following Microsoft\'s lead and putting his cloud executive Andy Jassy in charge of the company. Given that Microsoft was exceedingly successful with putting Satya Nadella in the same role, it would seem that this would be a slam-dunk success.\r\n\r\nBut the issue is that Amazon is not Microsoft; it is an online retail company with an unusual interest in cloud services. Amazon\'s success is that, up until now, its cloud business was run by a subject matter expert, and Bezos, while building Amazon, became an expert in online retail.\r\n\r\nBlue Origin, which Elon Musk\'s SpaceX has significantly eclipsed, is also run by experts. Still, Bezos isn\'t a rocket scientist, and this game of musical chairs will end with their cloud expert running the retail business and Bezos attempting to run full time a rocket company.\r\n\r\nThis effort will almost certainly not end well because each executive\'s skills -- with the possible exception of who takes over Andy Jassy\'s cloud job -- are unqualified for the part of Bezo\'s empire they are running.\r\n\r\nLet\'s explore this potential train wreck this week, and we\'ll close with my product of the week, the new robotic Echo Show 10.', '2021-02-15 07:45:48', '2021-02-15 07:45:48'),
(4, 'High Time for Cyberlaw Enforcement and a Future of Work Strategy', 'Huawei has events where it pulls together key analysts to focus on problems it thinks are critical to the future. At its last event, Huawei spoke about two areas that need considerable work.\r\n\r\nOne is that we need an international cybersecurity commission with teeth before some country accidentally starts WWIII with a cyberattack. The recent SolarWinds attack was a case in point. Allegedly from Russia, this attack penetrated some of the most secure facilities and could have resulted in a catastrophic failure in infrastructure, potentially resulting in mass loss of life. We got lucky this time and may not be so lucky the next.\r\n\r\nHuawei CSO Andy Purdy also spoke about the lack of a comprehensive strategy for the future of work post-COVID-19 coming from any country. The EU did develop one, but it severely lacked in needed detail to be used as a guideline for firms like Huawei to build for the future. I did market and business analysis when I was in IBM, and part of that job was to forecast the future so that future products could meet those anticipated future needs.\r\n\r\nI later became aware of Intel\'s Science Fiction Prototyping effort created by my old friend Brian David Johnson, which the DoD utilized though I\'m not sure it survived the last administration.\r\n\r\nLet\'s talk this week about the critical need for centralized cyberlaw enforcement -- and international cyberlaws -- and the need for a clear vision on the future of work. We\'ll close with my product of the week, a new 40\" curved monitor from Dell, which may be the ultimate monitor for those of us who work from home.', '2021-02-15 07:54:46', '2021-02-15 07:54:46'),
(5, '3 Helpful Networking Projects for Your Raspberry Pi', 'Raspberry Pi Networking Projects\r\n\r\nOnline Cybersecurity Degree\r\nPursue lucrative and in-demand roles with Utica College\'s 100% online cybersecurity degree. You’ll choose from four specializations to tailor your degree to your career goals. Study at an institution designated as a National Center of Academic Excellence in Cyber Defense Education (CAE/CDE). Request Information »\r\nIn spite of being a beloved companion to computer hobbyists the world over, the Raspberry Pi doesn\'t get enough credit. In fact, single-board computers of all stripes haven\'t gotten their due -- I just happen to have a Raspberry Pi. It was upon casting a stray glance into the corner of my room where my Pi is, churning away on the previous task I assigned it, that I pondered all the loftier projects I have in mind for it.\r\n\r\nIt will probably be a while before I tackle those grand designs. But the next best thing to following my dreams is to share them. The ideas here are charcoal sketches, not full illustrations, but they yield a rough picture.\r\n\r\nI should also note that these projects all contain Linux in their blueprints (shocking, I know). As this is the preliminary stage, we can leave the exact distribution blank for now. You can safely trust, though, that any services we might need our Pi to run will fasten flush onto a Linux base.', '2021-02-15 07:55:40', '2021-02-15 07:55:40'),
(6, 'How to Buy a Linux-Powered Laptop', 'Buying Linux-powered laptops should be easy, especially on big-name manufacturers\' websites. But it isn\'t. You must employ workarounds to succeed or spend caches of money!\r\n\r\nThat is why downloading free Linux distributions and installing the operating system onto existing computers is a typical avenue for adopting Linux. Some computer manufacturers sell Linux-only hardware. Only a few of the major computer makers cater to providing Linux Inside. The challenge is finding both those that do and being willing to pay a higher buy-in price.\r\n\r\nI had a battle with an aging computer a few weeks ago. That is when I realized how spoiled I had become with installing a variety of Linux distributions on my collection of computers over the years to keep them in service. The reality of actually having to buy a shiny new laptop had long escaped me.\r\n\r\nMy collection of laptops goes back to the days of Windows ME and Windows XP. With out-of-date Windows versions, I would simply wipe the hard drive and install a Linux distribution in their place. I do that not because I am a cheapskate. Using a variety of computer configurations gives me an edge in software testing and writing my Linux Picks and Pans reviews for LinuxInsider. That is something I have maintained over the last few decades.\r\n\r\nOne of my newest old laptops started acting up recently. In its heyday, that aluminum-encased laptop swiftly ran Windows 10 and had an 18\" screen view. I put a variety of Linux distros as dual-boot residents on its hard drive.\r\n\r\nIn the process of testing other Linux inhabitants, my middle-aged speedster would lockup. I chalked up that bad behavior to the beta versions of software I was testing or an uncooperative driver.\r\n\r\nThen I realized that Linux distros I ran in live session or from portable Linux USB drive installations ran just fine. No lockups ever happened. But when I installed them on the hard drive, things went wrong.\r\n\r\nBench tests I conducted verified that the memory modules were fine. But the hard drive was fading fast.\r\n\r\nThat laptop was a powerhouse performer. I hated to see it go. Running portable Linux OSes from the USB drive that loaded into RAM was a temporary solution to keep my favorite device from Bit Heaven. It was time to actually buy a replacement laptop.\r\n\r\nThe last new laptop I bought -- other than several high-end Chromebooks -- was eight years ago. I hopped on the Internet and started looking for my new digital work companion by searching for \"Linux Computers.\"', '2021-02-15 07:56:12', '2021-02-15 07:56:12'),
(7, '2021: The Year of Robotics and Artificial Intelligence', 'I\'m writing this just before New Year\'s Day, and like many of you I\'m hoping to reach my one remaining goal for 2020, which is to be alive in 2021. I\'m looking forward to putting 2020 behind, and while the pandemic has been painful, it has caused things to accelerate in several areas impressively rapidly. Two of those areas are robotics and artificial intelligence, which we\'ll see adapted broadly this decade with a considerable bump in 2021.\r\n\r\nLet\'s talk about all of that this week, and we\'ll close with my first product of the week in 2021, the Somnofy AI Sleep Monitor.\r\n\r\nLet\'s begin.\r\n\r\nRobots, Robots, Robots\r\nRobots, robots, and more robots will increasingly surround us in 2021.\r\n\r\nWe ended 2020 watching the Boston Dynamics robots do choreography. This showcased just how incredibly capable these things are becoming and making some of us wonder if we should be looking for Skynet.', '2021-02-15 07:56:37', '2021-02-15 07:56:37'),
(8, 'Standout Tech Products of 2020', 'Every year I look back at all of the Products of the Week I\'ve selected during the year and pick the one that made the most significant impression on me to crown the Product of the Year.\r\n\r\nThis year the election and pandemic kept our lives pretty messed up, and to keep working we relied heavily on our laptops, cloud services, networking gear, and our collaboration apps.\r\n\r\nWe also needed entertainment to stay sane, and whether it was HBO Max, Netflix, or Amazon Prime, we found our release in online entertainment.\r\n\r\nLet\'s look at my top 13 contenders, and then I\'ll rank the top four products as we work toward the 2020 Product of the Year.\r\n\r\nSo here we go, in no particular order.\r\n\r\nCisco Webex Desk Hub\r\nI started in tech working for IBM\'s telecommunications division, and for a time, I was the Competitive Analyst over desktop phones. This effort was back in the 1980s. We had created phones that went beyond voice to include critical information on who was calling, both text and voice messaging, and the merger of electronic text and voice messaging.\r\n\r\nSince then, I\'ve wanted many of these features, yet office phones were outstripped by smartphones in terms of functions and languished. That was until this year when Cisco rethought the desk phone with its Webex Desk Hub.', '2021-02-15 07:57:02', '2021-02-15 07:57:02'),
(9, 'The Evolution of Personal Communications Technology Through 2050', 'Qualcomm recently took an in-depth look back at the history of the mobile phone, which it was mostly responsible for creating. This turned out to be a personal retrospect because my family owned an electronics company in the 1960s, which was when I used my first mobile phone in my father\'s Studebaker Avanti.\r\n\r\nAt the time, I thought it was the most amazing thing to be able to make a call from a car. What was funny is that phone had a dial and buttons, which mostly didn\'t seem to do anything, and it worked more like a radio on a boat or plane than an actual phone. But it was cool.\r\n\r\nAs we advance 50 years to the present, our smartphones do more things than our PCs because they are more portable, more likely to be with us, and handle telephony.\r\n\r\nCisco last week released its desktop phone replacement, the Webex Desk Hub. While this device initially only merges your desktop phone and smartphone, it could quickly evolve to replace your PC as well.\r\n\r\nSince we\'re approaching the end of 2020, let\'s speculate a bit about how the smartphone and the PC will likely evolve over the next three decades, and build up to what that means for personal communications technology in 2050.\r\n\r\nWe\'ll close with my product of the week, the aforementioned Webex Desk Hub, which is arguably the most evolutionary innovation to the desk phone since its invention.', '2021-02-15 07:57:30', '2021-02-15 07:57:30'),
(10, 'Tech Gift Ideas to Help Tackle Your Holiday Shopping List', 'Today is Cyber Monday, which doesn\'t mean as much this year because the related sales have been going on for much of November as retailers try to milk every available dollar they can. However, like you, I\'m doing a lot of shopping, both for others (yes, I\'m going to cheat and mostly give Amazon gift cards but some gifts) and myself.\r\n\r\nSince this entire column is about products, I\'ll skip the product of the week and focus on what I think are some of the best deals or products that stand out as game changers in their segment -- and aren\'t too expensive.\r\n\r\nI was tempted to have a car section focused on electrics. Still, after watching this Audi E-Tron review, I\'m reminded that all but the Tesla are Generation 1 cars, and the Tesla\'s fit and finish are so bad I suggest waiting until the Gen-2 cars come out, and then we\'ll revisit this.\r\n\r\nLet\'s get to it.', '2021-02-15 07:57:54', '2021-02-15 07:57:54'),
(11, 'It Came From the Live-Boot: A True Linux Horror Story', 'The Linux desktop distros of today are the most accessible to complete newcomers as they have ever been. There was a time not long ago when only truly intrepid computer thrill seekers would dare install Linux. Now, not only can one get Linux installed on most desktop or laptop computer hardware in 15 minutes, but one can hand it off to anyone with the loosest grasp on how to use computers and expect them to be just fine.\r\n\r\nAll of that said, once in a blue moon, one will experience sheer terror at the hands of a buggy Linux system. No amount of battle-hardiness can keep you completely safe, either.\r\n\r\nI know this because not too long ago, a fear-inducing Linux bug came for me. I wanted to share this true Linux story, so that you may be informed and entertained. Out of respect to hard-working Linux distro developers who make honest mistakes, I will not name the offending distribution, but to add an air of ominousness I will note that it has consistently ranked in DistroWatch\'s Top 10 for at least a year.\r\n\r\nTo those of you who place unshakeable confidence in \"mainstream\" distros: You have been warned. Now then, let us begin.', '2021-02-15 07:58:45', '2021-02-15 07:58:45'),
(12, 'IBM, Microsoft, and the Future of Healthcare', 'Healthcare is a mess, not just here in the U.S., but in most countries. Some of the biggest problems in this data-rich era are the lack of interoperability and fact-based advice. Two companies that stand out as aggressively trying to fix this are IBM and Microsoft.\r\n\r\nIBM focused its Watson AI on providing medical professionals with diagnostic tools allowing them to diagnose even the most mysterious illnesses more accurately.\r\n\r\nSimultaneously, Microsoft recently brought out its Microsoft Cloud for Healthcare, providing unprecedented data access for both doctors and patents. Both solutions, using different paths, help to improve the patient experience and outcome while lowering costs.\r\n\r\nLet\'s contrast IBM\'s and Microsoft\'s healthcare efforts this week -- and we\'ll close with my product of the week: the most advanced electric motorcycle on the market.\r\n\r\n\r\n\r\nIBM Watson and Healthcare\r\nOne of the most powerful tools I\'ve seen applied to the healthcare problem is IBM\'s Watson platform. It first came to the market focused on this segment, and I had a chance to talk with the doctor leading the effort.\r\n\r\nHe told a story about a patient he\'d run into years earlier with a painful condition that no one could diagnose. The near-constant extreme pain that savaged the woman struck a chord in his heart, and he dedicated his time over the years to diagnose and solve her problem. It turned out to be a little-known and very mysterious disease that only a handful of people had heard of, let alone been able to diagnose.\r\n\r\nSo one of the doctor\'s first tests on the then-new Watson medical implementation was to input this now-cured woman\'s symptoms, to see if Watson could reach the same result in an acceptable level of time. Within minutes Watson identified several possibilities, including the mysterious illness.\r\n\r\nDespite the fact that additional testing to confirm which of those identified illnesses was the true affliction would have taken several days, the end result would have been the same successful treatment soon thereafter -- and reduced the patient\'s years of pain to only days, if not hours.\r\n\r\nThis remains one of the most powerful stories I\'ve ever heard about applied AI technology addressing human suffering. It showcased IBM\'s then-high priority to focus its efforts on helping people; and set a foundation for the company\'s AI belief today: AIs are best as assistants to humans, not as replacements.', '2021-02-15 07:59:14', '2021-02-15 07:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rajesh', 'rajesh@gmail.com', NULL, '$2y$10$7PSfux47MwuU95hjJ04w/OWu4fnvdbzgBlHJ5wriJ06sTWIVgsPQG', NULL, '2021-02-15 01:51:19', '2021-02-15 01:51:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
