-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25 Agu 2018 pada 11.46
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `comment`, `post_id`) VALUES
(1, 'ah masa?', 1),
(2, 'serius?', 1),
(3, 'Kacang murah kacang murah', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `create_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `create_by`) VALUES
(1, 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, cumque natus. Blanditiis culpa adipisci voluptatum ab alias minima consequatur nesciunt illum repellendus excepturi praesentium incidunt suscipit, modi nobis, consectetur, voluptates iure esse aliquid dicta, quam vitae! A, quasi necessitatibus sint eum alias praesentium voluptas nam ad. Repudiandae explicabo iusto odio cum eveniet animi qui voluptates at ipsa minima laudantium eos cumque corporis vero, optio! Voluptatem alias facere nostrum iusto autem repellendus! Sint repellendus nisi quia qui amet sed cumque perferendis alias sunt esse, earum? Atque doloribus impedit modi voluptates ea autem, explicabo incidunt asperiores dolorum eaque voluptas, sunt porro labore! Ratione harum officia, sint possimus perspiciatis modi cupiditate reprehenderit nam. Eos earum, doloremque, rerum eveniet modi molestiae distinctio et voluptates doloribus iure natus sed. Quaerat quis sequi natus quae adipisci debitis quisquam, sint incidunt ut commodi consequatur maxime nobis. Ad excepturi repudiandae quia libero nisi, consequatur error repellendus esse, voluptas natus molestias inventore ab, obcaecati, dolores id debitis commodi. Doloremque nesciunt omnis mollitia atque est consectetur minus, illum tempore tenetur eum alias quidem asperiores debitis? Officiis est doloribus reiciendis nemo iste, velit asperiores quidem. Quae exercitationem fugiat repudiandae consequuntur est culpa facilis consequatur ea soluta, cumque dolore quos harum cum.', 1),
(2, 'Autem corporis officia in exercitationem', 'Eum provident optio dolorum quibusdam, magni odio officia at quos perspiciatis, maxime, expedita ratione. Architecto exercitationem nulla sapiente. Reiciendis sapiente, enim aut eos excepturi eveniet nemo voluptate magnam incidunt vitae! Facere expedita, voluptas laudantium eos exercitationem porro inventore, velit provident incidunt architecto dolores autem. Commodi, ipsam, id. Sint delectus hic qui, eum, vitae debitis tenetur maiores eaque dicta architecto ad aut doloribus culpa impedit modi quo nostrum pariatur quia, aliquam voluptas labore aspernatur adipisci quaerat quod deleniti. Libero numquam amet, fugiat sit. Eligendi sed aperiam dolor ab, veniam laborum ut quia totam consequuntur et repellendus iusto quasi modi. Eum facilis porro natus ipsum nihil. Mollitia exercitationem pariatur sed voluptas? Dolorum voluptatibus voluptatum vero maxime aperiam, ut, beatae earum iste. Velit quo non soluta placeat expedita pariatur minus error. Explicabo incidunt quasi dicta dolor corporis magni doloremque harum possimus enim eaque cum repudiandae, autem magnam, omnis provident quam at, nostrum saepe eveniet illum quisquam in aliquam doloribus. Voluptatum similique, ducimus magni illum vero, deserunt aliquam aliquid consectetur aut officiis veritatis. Laudantium, cupiditate!', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`) VALUES
(1, 'paijo'),
(2, 'arjuna');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_ibfk_1` (`create_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Ketidakleluasaan untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`create_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
