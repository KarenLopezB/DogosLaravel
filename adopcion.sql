-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 26, 2022 at 12:20 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `adopcion`
--

-- --------------------------------------------------------

--
-- Table structure for table `dogoscasa`
--

CREATE TABLE `dogoscasa` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dogoscasa`
--

INSERT INTO `dogoscasa` (`id`, `descripcion`) VALUES
(1, 'Si'),
(2, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `dogos_controller`
--

CREATE TABLE `dogos_controller` (
  `id` int(11) NOT NULL,
  `id_tipo_raza` int(11) NOT NULL,
  `colordogo` tinyint(1) NOT NULL DEFAULT '0',
  `tamañodogo` tinyint(1) NOT NULL DEFAULT '2',
  `dogo_adulto_cachorro` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `espaciodogo`
--

CREATE TABLE `espaciodogo` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `espaciodogo`
--

INSERT INTO `espaciodogo` (`id`, `descripcion`) VALUES
(1, 'Si'),
(2, 'No'),
(3, 'Estoy en proceso');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_raza`
--

CREATE TABLE `tipo_raza` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipo_raza`
--

INSERT INTO `tipo_raza` (`id`, `descripcion`) VALUES
(1, 'Schnauzer'),
(2, 'Pitbull'),
(3, 'Pomeriana'),
(4, 'Chihuahua'),
(5, 'Shih Tzu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dogoscasa`
--
ALTER TABLE `dogoscasa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dogos_controller`
--
ALTER TABLE `dogos_controller`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipo_raza` (`id_tipo_raza`);

--
-- Indexes for table `espaciodogo`
--
ALTER TABLE `espaciodogo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipo_raza`
--
ALTER TABLE `tipo_raza`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dogoscasa`
--
ALTER TABLE `dogoscasa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dogos_controller`
--
ALTER TABLE `dogos_controller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `espaciodogo`
--
ALTER TABLE `espaciodogo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tipo_raza`
--
ALTER TABLE `tipo_raza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
