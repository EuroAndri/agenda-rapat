-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 20, 2025 at 02:44 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agenda_rapat`
--

-- --------------------------------------------------------

--
-- Table structure for table `bahan`
--

CREATE TABLE `bahan` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rapat_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengguna_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci,
  `berkas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bahan`
--

INSERT INTO `bahan` (`id`, `rapat_id`, `pengguna_id`, `isi`, `berkas`, `created_at`, `updated_at`) VALUES
('0199eac8-4317-71ab-86b8-3d4d707690f3', 'dbd07bf8-ae5e-4a20-adff-d441c46d3a27', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'Optio in et repudiandae totam aperiam quaerat. Enim dolor voluptas consequatur optio non laboriosam natus optio.', 'bahan3.jpg', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-431b-73ff-a3c7-33bc63f6f7e1', '1ba0ac96-a370-43d3-b999-39509bfe1c20', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'Et possimus molestiae modi odit quia sequi. Cupiditate enim vel molestiae sit voluptas blanditiis in. Quo doloribus ut deserunt maiores perspiciatis quo vel. Autem dolorem nam vel quis quis excepturi.', 'bahan3.jpg', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-431f-73ae-b17c-70655d2e4510', 'aa6b1bf7-dcaf-4ec2-bf90-4ad7f04cbe30', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'Sit ipsam repellat distinctio nihil deleniti. Maxime dolore vitae sit cupiditate sed eveniet. Quia reiciendis iste molestiae provident.', 'bahan1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4322-7036-a1f0-bf1948307036', '1ba0ac96-a370-43d3-b999-39509bfe1c20', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'Est ut amet ullam consequatur reiciendis. Consequuntur quod itaque qui consequatur neque occaecati. Omnis rerum quibusdam dolore molestiae.', 'bahan2.pptx', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4324-71d9-ab18-dd45d7a2a25e', 'aa6b1bf7-dcaf-4ec2-bf90-4ad7f04cbe30', '90496118-8454-43cb-8a6d-1170cc4967c2', 'Quam maxime corporis molestiae dolorum repellendus. Cumque debitis culpa velit. Fuga dignissimos laboriosam eos nisi repellendus eos dolor. Et non minus tenetur nobis consequuntur placeat.', 'bahan2.pptx', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4327-7181-aac0-fdff7eef9029', '02fbaef9-65cd-4a7d-86dc-402192415a0b', '58a06c66-379f-46d1-a167-0692e8ec5126', 'Ipsa earum perferendis dolores voluptatum aliquam. Magni dolores commodi dolorem assumenda veniam assumenda ut cumque. Doloremque blanditiis dolores quibusdam occaecati labore. Pariatur mollitia itaque explicabo distinctio.', 'bahan1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-432a-7071-86ba-ee602f3524e3', 'baadbc1d-2d2b-443d-b6f7-7c4727e7ca86', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'Nulla distinctio ut non cum eligendi. Placeat corporis omnis quaerat dicta sit in. Sed nam consequuntur odit id labore quibusdam. Quam ea quia sed doloremque similique.', 'bahan2.pptx', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-432e-7145-8c5d-8c4ff42d3b17', 'ede72d30-9ef8-44d1-9045-04f4419b0772', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'Id et et explicabo repellendus quia. Molestiae unde reprehenderit minima expedita dolor. Non eveniet ea non voluptas et sint repudiandae. Sequi velit sit magni veniam.', 'bahan3.jpg', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-4331-72cb-b1dc-5229b025c1ec', '3f1ae17d-c72f-4c08-b935-fbe575b3b5d1', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'Dolorem libero aliquam error sit enim aspernatur omnis. Ipsam est fugiat sunt quo. Pariatur illo vero vitae eum et nihil esse voluptatibus. Itaque ducimus rerum non velit.', 'bahan1.pdf', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-4334-72f6-9abd-aa950fbf195a', 'aeb2bbba-3ca9-4950-a4f8-f14dcd6b8454', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'Eos perspiciatis modi eligendi esse perspiciatis explicabo maxime deleniti. Voluptatem vero odio commodi debitis est quaerat alias. Ratione ut cupiditate sunt. Dolorem neque ut et ea labore non ad.', 'bahan2.pptx', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-4336-7009-805f-4a30ab267544', 'aeb2bbba-3ca9-4950-a4f8-f14dcd6b8454', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'Molestias dolor repudiandae dolorem architecto. Consequuntur consequatur et ad exercitationem ipsam voluptatem. Vel quidem ad cum corporis. Voluptatem aut voluptatem dicta iusto omnis.', 'bahan2.pptx', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-4339-7069-b59c-dfc96ba829b5', '64d74d08-9808-4b4b-81c7-20dd63aed50e', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'Beatae excepturi distinctio qui ut. Quo quia ut nihil adipisci ea. Aperiam aut ducimus ex eligendi qui. Assumenda et officiis autem sed corrupti nulla ratione. Ea perferendis perspiciatis vitae optio minus.', 'bahan1.pdf', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-433c-72b1-baef-4b008a256c00', '1ba0ac96-a370-43d3-b999-39509bfe1c20', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'Ut ullam molestiae nam quia accusantium veniam quia. Ea nam quasi itaque aut. Quidem exercitationem aspernatur corporis iusto iste nesciunt. Necessitatibus voluptatem nam voluptas esse.', 'bahan1.pdf', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-433e-727b-a4f7-98ffb2441cb0', '7654c03f-f4b7-4646-86e3-8cc9f12a2dbc', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'Non doloremque sunt rem. Suscipit culpa maiores soluta. Perspiciatis suscipit tempore excepturi enim.', 'bahan1.pdf', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-4343-7286-af9c-225c699a8f30', '718e821d-d137-4c63-a6cb-e5a7ccf73e23', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'Unde quasi quis aperiam mollitia quasi. Qui voluptates accusantium fugiat voluptatem et rem rerum. Unde amet qui rerum deleniti consequatur. Molestias autem expedita recusandae labore maxime voluptatem. Ut voluptas sit recusandae pariatur sint culpa ab.', 'bahan2.pptx', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-4345-702a-b3c7-a7811d802c27', '688428c2-7f0c-4313-84ca-c69cb90f4ea0', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'Excepturi non sed soluta numquam minus eum. Fuga ipsa assumenda illum ullam sit. Ullam labore aut ut mollitia vel blanditiis animi harum. Qui voluptatem fugiat ab.', 'bahan3.jpg', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-4347-712c-bdb2-d576f722f310', '1ba0ac96-a370-43d3-b999-39509bfe1c20', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'Eum quis necessitatibus repellat mollitia beatae. Unde non eos et. Non nemo autem molestias cumque vel nihil. Officia qui quis veritatis rerum fugit laboriosam.', 'bahan3.jpg', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-4349-7023-bf4e-312df8c89390', '02fbaef9-65cd-4a7d-86dc-402192415a0b', '16474463-c210-4441-bacb-da8b739249b4', 'Perferendis nostrum non dolore id. Dolor labore voluptates veritatis sit voluptatem facere. Facere illo qui ea qui consequatur facilis quas.', 'bahan1.pdf', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-434b-714b-87b8-914492890bbe', '688428c2-7f0c-4313-84ca-c69cb90f4ea0', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'Perferendis velit inventore temporibus quasi ut dolore dolor. Unde occaecati odit esse error et dolores doloremque.', 'bahan2.pptx', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-434e-72b4-8072-bba77a02b1da', '21f7ac5e-f741-495b-81ec-275c604a9a9e', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'Laborum quod quia enim nihil et quia iste. Itaque sit sequi iste fuga non. Omnis quidem ducimus reprehenderit qui.', 'bahan3.jpg', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-4351-707a-b1b6-f00a3335d148', '27202dcf-8485-4187-b79c-b98d2593299f', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'Quis ducimus facere et dolorem. Exercitationem ut maiores et cupiditate in velit ipsam.', 'bahan1.pdf', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-4354-71db-a5ba-c1bad55a9895', '3a162b02-25a5-4198-8839-c75c009f5b0a', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'Praesentium quaerat fuga consequatur iure quaerat maiores. Est aliquam quas totam vero ullam. Qui quis qui libero culpa veritatis impedit rerum. Tenetur non laborum cum est dolorum vero cum.', 'bahan2.pptx', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-4356-73f7-aa36-29dc55ee882d', '688428c2-7f0c-4313-84ca-c69cb90f4ea0', '16474463-c210-4441-bacb-da8b739249b4', 'Omnis perspiciatis perspiciatis odio. Quaerat atque aut a distinctio ut et. Unde est est ex itaque dolores iusto voluptas. Voluptate beatae aut atque voluptatum magnam sed.', 'bahan3.jpg', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-4359-727c-9615-5e758d43d215', '20ef7cc7-f5b0-45f3-803c-e5bd98048021', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'Animi sequi reprehenderit amet optio voluptas. Culpa in sit et asperiores itaque fugit. Ex pariatur pariatur impedit consequatur. Nisi non qui soluta.', 'bahan2.pptx', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-435b-711d-96d9-4919da8d35c8', '718e821d-d137-4c63-a6cb-e5a7ccf73e23', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'Eveniet consequatur quo corporis sint debitis et totam. Et ipsum autem ea nihil qui. Esse ratione reprehenderit non. Fuga consectetur inventore expedita sit iste ducimus ut.', 'bahan1.pdf', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-435d-71ee-a7da-3b0d179e9518', '8d730f53-119c-4d0e-b3e8-301c8409f802', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'Et consequuntur tenetur est quidem. Magni tempore laudantium voluptate dolore perferendis.', 'bahan3.jpg', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-4361-73ac-ae2c-0dfb87ac0b3a', 'ede72d30-9ef8-44d1-9045-04f4419b0772', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'Possimus dolorum sit et impedit harum nobis ab. Tempore vitae magni esse eum. Et facilis quia sapiente ipsum. Et velit unde aut tempora et labore animi.', 'bahan1.pdf', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-4364-7065-89da-23ae7db60e5e', 'dbd07bf8-ae5e-4a20-adff-d441c46d3a27', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'Ea voluptatum atque earum. Debitis necessitatibus eum error. Iusto placeat et ducimus minima sunt vitae. Similique fugit et consequatur harum.', 'bahan2.pptx', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-4366-7355-aa4f-dfd93bc98816', '3a162b02-25a5-4198-8839-c75c009f5b0a', '90496118-8454-43cb-8a6d-1170cc4967c2', 'Ea accusamus odit laudantium aut. Ut eveniet architecto laudantium illo et ea corporis. Reprehenderit qui molestias molestias quia in voluptatem.', 'bahan1.pdf', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
('0199eac8-4368-7094-bdfc-9fa24132d370', '21f7ac5e-f741-495b-81ec-275c604a9a9e', '58a06c66-379f-46d1-a167-0692e8ec5126', 'Id voluptates natus sint occaecati et sint assumenda. Earum voluptatem adipisci incidunt molestiae. Iure distinctio sequi eveniet rerum voluptatem praesentium. Quis beatae harum quis rerum.', 'bahan3.jpg', '2025-10-15 19:10:17', '2025-10-15 19:10:17');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-54a67dbd00c32d459558e7329b5a0749b2192771', 'i:1;', 1763529777),
('laravel-cache-54a67dbd00c32d459558e7329b5a0749b2192771:timer', 'i:1763529777;', 1763529777),
('laravel-cache-972e7cacedbdde446d0ed6214cd3ba53c0940796', 'i:1;', 1763602626),
('laravel-cache-972e7cacedbdde446d0ed6214cd3ba53c0940796:timer', 'i:1763602626;', 1763602626),
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:2;', 1763602311),
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1763602311;', 1763602311),
('laravel-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:0:{}s:11:\"permissions\";a:0:{}s:5:\"roles\";a:0:{}}', 1763608897);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rapat_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengguna_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('hadir','tidak','mungkin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'mungkin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kehadiran`
--

INSERT INTO `kehadiran` (`id`, `rapat_id`, `pengguna_id`, `status`, `created_at`, `updated_at`) VALUES
('0199eac8-3e25-73db-b0f2-3bf23a5641ea', '02fbaef9-65cd-4a7d-86dc-402192415a0b', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e2d-7103-927c-081588d492b3', '02fbaef9-65cd-4a7d-86dc-402192415a0b', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e31-73f2-99fa-aea0584fca63', '02fbaef9-65cd-4a7d-86dc-402192415a0b', '58a06c66-379f-46d1-a167-0692e8ec5126', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e35-73a7-a1c5-2203fd68b4e6', '02fbaef9-65cd-4a7d-86dc-402192415a0b', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e39-7283-a58d-d7e28f197113', '02fbaef9-65cd-4a7d-86dc-402192415a0b', '90496118-8454-43cb-8a6d-1170cc4967c2', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e3e-727b-96eb-1219f427b026', '1ba0ac96-a370-43d3-b999-39509bfe1c20', '16474463-c210-4441-bacb-da8b739249b4', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e41-71f1-a89b-5970749cf22f', '1ba0ac96-a370-43d3-b999-39509bfe1c20', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e44-70ea-93cf-3b278eecc47b', '1ba0ac96-a370-43d3-b999-39509bfe1c20', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e47-71f2-9996-761d5153e71a', '1ba0ac96-a370-43d3-b999-39509bfe1c20', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e4c-7305-9966-8316b9446011', '1ba0ac96-a370-43d3-b999-39509bfe1c20', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e4f-73c0-b435-b3f925ce40a2', '20ef7cc7-f5b0-45f3-803c-e5bd98048021', '16474463-c210-4441-bacb-da8b739249b4', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e53-72cb-9ebe-0135337ca3d5', '20ef7cc7-f5b0-45f3-803c-e5bd98048021', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e56-7329-a1db-680f6faddf2c', '20ef7cc7-f5b0-45f3-803c-e5bd98048021', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e59-717c-bbd4-5526bcec7014', '20ef7cc7-f5b0-45f3-803c-e5bd98048021', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e5d-73d0-b104-6172c238ae9a', '20ef7cc7-f5b0-45f3-803c-e5bd98048021', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e60-73af-b7c6-3ebc935b9b49', '21f7ac5e-f741-495b-81ec-275c604a9a9e', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e63-73ca-8d90-8606dc4df46e', '21f7ac5e-f741-495b-81ec-275c604a9a9e', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e66-712d-99b1-f1383e172d54', '21f7ac5e-f741-495b-81ec-275c604a9a9e', '58a06c66-379f-46d1-a167-0692e8ec5126', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e69-7077-8a8f-065bebdf0580', '21f7ac5e-f741-495b-81ec-275c604a9a9e', '90496118-8454-43cb-8a6d-1170cc4967c2', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e6d-7114-8e75-e217986c7bbb', '21f7ac5e-f741-495b-81ec-275c604a9a9e', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e70-7354-abdd-c8e27e13e7b7', '27202dcf-8485-4187-b79c-b98d2593299f', '16474463-c210-4441-bacb-da8b739249b4', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e73-7064-ac39-b591f68a256e', '27202dcf-8485-4187-b79c-b98d2593299f', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e75-7259-aa88-31fd282dc234', '27202dcf-8485-4187-b79c-b98d2593299f', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e78-70c4-b2ed-674f62e64536', '27202dcf-8485-4187-b79c-b98d2593299f', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e7c-724e-ada3-91e2a450392b', '27202dcf-8485-4187-b79c-b98d2593299f', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e7f-7235-ab89-f8b49c7d6049', '388c42fa-0b12-49bf-8436-e5cd2f3593e7', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e82-712b-b417-12894eb7ae57', '388c42fa-0b12-49bf-8436-e5cd2f3593e7', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e85-7063-9fc0-e3ee9d78dde9', '388c42fa-0b12-49bf-8436-e5cd2f3593e7', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e88-725c-be0b-62ede8efd1c3', '388c42fa-0b12-49bf-8436-e5cd2f3593e7', '58a06c66-379f-46d1-a167-0692e8ec5126', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e8b-705d-a442-4f595cc6f9f6', '388c42fa-0b12-49bf-8436-e5cd2f3593e7', '90496118-8454-43cb-8a6d-1170cc4967c2', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e8f-70c0-906b-bdcab00a8c0d', '3a162b02-25a5-4198-8839-c75c009f5b0a', '16474463-c210-4441-bacb-da8b739249b4', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e92-71d8-9283-59114ea25c0c', '3a162b02-25a5-4198-8839-c75c009f5b0a', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e95-7124-b06e-dc4b63a16676', '3a162b02-25a5-4198-8839-c75c009f5b0a', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e98-70e0-9d6d-ff854a01cb01', '3a162b02-25a5-4198-8839-c75c009f5b0a', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e9b-70ff-9b0f-161cfc9542b6', '3a162b02-25a5-4198-8839-c75c009f5b0a', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3e9e-7198-930b-2ce1747b7d24', '3f1ae17d-c72f-4c08-b935-fbe575b3b5d1', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3ea2-721a-ae1a-22ddbf100d5c', '3f1ae17d-c72f-4c08-b935-fbe575b3b5d1', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3ea5-73a9-83dc-9244c61dfe8c', '3f1ae17d-c72f-4c08-b935-fbe575b3b5d1', '58a06c66-379f-46d1-a167-0692e8ec5126', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3ea8-7196-8052-058b13e92b9e', '3f1ae17d-c72f-4c08-b935-fbe575b3b5d1', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3eab-708f-8674-a88791d38686', '3f1ae17d-c72f-4c08-b935-fbe575b3b5d1', '90496118-8454-43cb-8a6d-1170cc4967c2', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3eae-71a7-995c-d14238f7856a', '455aed01-b781-484f-b053-3920d9eb9ce1', '16474463-c210-4441-bacb-da8b739249b4', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3eb2-72c1-ba46-895bf2f3a263', '455aed01-b781-484f-b053-3920d9eb9ce1', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3eb5-7018-89b2-45e002fc05eb', '455aed01-b781-484f-b053-3920d9eb9ce1', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3eb8-7384-94b9-07f8556b83d6', '455aed01-b781-484f-b053-3920d9eb9ce1', '58a06c66-379f-46d1-a167-0692e8ec5126', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3ebb-7243-8638-45a203f0b3ff', '455aed01-b781-484f-b053-3920d9eb9ce1', '90496118-8454-43cb-8a6d-1170cc4967c2', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3ebe-70d2-8704-307a25f99560', '64d74d08-9808-4b4b-81c7-20dd63aed50e', '16474463-c210-4441-bacb-da8b739249b4', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3ec1-729e-bd95-c7bbde217921', '64d74d08-9808-4b4b-81c7-20dd63aed50e', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3ec4-73b6-b263-3a58231645a3', '64d74d08-9808-4b4b-81c7-20dd63aed50e', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3ec7-71c7-a5e1-ab2bb2097714', '64d74d08-9808-4b4b-81c7-20dd63aed50e', '58a06c66-379f-46d1-a167-0692e8ec5126', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3eca-7398-aafe-946350ba37d2', '64d74d08-9808-4b4b-81c7-20dd63aed50e', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3ecc-7278-8431-b49b6b7cb472', '688428c2-7f0c-4313-84ca-c69cb90f4ea0', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3ecf-72b8-ab2c-9248a602ebf6', '688428c2-7f0c-4313-84ca-c69cb90f4ea0', '58a06c66-379f-46d1-a167-0692e8ec5126', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3ed4-72ce-9181-91e6bb839fd2', '688428c2-7f0c-4313-84ca-c69cb90f4ea0', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3ed6-704d-9a27-2d7f756ff4e9', '688428c2-7f0c-4313-84ca-c69cb90f4ea0', '90496118-8454-43cb-8a6d-1170cc4967c2', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3ed8-71a8-9d83-b6d4fef27284', '688428c2-7f0c-4313-84ca-c69cb90f4ea0', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3edb-7357-bfa7-281bb99db286', '718e821d-d137-4c63-a6cb-e5a7ccf73e23', '16474463-c210-4441-bacb-da8b739249b4', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3edd-73b6-a92d-1a5197d08633', '718e821d-d137-4c63-a6cb-e5a7ccf73e23', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3ee0-71df-9fd5-d82113de790b', '718e821d-d137-4c63-a6cb-e5a7ccf73e23', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3ee4-73c0-96bc-0cdf2482f739', '718e821d-d137-4c63-a6cb-e5a7ccf73e23', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3ee6-7218-8d5b-9a746f912d83', '718e821d-d137-4c63-a6cb-e5a7ccf73e23', '90496118-8454-43cb-8a6d-1170cc4967c2', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3ee9-72a7-8b32-9cb5d9a0a10a', '76367a3a-bfde-416e-8d83-7548faa77696', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3eeb-73ca-bc95-342d9dcc4c14', '76367a3a-bfde-416e-8d83-7548faa77696', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3eee-734e-a448-0a1560d07d20', '76367a3a-bfde-416e-8d83-7548faa77696', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3ef1-73f6-b180-6b0a66dbb145', '76367a3a-bfde-416e-8d83-7548faa77696', '58a06c66-379f-46d1-a167-0692e8ec5126', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3ef5-7107-b832-2bdf70c0478a', '76367a3a-bfde-416e-8d83-7548faa77696', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3ef7-739f-b859-8a22e93ce96c', '7654c03f-f4b7-4646-86e3-8cc9f12a2dbc', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3efa-7385-b266-a2adb8983380', '7654c03f-f4b7-4646-86e3-8cc9f12a2dbc', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3efc-7117-8776-2fd2dec6da21', '7654c03f-f4b7-4646-86e3-8cc9f12a2dbc', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3efe-729f-ae5c-4a21cdff00cd', '7654c03f-f4b7-4646-86e3-8cc9f12a2dbc', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f01-7268-ab7e-95fcf1d2c88d', '7654c03f-f4b7-4646-86e3-8cc9f12a2dbc', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f05-710f-a2e0-d1e0bd1268ac', '8d730f53-119c-4d0e-b3e8-301c8409f802', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f07-72fc-804d-e88877402099', '8d730f53-119c-4d0e-b3e8-301c8409f802', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f09-718b-b857-a579cf364a95', '8d730f53-119c-4d0e-b3e8-301c8409f802', '58a06c66-379f-46d1-a167-0692e8ec5126', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f0c-72ef-aaf3-1d43905da156', '8d730f53-119c-4d0e-b3e8-301c8409f802', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f0e-72cc-bd55-1bd075149872', '8d730f53-119c-4d0e-b3e8-301c8409f802', '90496118-8454-43cb-8a6d-1170cc4967c2', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f12-7129-a32b-bdccc0077098', 'aa6b1bf7-dcaf-4ec2-bf90-4ad7f04cbe30', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f16-7058-a673-c22a255fe7fd', 'aa6b1bf7-dcaf-4ec2-bf90-4ad7f04cbe30', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f18-7237-9d8e-f2a65af94293', 'aa6b1bf7-dcaf-4ec2-bf90-4ad7f04cbe30', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f1a-71a8-885d-d8a80411ad53', 'aa6b1bf7-dcaf-4ec2-bf90-4ad7f04cbe30', '90496118-8454-43cb-8a6d-1170cc4967c2', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f1c-703b-91c1-b1b4fc2258a4', 'aa6b1bf7-dcaf-4ec2-bf90-4ad7f04cbe30', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f1e-70c6-8e5c-5154ccaa40be', 'aeb2bbba-3ca9-4950-a4f8-f14dcd6b8454', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f21-738d-af1e-38d83e6f525c', 'aeb2bbba-3ca9-4950-a4f8-f14dcd6b8454', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f24-72f6-af9e-95d79e2f5d80', 'aeb2bbba-3ca9-4950-a4f8-f14dcd6b8454', '58a06c66-379f-46d1-a167-0692e8ec5126', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f28-716b-910d-1639f5d01307', 'aeb2bbba-3ca9-4950-a4f8-f14dcd6b8454', '90496118-8454-43cb-8a6d-1170cc4967c2', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f2a-71db-aca6-2006a4a09892', 'aeb2bbba-3ca9-4950-a4f8-f14dcd6b8454', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f2c-71b0-861b-07665ebe320c', 'baadbc1d-2d2b-443d-b6f7-7c4727e7ca86', '16474463-c210-4441-bacb-da8b739249b4', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f2e-7080-b2de-8adc9630bdf4', 'baadbc1d-2d2b-443d-b6f7-7c4727e7ca86', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f30-726b-b49f-48bdd8e5d807', 'baadbc1d-2d2b-443d-b6f7-7c4727e7ca86', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f33-7166-b2e7-25af3da8d128', 'baadbc1d-2d2b-443d-b6f7-7c4727e7ca86', '58a06c66-379f-46d1-a167-0692e8ec5126', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f37-73c6-912c-34c72bcdcce4', 'baadbc1d-2d2b-443d-b6f7-7c4727e7ca86', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'tidak', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f39-7237-ae95-29c3063206a5', 'dbd07bf8-ae5e-4a20-adff-d441c46d3a27', '16474463-c210-4441-bacb-da8b739249b4', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f3c-7271-a893-d4dc82611343', 'dbd07bf8-ae5e-4a20-adff-d441c46d3a27', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'mungkin', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f3e-72ed-9030-ea239f1f6a9a', 'dbd07bf8-ae5e-4a20-adff-d441c46d3a27', '58a06c66-379f-46d1-a167-0692e8ec5126', 'hadir', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('0199eac8-3f40-710a-afa2-7e38743797cc', 'dbd07bf8-ae5e-4a20-adff-d441c46d3a27', '90496118-8454-43cb-8a6d-1170cc4967c2', 'tidak', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f43-7371-8e1f-06674fb9238a', 'dbd07bf8-ae5e-4a20-adff-d441c46d3a27', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'tidak', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f47-7282-a78d-35d9c3e17240', 'ede72d30-9ef8-44d1-9045-04f4419b0772', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'hadir', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f4a-7396-8167-8cadb1499c07', 'ede72d30-9ef8-44d1-9045-04f4419b0772', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'mungkin', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f4c-73a2-9085-18876af5991e', 'ede72d30-9ef8-44d1-9045-04f4419b0772', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'tidak', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f4e-738c-9599-7c24dff6d144', 'ede72d30-9ef8-44d1-9045-04f4419b0772', '90496118-8454-43cb-8a6d-1170cc4967c2', 'hadir', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f51-72c1-995c-1a5feaec862a', 'ede72d30-9ef8-44d1-9045-04f4419b0772', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'mungkin', '2025-10-15 19:10:16', '2025-10-15 19:10:16');

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran_konfirmasi`
--

CREATE TABLE `kehadiran_konfirmasi` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rapat_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengguna_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('hadir','tidak hadir','izin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'izin',
  `catatan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kehadiran_konfirmasi`
--

INSERT INTO `kehadiran_konfirmasi` (`id`, `rapat_id`, `pengguna_id`, `status`, `catatan`, `created_at`, `updated_at`) VALUES
('0199eac8-401c-7240-a6a6-d66f7c043fb9', '20ef7cc7-f5b0-45f3-803c-e5bd98048021', '16474463-c210-4441-bacb-da8b739249b4', 'hadir', 'Laboriosam in vel praesentium eos voluptatem qui enim.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4024-7066-a3de-ea0b5af14e3f', '455aed01-b781-484f-b053-3920d9eb9ce1', '90496118-8454-43cb-8a6d-1170cc4967c2', 'tidak hadir', 'Ipsa voluptatibus deleniti ratione cumque nulla.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-402a-7002-842e-b95866a21184', '64d74d08-9808-4b4b-81c7-20dd63aed50e', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'hadir', 'Explicabo reprehenderit quis et sit ullam inventore necessitatibus.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4031-73d2-89e0-bc636c25add1', '64d74d08-9808-4b4b-81c7-20dd63aed50e', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'hadir', 'In consectetur omnis accusantium est cupiditate.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4036-71e6-bbf7-d32410c81189', '21f7ac5e-f741-495b-81ec-275c604a9a9e', '58a06c66-379f-46d1-a167-0692e8ec5126', 'izin', 'Sint aliquam quidem voluptate qui ut adipisci quo.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-403c-7326-a07a-bdcc6c07aa98', 'dbd07bf8-ae5e-4a20-adff-d441c46d3a27', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'izin', 'Iusto consequatur ratione fugit culpa nesciunt.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4044-7079-9ce5-c9ed936f1500', '27202dcf-8485-4187-b79c-b98d2593299f', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'tidak hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-404a-7282-bb42-6e5e546d026c', '455aed01-b781-484f-b053-3920d9eb9ce1', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'hadir', 'Quis ea distinctio aut voluptatem minus eum a et.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-404f-725f-9700-6bc0e10a089f', 'aeb2bbba-3ca9-4950-a4f8-f14dcd6b8454', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'hadir', 'Deserunt nobis quo aut pariatur exercitationem amet sit.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4056-70f0-ba66-47d41e59aa5f', 'baadbc1d-2d2b-443d-b6f7-7c4727e7ca86', '90496118-8454-43cb-8a6d-1170cc4967c2', 'izin', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-405c-71bc-b429-ceb61a79d915', '688428c2-7f0c-4313-84ca-c69cb90f4ea0', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'izin', 'Velit culpa consectetur quo itaque laborum.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4064-70f2-a20b-93124bd1379b', '688428c2-7f0c-4313-84ca-c69cb90f4ea0', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'izin', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-406a-7300-b8ff-73a319d92c47', '3a162b02-25a5-4198-8839-c75c009f5b0a', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'tidak hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-406f-7159-a07c-2b39d24411cd', 'aeb2bbba-3ca9-4950-a4f8-f14dcd6b8454', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'tidak hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4076-714e-8e7b-f324882d8729', '64d74d08-9808-4b4b-81c7-20dd63aed50e', '58a06c66-379f-46d1-a167-0692e8ec5126', 'tidak hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-407b-7331-95e6-c621d66569ce', 'aeb2bbba-3ca9-4950-a4f8-f14dcd6b8454', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'tidak hadir', 'Vitae animi et eos hic.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4082-7106-aa86-88282f38cd7e', '64d74d08-9808-4b4b-81c7-20dd63aed50e', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'hadir', 'Sit laborum iusto quidem cupiditate.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4088-72cd-b406-f5132621acb0', 'aeb2bbba-3ca9-4950-a4f8-f14dcd6b8454', '58a06c66-379f-46d1-a167-0692e8ec5126', 'hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-408d-7201-b6f1-2faa00c9ba3a', '455aed01-b781-484f-b053-3920d9eb9ce1', '16474463-c210-4441-bacb-da8b739249b4', 'izin', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4095-735a-8e1f-a41c17477166', '21f7ac5e-f741-495b-81ec-275c604a9a9e', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'izin', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-409b-721b-a6af-316c1e9783fb', '21f7ac5e-f741-495b-81ec-275c604a9a9e', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'tidak hadir', 'Quae fugit reprehenderit consequatur exercitationem id quis ab.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-40a1-73bb-b209-5700a96b914a', 'aa6b1bf7-dcaf-4ec2-bf90-4ad7f04cbe30', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'hadir', 'Quidem mollitia est placeat quam esse repellat.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-40a8-70b1-b913-c73522021dce', '3a162b02-25a5-4198-8839-c75c009f5b0a', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-40ad-725d-800d-570af3035e78', '688428c2-7f0c-4313-84ca-c69cb90f4ea0', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'hadir', 'Expedita voluptas sint omnis omnis sit non consequuntur aliquid.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-40b6-7117-b7cd-5091b27e03af', '02fbaef9-65cd-4a7d-86dc-402192415a0b', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'hadir', 'Eveniet quis vel ab ducimus.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-40bb-7056-865a-a479b40e4b70', '718e821d-d137-4c63-a6cb-e5a7ccf73e23', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'tidak hadir', 'Assumenda facere et nihil temporibus.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-40c1-7179-8e82-3593293d04f4', '1ba0ac96-a370-43d3-b999-39509bfe1c20', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'tidak hadir', 'Molestiae maxime beatae inventore non.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-40c9-7332-a802-403195188064', '64d74d08-9808-4b4b-81c7-20dd63aed50e', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'izin', 'Corporis quidem porro quidem aut dolor distinctio.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-40ce-70de-96b5-5ffc377370d0', '388c42fa-0b12-49bf-8436-e5cd2f3593e7', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'izin', 'Ut similique vitae quisquam excepturi.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-40d4-734e-8eb9-ca04101844f9', '20ef7cc7-f5b0-45f3-803c-e5bd98048021', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'izin', 'Dolores et in hic vel vero hic dolorum.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-40db-73f5-8bd0-2dc03df8bfd5', 'aeb2bbba-3ca9-4950-a4f8-f14dcd6b8454', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'hadir', 'Id dolor iste sunt.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-40e0-724c-b7f5-b42d7aa97c67', 'aa6b1bf7-dcaf-4ec2-bf90-4ad7f04cbe30', '90496118-8454-43cb-8a6d-1170cc4967c2', 'hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-40e8-7290-bb92-005b813c2daf', '20ef7cc7-f5b0-45f3-803c-e5bd98048021', '90496118-8454-43cb-8a6d-1170cc4967c2', 'tidak hadir', 'Explicabo molestiae omnis placeat et natus natus corrupti voluptatem.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-40ee-7189-9def-15561b8c01c2', '3a162b02-25a5-4198-8839-c75c009f5b0a', '90496118-8454-43cb-8a6d-1170cc4967c2', 'hadir', 'Quaerat velit accusamus qui rerum ex debitis.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-40f4-70f7-90e5-f52935275444', '3f1ae17d-c72f-4c08-b935-fbe575b3b5d1', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-40fb-72ae-9025-b3f0627caa25', 'dbd07bf8-ae5e-4a20-adff-d441c46d3a27', '16474463-c210-4441-bacb-da8b739249b4', 'hadir', 'Cumque inventore voluptatum voluptate.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4101-722d-b73b-b83357c8896f', '76367a3a-bfde-416e-8d83-7548faa77696', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4109-715a-82c0-3f50fa174a52', '7654c03f-f4b7-4646-86e3-8cc9f12a2dbc', '16474463-c210-4441-bacb-da8b739249b4', 'izin', 'In aspernatur autem asperiores hic et sit dicta.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-410f-73e2-9208-a8b4f60be695', '20ef7cc7-f5b0-45f3-803c-e5bd98048021', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'izin', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4114-7350-9b93-8a4024db341e', '688428c2-7f0c-4313-84ca-c69cb90f4ea0', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'izin', 'Officia in inventore cupiditate quibusdam ut quaerat cupiditate.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-411b-73cb-9c20-4eac6de9523e', '688428c2-7f0c-4313-84ca-c69cb90f4ea0', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'tidak hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4121-70d4-930a-49f24acbc7a3', '21f7ac5e-f741-495b-81ec-275c604a9a9e', '16474463-c210-4441-bacb-da8b739249b4', 'tidak hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4128-73ea-b512-3e9ce6e6b20a', 'baadbc1d-2d2b-443d-b6f7-7c4727e7ca86', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'izin', 'Esse officia sed velit omnis ad et doloremque.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-412f-72e0-a4fd-5a1b36efc3d0', '3a162b02-25a5-4198-8839-c75c009f5b0a', '58a06c66-379f-46d1-a167-0692e8ec5126', 'izin', 'Odio et facere voluptas maiores sunt facere nemo aut.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4134-7377-a6c7-536d9c5b3350', '64d74d08-9808-4b4b-81c7-20dd63aed50e', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'izin', 'Provident vitae culpa tempore pariatur.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-413e-720d-b084-254c7864fd90', '3f1ae17d-c72f-4c08-b935-fbe575b3b5d1', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'hadir', 'Rerum aperiam incidunt optio aspernatur qui nostrum totam sed.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4143-70e6-87b7-801e138fdcdc', '688428c2-7f0c-4313-84ca-c69cb90f4ea0', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'tidak hadir', 'Vitae fuga vel dolorem qui omnis est non.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4149-7228-9df4-ee4ea8adbf71', '3f1ae17d-c72f-4c08-b935-fbe575b3b5d1', '90496118-8454-43cb-8a6d-1170cc4967c2', 'izin', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4151-73da-80f5-b0444f791d53', '3f1ae17d-c72f-4c08-b935-fbe575b3b5d1', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'hadir', 'Rerum vel voluptatem impedit molestiae cupiditate quis neque.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4156-7315-85c3-b602771eb206', '718e821d-d137-4c63-a6cb-e5a7ccf73e23', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'hadir', 'Velit fugit beatae minus dignissimos.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-415e-70d1-9ae3-47258185ff93', '21f7ac5e-f741-495b-81ec-275c604a9a9e', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'tidak hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4163-70eb-bfdf-d9fc7bcfa7bc', '718e821d-d137-4c63-a6cb-e5a7ccf73e23', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'tidak hadir', 'Quia ducimus iure fugiat adipisci doloribus facilis hic.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4169-7046-be95-f22053cb0f28', '388c42fa-0b12-49bf-8436-e5cd2f3593e7', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'izin', 'Amet optio et eius dolores.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4170-72a4-bbc1-aa56a7e06ddc', '718e821d-d137-4c63-a6cb-e5a7ccf73e23', '58a06c66-379f-46d1-a167-0692e8ec5126', 'tidak hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4175-71c1-add1-9188fb611d1c', 'aa6b1bf7-dcaf-4ec2-bf90-4ad7f04cbe30', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'izin', 'Dolorem reiciendis magni voluptas iste dolores sapiente.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-417d-7397-bcbe-7c063c4d5f84', 'aa6b1bf7-dcaf-4ec2-bf90-4ad7f04cbe30', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'hadir', 'Quia quia qui quisquam quia debitis.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4183-731e-8c5c-daed7f87574a', '8d730f53-119c-4d0e-b3e8-301c8409f802', '58a06c66-379f-46d1-a167-0692e8ec5126', 'tidak hadir', 'Dignissimos quidem molestias rem esse asperiores.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4188-73a9-aedd-c0edd8366d7b', '76367a3a-bfde-416e-8d83-7548faa77696', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'tidak hadir', 'Ea et qui voluptatem rerum atque fugiat.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4190-7040-8541-cc64d8ba287e', 'aeb2bbba-3ca9-4950-a4f8-f14dcd6b8454', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'hadir', 'Vero sed doloremque ut nobis vel sed.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4196-714c-bd56-a5824c03ac7e', '3a162b02-25a5-4198-8839-c75c009f5b0a', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'tidak hadir', 'Quisquam ullam molestiae est facilis eligendi minus aut.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-419d-722b-b6dd-fe7b9fff6f1d', 'ede72d30-9ef8-44d1-9045-04f4419b0772', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'izin', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-41a3-7189-8bd4-6d67fdfb1b80', '20ef7cc7-f5b0-45f3-803c-e5bd98048021', '58a06c66-379f-46d1-a167-0692e8ec5126', 'tidak hadir', 'Dolorem temporibus accusantium omnis necessitatibus at quis.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-41a8-73e8-8b8a-ad593c9332b5', 'aa6b1bf7-dcaf-4ec2-bf90-4ad7f04cbe30', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'hadir', 'Quam sed ut doloribus quae quae rerum.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-41b1-73e7-a9db-c1e546dbd84c', '27202dcf-8485-4187-b79c-b98d2593299f', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'izin', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-41b6-7102-8fb8-b00ac2268d30', '455aed01-b781-484f-b053-3920d9eb9ce1', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'tidak hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-41bd-73fa-91f0-eb9bbfa5e1fa', '455aed01-b781-484f-b053-3920d9eb9ce1', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'hadir', 'Cumque et rerum ipsum vitae qui aut et.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-41c3-723c-b955-7c8db275bec5', '7654c03f-f4b7-4646-86e3-8cc9f12a2dbc', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'tidak hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-41c8-7370-8c37-e0a5a6889a9f', '1ba0ac96-a370-43d3-b999-39509bfe1c20', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'tidak hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-41d1-7301-b2a3-3a3abfceeac0', '3f1ae17d-c72f-4c08-b935-fbe575b3b5d1', '58a06c66-379f-46d1-a167-0692e8ec5126', 'izin', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-41d6-7270-ab27-fb00985c92a0', 'baadbc1d-2d2b-443d-b6f7-7c4727e7ca86', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'izin', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-41dc-71db-83da-81432975370e', 'ede72d30-9ef8-44d1-9045-04f4419b0772', '58a06c66-379f-46d1-a167-0692e8ec5126', 'hadir', 'Maiores exercitationem similique fugiat voluptatum id.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-41e4-734e-aee7-e499652a7ac0', 'baadbc1d-2d2b-443d-b6f7-7c4727e7ca86', '90496118-8454-43cb-8a6d-1170cc4967c2', 'tidak hadir', 'Ut et rerum magnam.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-41e9-7173-9a64-02e529889bf9', '1ba0ac96-a370-43d3-b999-39509bfe1c20', '58a06c66-379f-46d1-a167-0692e8ec5126', 'hadir', 'Et voluptatum itaque soluta.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-41ee-7114-8be2-f0e9be884322', 'aa6b1bf7-dcaf-4ec2-bf90-4ad7f04cbe30', '16474463-c210-4441-bacb-da8b739249b4', 'hadir', 'Est sit dolores quaerat occaecati voluptas est excepturi.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-41f7-71f8-b5ac-17139038b975', '7654c03f-f4b7-4646-86e3-8cc9f12a2dbc', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'izin', 'Aut praesentium debitis aperiam nihil accusamus ipsam fuga nemo.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-41fc-7084-9420-04967912b889', 'aeb2bbba-3ca9-4950-a4f8-f14dcd6b8454', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'tidak hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4203-70cc-9dd8-b0a428edf21a', 'aa6b1bf7-dcaf-4ec2-bf90-4ad7f04cbe30', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'izin', 'Sed necessitatibus id quia.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4209-7296-b767-51f500337086', '688428c2-7f0c-4313-84ca-c69cb90f4ea0', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4210-7220-b86b-2d5ae7348b4b', '718e821d-d137-4c63-a6cb-e5a7ccf73e23', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'hadir', 'Doloribus quia optio tempora accusamus ducimus.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4218-7330-8882-d908119173e0', '02fbaef9-65cd-4a7d-86dc-402192415a0b', '58a06c66-379f-46d1-a167-0692e8ec5126', 'hadir', 'Quis distinctio optio et veritatis saepe.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-421f-7051-acbb-f35240f3a930', 'baadbc1d-2d2b-443d-b6f7-7c4727e7ca86', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'tidak hadir', 'Laborum aut velit error earum et ducimus soluta.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4228-71d3-86b9-fa8a6d106847', 'dbd07bf8-ae5e-4a20-adff-d441c46d3a27', '16474463-c210-4441-bacb-da8b739249b4', 'tidak hadir', 'Et aliquam voluptates beatae perspiciatis natus porro et.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4230-7358-808b-4d26ee070506', '20ef7cc7-f5b0-45f3-803c-e5bd98048021', '16474463-c210-4441-bacb-da8b739249b4', 'tidak hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4239-72d9-8aea-5a93a8edc0c2', 'baadbc1d-2d2b-443d-b6f7-7c4727e7ca86', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'izin', 'Aut sed sit maxime magni.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4240-7012-8d34-fb98e99a3d09', '20ef7cc7-f5b0-45f3-803c-e5bd98048021', '16474463-c210-4441-bacb-da8b739249b4', 'tidak hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4249-7101-a7e1-703fedcd371c', '3f1ae17d-c72f-4c08-b935-fbe575b3b5d1', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'tidak hadir', 'Sunt quia quisquam eos quis.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4250-7102-b078-8b49eaf123a0', '388c42fa-0b12-49bf-8436-e5cd2f3593e7', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'tidak hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-425a-72d3-a5cf-0f700be4f1dd', 'ede72d30-9ef8-44d1-9045-04f4419b0772', '16474463-c210-4441-bacb-da8b739249b4', 'tidak hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4261-716b-84e1-de36e383b7e4', '455aed01-b781-484f-b053-3920d9eb9ce1', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'tidak hadir', 'Dolores corrupti aspernatur corporis qui porro.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-426a-7235-8fdf-f43b241e93a0', 'aa6b1bf7-dcaf-4ec2-bf90-4ad7f04cbe30', '58a06c66-379f-46d1-a167-0692e8ec5126', 'hadir', 'Quasi ex libero blanditiis id nobis impedit.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4271-7136-a925-fb5b2e76eaa4', '76367a3a-bfde-416e-8d83-7548faa77696', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'hadir', 'Harum beatae modi magnam ex temporibus voluptate aut.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-427a-711c-a06d-c22248b510fe', '76367a3a-bfde-416e-8d83-7548faa77696', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4281-7060-97f9-5a8ed03f2ccb', 'baadbc1d-2d2b-443d-b6f7-7c4727e7ca86', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'tidak hadir', 'Dignissimos occaecati qui alias culpa placeat dolorem.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-428b-7096-a3ba-8f014893fb39', '20ef7cc7-f5b0-45f3-803c-e5bd98048021', '58a06c66-379f-46d1-a167-0692e8ec5126', 'izin', 'Accusamus quis recusandae eos praesentium sint quam dolorem.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4292-71a0-ad2f-70190f18a5bc', '8d730f53-119c-4d0e-b3e8-301c8409f802', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-429c-73c0-a2a2-803249ff94a7', '8d730f53-119c-4d0e-b3e8-301c8409f802', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'tidak hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-42a3-7018-bbb5-0ce3d529f389', '20ef7cc7-f5b0-45f3-803c-e5bd98048021', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'hadir', 'Architecto voluptas est omnis commodi ratione in reprehenderit.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-42ac-7224-a98f-ac80d3cfff8d', 'baadbc1d-2d2b-443d-b6f7-7c4727e7ca86', '90496118-8454-43cb-8a6d-1170cc4967c2', 'tidak hadir', NULL, '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-42b3-725c-9a31-f7e0895c01e9', '02fbaef9-65cd-4a7d-86dc-402192415a0b', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'izin', 'At nam ab dolores.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-42be-72ff-8230-a6b860c63999', '455aed01-b781-484f-b053-3920d9eb9ce1', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'hadir', 'Iure quisquam recusandae ea totam dolorum.', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('019a9ee6-68a6-7028-9006-eac544d241a7', '019a9ee4-8b11-70cb-9678-07edcf768256', '019a7b5f-d355-7314-bf6f-a09248d9d783', 'hadir', NULL, '2025-11-19 18:34:51', '2025-11-19 18:34:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '0001_01_01_000002_create_jobs_table', 1),
(3, '2025_09_15_034806_create_pengguna_table', 1),
(4, '2025_09_15_034810_create_tempat_table', 1),
(5, '2025_09_15_034814_create_rapat_table', 1),
(6, '2025_09_15_034822_create_kehadiran_table', 1),
(7, '2025_09_15_034825_create_kehadiran_konfirmasi_table', 1),
(8, '2025_09_15_034830_create_bahan_table', 1),
(9, '2025_09_15_034830_create_notulen_table', 1),
(10, '2025_10_15_032728_create_permission_tables', 1),
(11, '2025_10_15_035051_create_sessions_table', 1),
(12, '2025_11_05_040107_update_spatie_tables_for_uuid', 2),
(13, '2025_10_16_024125_change_model_id_type_in_model_has_roles_table', 3),
(14, '2025_11_13_042129_create_rapat_pengguna_table', 4),
(15, '2025_11_13_052946_add_kehadiran_to_rapat_pengguna_table', 5),
(16, '2025_11_19_021135_fix_primary_key_rapat_pengguna_table', 6),
(17, '2025_11_19_023159_remove_id_from_rapat_pengguna', 7),
(18, '2025_11_19_023241_restore_composite_pk_to_rapat_pengguna', 8),
(19, '2025_11_19_024451_remove_kehadiran_id_from_kehadiran_konfirmasi', 9);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\Pengguna', '019a51dc-1691-731e-b593-486579bdb763'),
(1, 'App\\Models\\Pengguna', '019a51f7-e44a-7164-8b8c-5426a16e22b9'),
(3, 'App\\Models\\Pengguna', '019a7b5f-d355-7314-bf6f-a09248d9d783'),
(3, 'App\\Models\\Pengguna', '019a9599-4041-726a-b40b-39beb73fd3dd'),
(3, 'App\\Models\\Pengguna', '16474463-c210-4441-bacb-da8b739249b4'),
(1, 'App\\Models\\Pengguna', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a'),
(2, 'App\\Models\\Pengguna', '1b5063ee-b85f-409f-8293-4ff614075d2f');

-- --------------------------------------------------------

--
-- Table structure for table `notulen`
--

CREATE TABLE `notulen` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rapat_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengguna_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci,
  `berkas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notulen`
--

INSERT INTO `notulen` (`id`, `rapat_id`, `pengguna_id`, `isi`, `berkas`, `created_at`, `updated_at`) VALUES
('0199eac8-3f60-7087-bc08-5c507b72a52f', '02fbaef9-65cd-4a7d-86dc-402192415a0b', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'Doloremque eum quibusdam accusantium illum voluptatem quia aut voluptatibus totam.', 'notulen3.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f63-71aa-8dfd-7c8c66f4ca95', '02fbaef9-65cd-4a7d-86dc-402192415a0b', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'Excepturi repudiandae ad fugiat qui odio atque doloremque nesciunt.', 'notulen1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f67-73d6-9a0d-dfd171559f5d', '02fbaef9-65cd-4a7d-86dc-402192415a0b', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'Debitis mollitia consequatur est omnis aut qui.', 'notulen3.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f6b-72ab-9675-ca24507bea6f', '1ba0ac96-a370-43d3-b999-39509bfe1c20', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'Nulla natus delectus velit sint et asperiores.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f6e-71af-a941-62b481168894', '1ba0ac96-a370-43d3-b999-39509bfe1c20', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'Numquam ab ipsam consectetur unde nostrum harum quia delectus quia pariatur.', 'notulen1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f70-72a5-a199-92abaadaa670', '1ba0ac96-a370-43d3-b999-39509bfe1c20', '58a06c66-379f-46d1-a167-0692e8ec5126', 'Laboriosam ad reprehenderit ipsa molestiae alias natus ab.', 'notulen3.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f73-7248-b0c8-798f8fca70a7', '20ef7cc7-f5b0-45f3-803c-e5bd98048021', '16474463-c210-4441-bacb-da8b739249b4', 'Dolorem laboriosam voluptatem tempore explicabo delectus qui et fugiat omnis dolorem et.', 'notulen1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f75-7327-88d3-1af348cdbe5e', '20ef7cc7-f5b0-45f3-803c-e5bd98048021', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'Nulla cum asperiores est optio voluptatem porro ratione velit.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f7a-73b9-8224-3da2aa6421ac', '20ef7cc7-f5b0-45f3-803c-e5bd98048021', '58a06c66-379f-46d1-a167-0692e8ec5126', 'Pariatur odit voluptatum veritatis ea distinctio et provident eveniet et quaerat.', 'notulen1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f7e-72c2-be5c-b06d43cd86a9', '21f7ac5e-f741-495b-81ec-275c604a9a9e', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'Aut quas saepe qui voluptatem ut qui voluptatem autem dolores.', 'notulen3.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f80-7140-90c0-6eafa738b1aa', '21f7ac5e-f741-495b-81ec-275c604a9a9e', '58a06c66-379f-46d1-a167-0692e8ec5126', 'Eum architecto et laudantium cumque harum neque delectus hic.', 'notulen1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f82-70d6-b00b-159f39c18d95', '21f7ac5e-f741-495b-81ec-275c604a9a9e', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'Corrupti dolorem dolorum et nobis cum voluptates ut cupiditate consequatur distinctio.', 'notulen3.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f85-73c8-8478-b2512e95ae62', '27202dcf-8485-4187-b79c-b98d2593299f', '16474463-c210-4441-bacb-da8b739249b4', 'Voluptatem quis nihil pariatur est debitis consectetur.', 'notulen1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f87-7322-b727-d6c9bbff454e', '27202dcf-8485-4187-b79c-b98d2593299f', '90496118-8454-43cb-8a6d-1170cc4967c2', 'Illo qui sunt laudantium vel vitae vitae.', 'notulen1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f8c-73c9-bbbd-c153961a644c', '27202dcf-8485-4187-b79c-b98d2593299f', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'Nisi a quasi nostrum qui aperiam dolor ratione cumque.', 'notulen1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f8e-7249-a096-657b3eee48c8', '388c42fa-0b12-49bf-8436-e5cd2f3593e7', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'Dolorum nihil vel quas voluptatem rerum illum.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f91-7226-b6cf-f8be74b06b0a', '388c42fa-0b12-49bf-8436-e5cd2f3593e7', '90496118-8454-43cb-8a6d-1170cc4967c2', 'Veritatis qui error qui qui dolore totam.', 'notulen1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f93-70b9-9e78-b2b403fb060b', '388c42fa-0b12-49bf-8436-e5cd2f3593e7', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'Vel corrupti voluptas soluta incidunt est fugiat accusamus hic corrupti.', 'notulen3.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f96-7274-9a57-44b05a9f5f20', '3a162b02-25a5-4198-8839-c75c009f5b0a', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'Vero et ut accusantium perspiciatis dignissimos non molestiae non optio quidem est a.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f9b-73dc-966d-6e25561ebd5f', '3a162b02-25a5-4198-8839-c75c009f5b0a', '58a06c66-379f-46d1-a167-0692e8ec5126', 'Quo voluptatibus quod repudiandae odio vel ducimus sed voluptas illo est unde.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3f9e-7106-8bc9-6dc050939fa3', '3a162b02-25a5-4198-8839-c75c009f5b0a', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'Expedita voluptates laborum adipisci minima facere aut doloremque aut.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fa1-712e-96af-e486990fff45', '3f1ae17d-c72f-4c08-b935-fbe575b3b5d1', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'Sequi illo nesciunt cumque aperiam rem dolore ea non nulla itaque qui ipsam ad.', 'notulen1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fa3-71e6-94ef-43f1a56fdc53', '3f1ae17d-c72f-4c08-b935-fbe575b3b5d1', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'Et voluptatem modi omnis minus dolorem eius.', 'notulen3.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fa5-734c-955f-8b4541e5b414', '3f1ae17d-c72f-4c08-b935-fbe575b3b5d1', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'Voluptas quo officiis iusto velit eveniet fuga ipsam tempore qui officia omnis.', 'notulen3.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fa9-715c-8b63-bad19f123639', '455aed01-b781-484f-b053-3920d9eb9ce1', '16474463-c210-4441-bacb-da8b739249b4', 'Eos quia quis quia iste assumenda optio libero asperiores quisquam ut officia totam aut.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fad-71d3-8da6-534bfcd3a212', '455aed01-b781-484f-b053-3920d9eb9ce1', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'Mollitia ut consectetur deleniti deserunt autem non sed repudiandae labore quibusdam quae.', 'notulen3.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3faf-700d-b81a-aec52549d0b0', '455aed01-b781-484f-b053-3920d9eb9ce1', '90496118-8454-43cb-8a6d-1170cc4967c2', 'Et sed consectetur corporis natus eius sequi vitae neque adipisci ea cupiditate similique.', 'notulen3.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fb2-707c-ae5d-7a0823c5100f', '64d74d08-9808-4b4b-81c7-20dd63aed50e', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'Cum laboriosam harum et culpa inventore est et ducimus.', 'notulen3.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fb4-7260-bbaa-9a6c56fd4973', '64d74d08-9808-4b4b-81c7-20dd63aed50e', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'Maxime odit aperiam est aliquam eius eius tempora neque suscipit dicta tempore.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fb7-72e9-a516-7002b842d628', '64d74d08-9808-4b4b-81c7-20dd63aed50e', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'Sunt ut velit occaecati rem distinctio excepturi delectus qui corrupti voluptates voluptatem id porro et.', 'notulen3.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fb9-7266-9821-744166507b9d', '688428c2-7f0c-4313-84ca-c69cb90f4ea0', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'Voluptatem laudantium sed et hic ut officia quia reiciendis et ducimus odio.', 'notulen3.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fbd-7198-8eff-4af062dc7e8a', '688428c2-7f0c-4313-84ca-c69cb90f4ea0', '58a06c66-379f-46d1-a167-0692e8ec5126', 'Ipsum dolores non quod aspernatur qui eligendi beatae dolorem sunt.', 'notulen1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fc0-7176-936d-a473a4a8403c', '688428c2-7f0c-4313-84ca-c69cb90f4ea0', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'Tenetur sit est culpa deserunt quod voluptatem architecto quam qui.', 'notulen1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fc3-73ea-af8f-8c2443f42161', '718e821d-d137-4c63-a6cb-e5a7ccf73e23', '16474463-c210-4441-bacb-da8b739249b4', 'Et soluta et cumque ex necessitatibus odit praesentium quo et laboriosam labore.', 'notulen3.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fc5-7379-bd72-0ea2ee2920bd', '718e821d-d137-4c63-a6cb-e5a7ccf73e23', '90496118-8454-43cb-8a6d-1170cc4967c2', 'Adipisci ut a cumque quis mollitia id.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fc7-7370-acbb-3b99721dc231', '718e821d-d137-4c63-a6cb-e5a7ccf73e23', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'Aut quasi aspernatur deserunt consequuntur ipsa ea fugiat consequatur voluptate fugit ut.', 'notulen3.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fcb-7177-929d-cab8c3e68403', '76367a3a-bfde-416e-8d83-7548faa77696', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'Iure natus vero et ullam voluptas omnis autem sequi ut nesciunt qui eum adipisci.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fce-7308-b6ce-1bccc8386ca0', '76367a3a-bfde-416e-8d83-7548faa77696', '90496118-8454-43cb-8a6d-1170cc4967c2', 'Modi at consequuntur molestias incidunt cupiditate dolorem ex.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fd0-716f-bac8-5b08866ae447', '76367a3a-bfde-416e-8d83-7548faa77696', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'Ut porro quod dolorum tenetur non quos ut voluptate adipisci quis officia.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fd3-71bd-ae3c-0213b0b5ad29', '7654c03f-f4b7-4646-86e3-8cc9f12a2dbc', '16474463-c210-4441-bacb-da8b739249b4', 'Officia ullam molestias modi ut accusamus voluptas aperiam odit deserunt alias.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fd6-71bf-9e1a-5677250df81b', '7654c03f-f4b7-4646-86e3-8cc9f12a2dbc', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'Temporibus et facilis libero quis rem harum fugiat dolores earum nisi.', 'notulen3.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fd8-7209-ab17-3008b855ff08', '7654c03f-f4b7-4646-86e3-8cc9f12a2dbc', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'Non quae ut illo ea earum vel totam vero.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fdc-72cd-ae79-8e8e520e202a', '8d730f53-119c-4d0e-b3e8-301c8409f802', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'Quasi molestias ut repudiandae ut tenetur occaecati consequuntur.', 'notulen3.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fe0-718f-8ca3-690e5248b80e', '8d730f53-119c-4d0e-b3e8-301c8409f802', '90496118-8454-43cb-8a6d-1170cc4967c2', 'Voluptate voluptatem harum ut sit necessitatibus quia doloribus labore.', 'notulen1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fe2-7185-86c2-38e6cf0fa411', '8d730f53-119c-4d0e-b3e8-301c8409f802', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'Voluptas amet commodi quis distinctio ipsa aut quis impedit quasi.', 'notulen1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fe4-73c3-8f15-d7c3ce4bd4e5', 'aa6b1bf7-dcaf-4ec2-bf90-4ad7f04cbe30', '1b5063ee-b85f-409f-8293-4ff614075d2f', 'Aut molestiae officiis et ut sunt provident deleniti esse occaecati nihil.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fe6-72c2-b43f-2f2dffcd3dcc', 'aa6b1bf7-dcaf-4ec2-bf90-4ad7f04cbe30', '90496118-8454-43cb-8a6d-1170cc4967c2', 'Qui dolorem et autem voluptatem harum eveniet vel deleniti expedita recusandae unde.', 'notulen1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fe9-7127-bb88-aaed1ef229c3', 'aa6b1bf7-dcaf-4ec2-bf90-4ad7f04cbe30', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'Temporibus voluptas iusto est autem non mollitia dolore rerum ad.', 'notulen1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3fed-7071-9139-01457d96329e', 'aeb2bbba-3ca9-4950-a4f8-f14dcd6b8454', '16474463-c210-4441-bacb-da8b739249b4', 'Cum sit ea repudiandae quia magni debitis vel quia eum.', 'notulen1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3ff0-718b-bc0b-646251897330', 'aeb2bbba-3ca9-4950-a4f8-f14dcd6b8454', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'Quos ipsum quia odio vitae pariatur blanditiis et ratione officia libero facilis.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3ff2-71f6-88ec-5f989c0feb55', 'aeb2bbba-3ca9-4950-a4f8-f14dcd6b8454', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'Quis molestiae eaque magni et cupiditate tempore odio pariatur inventore.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3ff4-72fb-a293-e1b076aa1f38', 'baadbc1d-2d2b-443d-b6f7-7c4727e7ca86', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'Dicta reiciendis illum tenetur dolores voluptatum quidem consequatur esse.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3ff7-726f-9b46-f5a57dac670b', 'baadbc1d-2d2b-443d-b6f7-7c4727e7ca86', '90496118-8454-43cb-8a6d-1170cc4967c2', 'Officia ex ipsam et perferendis natus eos et voluptas rerum.', 'notulen3.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3ff9-7314-b500-84ae8fdef4c4', 'baadbc1d-2d2b-443d-b6f7-7c4727e7ca86', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'Rerum eligendi voluptatibus suscipit et incidunt eum magni doloremque occaecati.', 'notulen3.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-3ffc-726e-a8f5-0e38111aa568', 'dbd07bf8-ae5e-4a20-adff-d441c46d3a27', '18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'Sunt doloremque et et adipisci quia temporibus pariatur doloremque.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4000-736b-bf6c-76460f599731', 'dbd07bf8-ae5e-4a20-adff-d441c46d3a27', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'Dolore nesciunt officiis odit odio ut illo.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4002-72a9-b98b-a8ea4641c6b1', 'dbd07bf8-ae5e-4a20-adff-d441c46d3a27', '844d9b11-d090-45fc-88a5-dd7b09bfe762', 'Repudiandae dignissimos fugiat et ratione iste sed sed ipsum exercitationem ipsum aut et necessitatibus omnis.', 'notulen1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4005-73ce-a281-fd5bde0bd98f', 'ede72d30-9ef8-44d1-9045-04f4419b0772', '16474463-c210-4441-bacb-da8b739249b4', 'Repellat fuga delectus sapiente esse nulla ut atque.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4007-7038-b5ea-d3f37d56a6e2', 'ede72d30-9ef8-44d1-9045-04f4419b0772', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'Provident commodi delectus nisi aliquid inventore harum et saepe adipisci possimus inventore aut.', 'notulen2.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('0199eac8-4009-7087-8c98-663f13a3f48d', 'ede72d30-9ef8-44d1-9045-04f4419b0772', '58a06c66-379f-46d1-a167-0692e8ec5126', 'Ipsum eum dicta molestias non mollitia consequatur rerum non.', 'notulen1.pdf', '2025-10-15 19:10:16', '2025-10-15 19:10:16'),
('019a9ee7-b214-720c-ae83-ac3d5a386698', '019a9ee4-8b11-70cb-9678-07edcf768256', '019a51dc-1691-731e-b593-486579bdb763', '-', 'notulen/01KAFEFCEHQZ13CYABRKD5C5HH.pdf', '2025-11-19 18:36:15', '2025-11-19 18:36:15');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `email`, `password`, `google_id`, `google_avatar`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
('019a51dc-1691-731e-b593-486579bdb763', 'Surya Febriarko', 'surya@gmail.com', '$2y$12$po7x7Gy8sF9R4Pafh6.Qbe2LMVN6cUwk78.JKt/7/R251rlblL/4u', NULL, NULL, NULL, '2025-11-04 19:32:49', '2025-11-18 18:30:26', NULL),
('019a51f7-e44a-7164-8b8c-5426a16e22b9', 'Euro Andri', 'andri123@gmail.com', '$2y$12$wd9lpwTId3rzJrhCjDi47eZbzhPrRYOIslyE/TI592N2Rq1BsuMVm', NULL, NULL, NULL, '2025-11-04 20:03:11', '2025-11-18 18:29:03', NULL),
('019a7b5f-d355-7314-bf6f-a09248d9d783', 'Sava Ozora', 'ozora.gamtenk@gmail.com', '$2y$12$rCNadqtsGVFnn1S2d/uL.eIL7OnYU4ipNaRNs4Jm12DOfzIzAYEx.', NULL, NULL, NULL, '2025-11-12 21:01:08', '2025-11-18 18:32:18', NULL),
('019a9599-4041-726a-b40b-39beb73fd3dd', 'Muhammad', 'muhammad1@gmail.com', '$2y$12$wSgsizO9cSVDyQp0U3ttmOdxfjSub6/Yx3KZRaG4D5d5avatz0orW', NULL, NULL, NULL, '2025-11-17 23:14:00', '2025-11-18 18:43:03', NULL),
('16474463-c210-4441-bacb-da8b739249b4', 'Bakiadi Mustofa S.E.', 'endra.iswahyudi@gmail.com', '$2y$12$XRAQthTueqf8BFjx10wItev8jTQNxrp.fVqfluJWBdJmOMEnEj1ky', '7fd77a8d-54d1-3688-b01d-fa7e8b5fb4d6', 'https://via.placeholder.com/200x200.png/002200?text=people+avatar+maxime', NULL, '2025-10-15 19:10:15', '2025-10-15 19:26:57', NULL),
('18d1d6f1-9ab5-481c-89fd-ee9580a69f9a', 'Jessica Puji Pudjiastuti', 'onurdiyanti@gmail.com', '$2y$12$TKnIw57n459N.tM7veZb0.q.G08Tu.kBy4Y6ZYcYzSVTX6ilw3XNK', 'fbcb022e-a26a-3517-8055-16dd60a3e927', 'https://via.placeholder.com/200x200.png/00cc11?text=people+avatar+harum', NULL, '2025-10-15 19:10:15', '2025-10-15 19:45:30', NULL),
('1b5063ee-b85f-409f-8293-4ff614075d2f', 'Kamaria Suartini', 'marbun.karen@gmail.com', '$2y$12$CebbSRozXlzvruUmFTGMb.Kyg1XyDfPFp930Fp0nLj88BZwalpmo.', 'df9ee944-517c-396f-a1e5-508ebfa6616d', 'https://via.placeholder.com/200x200.png/008866?text=people+avatar+vel', NULL, '2025-10-15 19:10:15', '2025-10-15 19:46:57', NULL),
('24359b3e-4e8b-488e-8ea9-ac187ea8a907', 'Ina Laksmiwati S.Gz', 'wijaya.mahdi@gmail.com', '$2y$12$DFU7eDZXVFn/G2AOHchV9ut.UaJIPirWwrIoAoP5KD25c3vfbadQ6', 'a6e5a712-60d6-3910-a3c9-5f52e6ca7650', 'https://via.placeholder.com/200x200.png/005566?text=people+avatar+dolorem', NULL, '2025-10-15 19:10:15', '2025-10-15 19:10:15', NULL),
('2bb1dc8d-ee8a-4ec3-a49d-810c38147928', 'Parman Adriansyah', 'yani41@gmail.com', '$2y$12$kO73O.jIR2KN7/Ew.gozG.2lZjsuMCp6/hPq8zFV.d/jheTcJx6sa', '028c39c5-1f06-3cd9-bb6a-1163e10ce029', 'https://via.placeholder.com/200x200.png/008811?text=people+avatar+odio', NULL, '2025-10-15 19:10:15', '2025-10-15 19:10:15', NULL),
('58a06c66-379f-46d1-a167-0692e8ec5126', 'Elma Halimah M.Kom.', 'anastasia.sitompul@gmail.com', '$2y$12$0QEYWaPhSRqtLqGuhwXmKeKkA6ZQUHGvyFUfD9sxaa/jWvnyYn0YO', '11ef0422-4a50-396a-9905-d7bae4fe1d4d', 'https://via.placeholder.com/200x200.png/004411?text=people+avatar+rerum', NULL, '2025-10-15 19:10:15', '2025-10-15 19:10:15', NULL),
('844d9b11-d090-45fc-88a5-dd7b09bfe762', 'Malika Hasanah M.Pd', 'lembah.hassanah@gmail.com', '$2y$12$lV/f5LF4ZOiXvW/6d8gdJOz/hcNH7ak1zfI2/gtDlm4vOcAch4eSe', '4ba131d0-b2af-316e-9192-9bcd7af362b7', 'https://via.placeholder.com/200x200.png/0088cc?text=people+avatar+animi', NULL, '2025-10-15 19:10:15', '2025-10-15 19:10:15', NULL),
('90496118-8454-43cb-8a6d-1170cc4967c2', 'Devi Rahayu', 'suryatmi.aurora@gmail.com', '$2y$12$pQI5jt/L80JCLQqMhIJKLOHJLXO/eH7mhKFlHyAhPXJJz5Iz.HPZa', 'fc652e7c-bd97-3d4d-893c-67896929cea2', 'https://via.placeholder.com/200x200.png/00ee11?text=people+avatar+impedit', NULL, '2025-10-15 19:10:15', '2025-10-15 19:10:15', NULL),
('9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', 'Ika Mila Wastuti M.Ak', 'wlailasari@gmail.com', '$2y$12$9dImzo9K3uWzs.iuIStUper3AWoE3K6VsWeewQStJF2l7MugBM71K', '7873fd88-bc03-33bb-ab12-546a295cd2f7', 'https://via.placeholder.com/200x200.png/00cc22?text=people+avatar+dolor', NULL, '2025-10-15 19:10:15', '2025-10-15 19:10:15', NULL),
('b0080ab3-04b4-4ca0-a52b-28c522da66f0', 'Danu Sirait', 'galuh27@gmail.com', '$2y$12$jXSSogWWUXSO5xGbACXNEeCh5.4gAgUSrXEo.m3vrzueo5XGnmdp.', 'f118708d-5236-3d53-997e-88eb0f1e412f', 'https://via.placeholder.com/200x200.png/003377?text=people+avatar+voluptatum', NULL, '2025-10-15 19:10:15', '2025-10-15 19:10:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rapat`
--

CREATE TABLE `rapat` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penyelenggara` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `tempat_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengguna_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_mulai` timestamp NULL DEFAULT NULL,
  `waktu_selesai` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rapat`
--

INSERT INTO `rapat` (`id`, `judul`, `penyelenggara`, `deskripsi`, `tempat_id`, `pengguna_id`, `waktu_mulai`, `waktu_selesai`, `created_at`, `updated_at`) VALUES
('019a9ee4-8b11-70cb-9678-07edcf768256', 'Rapat Mingguan', NULL, 'Seluruh Staf Diskominfo', '019a9ed7-f5e2-7376-a63a-478c89ebcae7', '019a51f7-e44a-7164-8b8c-5426a16e22b9', '2025-11-20 01:32:35', '2025-11-19 17:32:39', '2025-11-19 18:32:49', '2025-11-19 18:32:49'),
('02fbaef9-65cd-4a7d-86dc-402192415a0b', 'Ea qui iusto vel soluta voluptas sint dolore.', 'Yayasan Hakim Wijaya (Persero) Tbk', 'Similique ad ut facere voluptate quasi. Libero et quis alias. Ut voluptatem dolorem autem aspernatur officiis quis quis commodi.', '9da7f4c6-06bb-3b4e-a80e-566d2e1fd266', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', '2025-09-25 08:15:24', '2025-09-21 14:17:59', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('1ba0ac96-a370-43d3-b999-39509bfe1c20', 'Neque repudiandae sunt exercitationem fugit laborum eius natus.', 'UD Rahmawati Anggraini (Persero) Tbk', 'Qui molestias ex aut quidem magnam corrupti aut. Modi dolores quis eum natus iusto. Dolores iste odio quam enim. Perferendis nam eligendi repellendus vel voluptatem omnis quis sit.', '31b4fbab-df18-3d97-ba77-4365294f5ee5', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', '2025-09-19 07:22:55', '2025-09-22 21:08:07', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('20ef7cc7-f5b0-45f3-803c-e5bd98048021', 'Rerum maxime temporibus assumenda fuga aperiam.', 'PD Hakim Waskita', 'Dolores eaque maiores quia deleniti est possimus qui suscipit. Sed voluptates aut veritatis neque cupiditate. Quas ratione voluptate est magnam et blanditiis. Quo et ut cumque vel numquam esse dicta. Vero quisquam qui perspiciatis corrupti laudantium.', '1ebd2f74-0c86-3677-af8f-821cfc1642ab', '1b5063ee-b85f-409f-8293-4ff614075d2f', '2025-09-25 17:42:42', '2025-10-09 05:55:17', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('21f7ac5e-f741-495b-81ec-275c604a9a9e', 'Similique voluptas eius in sit animi rerum.', 'PT Puspasari', 'Sunt similique sunt aut repellat modi. Dolor eum qui in quisquam. Alias quo perspiciatis doloribus in.', '1ebd2f74-0c86-3677-af8f-821cfc1642ab', '90496118-8454-43cb-8a6d-1170cc4967c2', '2025-10-09 08:43:06', '2025-09-19 04:58:40', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('27202dcf-8485-4187-b79c-b98d2593299f', 'Consequatur est sunt explicabo dolores vitae impedit modi.', 'PT Siregar Tbk', 'Architecto reprehenderit iste repellendus. Id facere sed modi autem quasi.', 'fad10194-dfdc-3772-a671-e04063f041dd', '90496118-8454-43cb-8a6d-1170cc4967c2', '2025-10-01 14:02:01', '2025-09-24 08:37:13', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('388c42fa-0b12-49bf-8436-e5cd2f3593e7', 'Doloremque eum quod quo.', 'UD Putra Maryati Tbk', 'Non aut est laborum nemo optio. Nam vel non ut amet aliquid. Quas commodi est rerum veniam sed.', '9da7f4c6-06bb-3b4e-a80e-566d2e1fd266', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', '2025-09-28 09:00:44', '2025-09-25 01:37:50', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('3a162b02-25a5-4198-8839-c75c009f5b0a', 'In sed ut qui id et.', 'Perum Situmorang Kusmawati Tbk', 'Ea et dolores cum quasi minus. Quia veniam atque non amet. Distinctio alias omnis eveniet.', '236bb9c7-2d91-3431-8978-98f753dd2103', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', '2025-09-29 13:30:57', '2025-10-15 06:06:56', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('3f1ae17d-c72f-4c08-b935-fbe575b3b5d1', 'Accusantium perspiciatis et sed non.', 'PJ Lestari', 'Voluptates animi ut quas dolor exercitationem. Odio error aut ut eius sint fuga sit. Et consequuntur autem atque est temporibus odio velit aut.', '2f0652e2-9b80-3083-9d29-339698099418', '16474463-c210-4441-bacb-da8b739249b4', '2025-09-30 16:28:02', '2025-09-28 13:08:59', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('455aed01-b781-484f-b053-3920d9eb9ce1', 'Similique quos in sed vero necessitatibus.', 'UD Palastri (Persero) Tbk', 'Vel sed quo saepe sed occaecati id molestiae rem. Tempore optio qui voluptatibus velit. Eius aspernatur laudantium illum dicta nihil ipsa aliquam. Ipsam ut sed ducimus. Ex ad labore dolorum quaerat dicta iure.', '236bb9c7-2d91-3431-8978-98f753dd2103', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', '2025-09-28 17:37:14', '2025-10-14 21:50:53', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('64d74d08-9808-4b4b-81c7-20dd63aed50e', 'At ipsa officiis aut praesentium et autem et.', 'PD Prasetya Haryanti Tbk', 'Voluptatum numquam dicta qui amet. Consequatur ipsa nulla et aut minima.', '1d7f6388-3915-3251-a1f6-b556a566c919', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', '2025-09-17 02:28:23', '2025-09-26 05:04:52', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('688428c2-7f0c-4313-84ca-c69cb90f4ea0', 'Adipisci autem corrupti provident quos.', 'Fa Utama Suwarno (Persero) Tbk', 'Voluptate quo praesentium nesciunt sunt blanditiis. Nisi culpa possimus laboriosam fugit aut ea.', 'fd9a5734-7070-3d73-9c3a-b431585c768d', 'b0080ab3-04b4-4ca0-a52b-28c522da66f0', '2025-09-18 18:46:17', '2025-10-02 12:18:48', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('718e821d-d137-4c63-a6cb-e5a7ccf73e23', 'Vel vero est hic et rem unde.', 'PJ Sihotang Pudjiastuti', 'Unde sunt explicabo fugiat id consectetur dolorem temporibus. Enim ut nesciunt enim soluta pariatur voluptatem. Commodi est non dolor at dolore voluptatem esse. Corrupti impedit laudantium laborum soluta ut reiciendis eos.', '31b4fbab-df18-3d97-ba77-4365294f5ee5', '16474463-c210-4441-bacb-da8b739249b4', '2025-09-24 19:47:06', '2025-09-30 10:41:32', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('76367a3a-bfde-416e-8d83-7548faa77696', 'Distinctio ea deserunt officia beatae.', 'CV Mayasari Mayasari (Persero) Tbk', 'Natus inventore doloremque repellat accusantium sed illo iusto. Perspiciatis error voluptates hic dolorum aliquam ratione mollitia exercitationem. Necessitatibus autem quia voluptatem rerum doloremque rerum aut sint.', '793eebd4-7f9c-30bc-be38-81ff5548a29e', '1b5063ee-b85f-409f-8293-4ff614075d2f', '2025-09-16 21:49:04', '2025-10-01 09:39:50', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('7654c03f-f4b7-4646-86e3-8cc9f12a2dbc', 'Tempora vel architecto fugit voluptatibus impedit quia.', 'Yayasan Iswahyudi Handayani', 'Tempore ducimus dolore molestiae occaecati. Sequi id consequuntur ut id reprehenderit accusamus. Ullam ea commodi eos fuga voluptatum cum. Doloribus est doloremque velit dolorem. Illo enim ab dolores quaerat cupiditate.', '793eebd4-7f9c-30bc-be38-81ff5548a29e', '1b5063ee-b85f-409f-8293-4ff614075d2f', '2025-10-03 17:17:59', '2025-09-20 16:07:09', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('8d730f53-119c-4d0e-b3e8-301c8409f802', 'Molestias facere aspernatur praesentium debitis repellendus est.', 'PJ Wastuti Halimah (Persero) Tbk', 'Natus est omnis beatae quis voluptatem aut quas qui. Dolore eos sed ducimus odit minima corrupti. Quas qui ducimus molestiae voluptatem. Non illo odio quasi ullam sed.', '2f0652e2-9b80-3083-9d29-339698099418', '2bb1dc8d-ee8a-4ec3-a49d-810c38147928', '2025-09-24 06:18:59', '2025-10-03 18:23:50', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('aa6b1bf7-dcaf-4ec2-bf90-4ad7f04cbe30', 'Aliquam nulla est est laborum iure.', 'PD Nuraini Prasetya', 'Omnis est deserunt ex harum amet aut beatae. Consectetur perspiciatis aliquam beatae dolorum voluptatem pariatur perferendis. Natus temporibus libero aspernatur consectetur sint alias.', 'fd9a5734-7070-3d73-9c3a-b431585c768d', '9dd46c0e-e08f-4c5c-967b-3e10f92ded7e', '2025-10-11 08:13:05', '2025-10-12 11:43:18', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('aeb2bbba-3ca9-4950-a4f8-f14dcd6b8454', 'Nulla ipsa dolores at repudiandae et et.', 'UD Purnawati (Persero) Tbk', 'Animi pariatur assumenda nobis non quisquam quam delectus quo. Expedita ea sint voluptatibus magnam est autem. Rerum accusantium commodi mollitia cum consequatur. Dolorem ea repellat sequi expedita aut veniam vero aut. Deleniti cupiditate voluptate quos aperiam beatae culpa alias.', '793eebd4-7f9c-30bc-be38-81ff5548a29e', '844d9b11-d090-45fc-88a5-dd7b09bfe762', '2025-09-30 00:53:10', '2025-09-26 19:33:25', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('baadbc1d-2d2b-443d-b6f7-7c4727e7ca86', 'Dolor delectus dolor quaerat dignissimos.', 'CV Ramadan', 'Veritatis cupiditate quo nulla tenetur praesentium. In officiis explicabo cupiditate ipsa. Similique recusandae iste ex sunt ut facere inventore.', '236bb9c7-2d91-3431-8978-98f753dd2103', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', '2025-09-20 12:44:56', '2025-10-10 10:37:07', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('dbd07bf8-ae5e-4a20-adff-d441c46d3a27', 'Voluptatem quis adipisci id perferendis aut enim sequi.', 'Perum Oktaviani Nurdiyanti', 'Rerum mollitia earum occaecati aut aut consequuntur. Est et accusamus autem quo laborum omnis. Quia rem et voluptates. Ratione eos aut ratione beatae hic qui repellat vel.', '236bb9c7-2d91-3431-8978-98f753dd2103', '24359b3e-4e8b-488e-8ea9-ac187ea8a907', '2025-09-30 11:13:26', '2025-10-15 16:18:13', '2025-10-15 19:10:15', '2025-10-15 19:10:15'),
('ede72d30-9ef8-44d1-9045-04f4419b0772', 'Aut veniam nesciunt nam eaque consequatur.', 'PT Adriansyah', 'Aut labore doloremque et. Sapiente et fuga est veritatis velit. Rerum facilis accusamus cupiditate ducimus voluptatem dicta et.', 'a4102f5e-1d7c-32ee-984d-f03e9c6ff97a', '90496118-8454-43cb-8a6d-1170cc4967c2', '2025-10-12 20:42:24', '2025-09-17 01:53:30', '2025-10-15 19:10:15', '2025-10-15 19:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `rapat_pengguna`
--

CREATE TABLE `rapat_pengguna` (
  `rapat_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengguna_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_kehadiran` enum('hadir','tidak','mungkin') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rapat_pengguna`
--

INSERT INTO `rapat_pengguna` (`rapat_id`, `pengguna_id`, `status_kehadiran`, `created_at`, `updated_at`) VALUES
('019a94c6-d00f-73c8-b8bb-7c7d306a9a31', '019a7b5f-d355-7314-bf6f-a09248d9d783', 'hadir', '2025-11-17 19:24:08', '2025-11-17 19:24:22'),
('019a94c6-d00f-73c8-b8bb-7c7d306a9a31', '019a9599-4041-726a-b40b-39beb73fd3dd', 'mungkin', '2025-11-18 04:07:10', '2025-11-18 04:26:11'),
('019a959a-c5bf-70af-8c1e-10d440c0ccec', '019a7b5f-d355-7314-bf6f-a09248d9d783', 'tidak', '2025-11-18 19:34:02', '2025-11-18 19:34:36'),
('019a959a-c5bf-70af-8c1e-10d440c0ccec', '019a9599-4041-726a-b40b-39beb73fd3dd', 'hadir', '2025-11-17 23:32:21', '2025-11-17 23:54:09'),
('019a99c3-9afa-7217-bac6-5402d40c0776', '019a7b5f-d355-7314-bf6f-a09248d9d783', 'mungkin', '2025-11-18 18:38:44', '2025-11-18 19:17:49'),
('019a99c3-9afa-7217-bac6-5402d40c0776', '019a9599-4041-726a-b40b-39beb73fd3dd', 'tidak', '2025-11-18 18:45:10', '2025-11-18 18:45:32'),
('019a9a2f-df55-7338-8b1a-6d13b4980f9a', '019a7b5f-d355-7314-bf6f-a09248d9d783', NULL, '2025-11-18 20:37:00', '2025-11-18 20:37:00'),
('019a9a2f-df55-7338-8b1a-6d13b4980f9a', '019a9599-4041-726a-b40b-39beb73fd3dd', NULL, NULL, NULL),
('019a9ee4-8b11-70cb-9678-07edcf768256', '019a7b5f-d355-7314-bf6f-a09248d9d783', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
(2, 'operator', 'web', '2025-10-15 19:10:17', '2025-10-15 19:10:17'),
(3, 'pegawai', 'web', '2025-10-15 19:10:17', '2025-10-15 19:10:17');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tempat`
--

CREATE TABLE `tempat` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tempat`
--

INSERT INTO `tempat` (`id`, `nama`, `deskripsi`, `created_at`, `updated_at`, `deleted_at`) VALUES
('019a9ed7-f5e2-7376-a63a-478c89ebcae7', 'Ruang Rapat Diskominfo', 'DInas Komunasi dan Informatika', '2025-11-19 18:19:04', '2025-11-19 18:19:04', NULL),
('1d7f6388-3915-3251-a1f6-b556a566c919', 'PJ Hutasoit Mulyani Tbk', 'Non aut cupiditate dolores explicabo corrupti. Cupiditate placeat ex doloribus fuga. Mollitia magnam voluptas pariatur nihil sed odit dicta fuga. Officia aperiam non et dolorem omnis et distinctio.', '2025-10-15 19:10:15', '2025-10-15 19:10:15', NULL),
('1ebd2f74-0c86-3677-af8f-821cfc1642ab', 'CV Pertiwi Pangestu', 'Enim sint iusto est. Ipsum placeat nostrum qui repellendus blanditiis provident eum. Quidem eius necessitatibus facilis temporibus ea qui. Ad ea mollitia est rem consectetur unde voluptatum culpa.', '2025-10-15 19:10:15', '2025-10-15 19:10:15', NULL),
('236bb9c7-2d91-3431-8978-98f753dd2103', 'Yayasan Puspasari Iswahyudi (Persero) Tbk', 'Magnam sunt quo ipsam dolore debitis illum. Dolor quisquam est excepturi accusamus. Libero deserunt facere autem qui ipsam. Sed non tempora veniam quia. Et qui veritatis tempore et quasi.', '2025-10-15 19:10:15', '2025-10-15 19:10:15', NULL),
('2f0652e2-9b80-3083-9d29-339698099418', 'Perum Kurniawan Firgantoro', 'Totam dolorum nam nam. Autem repellendus omnis natus. Excepturi et quam aspernatur deleniti saepe doloremque est sit.', '2025-10-15 19:10:15', '2025-10-15 19:10:15', NULL),
('31b4fbab-df18-3d97-ba77-4365294f5ee5', 'PT Usamah Tbk', 'Sint rerum occaecati architecto. Dolorem impedit omnis iure dolor molestiae quis. Pariatur iste quibusdam voluptatem et.', '2025-10-15 19:10:15', '2025-10-15 19:10:15', NULL),
('793eebd4-7f9c-30bc-be38-81ff5548a29e', 'CV Fujiati', 'Est nesciunt consequuntur nam sit consectetur dignissimos. Qui ab cumque neque minus consequatur molestias laudantium repellat. Ad ducimus dolores enim voluptatem. Alias eligendi placeat nam nam.', '2025-10-15 19:10:15', '2025-10-15 19:10:15', NULL),
('9da7f4c6-06bb-3b4e-a80e-566d2e1fd266', 'Yayasan Hardiansyah Melani (Persero) Tbk', 'Possimus itaque inventore ut iste non error. Aut ipsum magni debitis quaerat et sed. Consequuntur esse aut a iusto. Labore delectus repudiandae qui.', '2025-10-15 19:10:15', '2025-10-15 19:10:15', NULL),
('a4102f5e-1d7c-32ee-984d-f03e9c6ff97a', 'PT Waskita (Persero) Tbk', 'Nihil voluptatem labore pariatur quo et ab nam. Ab et illum dolores repudiandae vero enim quia. Voluptatibus id dolor incidunt dignissimos et dolores.', '2025-10-15 19:10:15', '2025-10-15 19:10:15', NULL),
('fad10194-dfdc-3772-a671-e04063f041dd', 'Perum Purwanti Laksmiwati', 'Quasi corrupti qui rerum voluptatem consequatur. Qui harum ut unde esse itaque necessitatibus ea. Consequatur dicta similique quos sit.', '2025-10-15 19:10:15', '2025-10-15 19:10:15', NULL),
('fd9a5734-7070-3d73-9c3a-b431585c768d', 'PJ Oktaviani Simbolon', 'Accusantium sint ut molestiae iste repellendus ipsam labore deserunt. Porro quasi quo et in quae. Magnam et quod ut id.', '2025-10-15 19:10:15', '2025-10-15 19:10:15', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bahan`
--
ALTER TABLE `bahan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bahan_rapat_id_foreign` (`rapat_id`),
  ADD KEY `bahan_pengguna_id_foreign` (`pengguna_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kehadiran_rapat_id_foreign` (`rapat_id`),
  ADD KEY `kehadiran_pengguna_id_foreign` (`pengguna_id`);

--
-- Indexes for table `kehadiran_konfirmasi`
--
ALTER TABLE `kehadiran_konfirmasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kehadiran_konfirmasi_rapat_id_foreign` (`rapat_id`),
  ADD KEY `kehadiran_konfirmasi_pengguna_id_foreign` (`pengguna_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notulen`
--
ALTER TABLE `notulen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notulen_rapat_id_foreign` (`rapat_id`),
  ADD KEY `notulen_pengguna_id_foreign` (`pengguna_id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengguna_email_unique` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `rapat`
--
ALTER TABLE `rapat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rapat_tempat_id_foreign` (`tempat_id`),
  ADD KEY `rapat_pengguna_id_foreign` (`pengguna_id`);

--
-- Indexes for table `rapat_pengguna`
--
ALTER TABLE `rapat_pengguna`
  ADD PRIMARY KEY (`rapat_id`,`pengguna_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tempat`
--
ALTER TABLE `tempat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bahan`
--
ALTER TABLE `bahan`
  ADD CONSTRAINT `bahan_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bahan_rapat_id_foreign` FOREIGN KEY (`rapat_id`) REFERENCES `rapat` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD CONSTRAINT `kehadiran_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `kehadiran_rapat_id_foreign` FOREIGN KEY (`rapat_id`) REFERENCES `rapat` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kehadiran_konfirmasi`
--
ALTER TABLE `kehadiran_konfirmasi`
  ADD CONSTRAINT `kehadiran_konfirmasi_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `kehadiran_konfirmasi_rapat_id_foreign` FOREIGN KEY (`rapat_id`) REFERENCES `rapat` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notulen`
--
ALTER TABLE `notulen`
  ADD CONSTRAINT `notulen_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notulen_rapat_id_foreign` FOREIGN KEY (`rapat_id`) REFERENCES `rapat` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rapat`
--
ALTER TABLE `rapat`
  ADD CONSTRAINT `rapat_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `rapat_tempat_id_foreign` FOREIGN KEY (`tempat_id`) REFERENCES `tempat` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
