-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 06, 2025 lúc 10:26 AM
-- Phiên bản máy phục vụ: 8.4.3
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `places`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `place`
--

CREATE TABLE `place` (
  `id` bigint NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `place`
--

INSERT INTO `place` (`id`, `description`, `image_url`, `name`) VALUES
(1, 'Quảng Nam ', 'https://th.bing.com/th/id/OIP.pis6-ovE3F9IGKOf-VdK2gHaFj?pid=ImgDet&w=474&h=355&rs=1', 'Hội An '),
(2, 'Quảng trường Ba Đình', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/L%C4%83ng_B%C3%A1c_-_NKS.jpg/500px-L%C4%83ng_B%C3%A1c_-_NKS.jpg', 'Lăng chủ tịch Hồ Chí Minh  '),
(3, 'Quận Hoàn Kiếm, thành phố Hà Nội', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Hoan_Kiem.jpg/500px-Hoan_Kiem.jpg', 'Hồ Hoàn Kiếm'),
(4, 'thôn Cổ Tích, phường Hy Cương, thành phố Việt Trì, tỉnh Phú Thọ, Việt Nam', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Trung_t%C3%A2m_l%E1%BB%85_h%E1%BB%99i_%C4%91%E1%BB%81n_H%C3%B9ng_18-09-2015_1.jpg/500px-Trung_t%C3%A2m_l%E1%BB%85_h%E1%BB%99i_%C4%91%E1%BB%81n_H%C3%B9ng_18-09-2015_1.jpg', 'Đền Hùng'),
(5, 'Bà Nà Hills, Hòa Vang district, Da Nang', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Golden_Bridge_Da-Nang.jpg/500px-Golden_Bridge_Da-Nang.jpg', 'Golden Bridge Cầu Vàng'),
(6, 'Đà Nẵng', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Dragon_bridge_from_above.png/500px-Dragon_bridge_from_above.png', 'Cầu Rồng');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `place`
--
ALTER TABLE `place`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
