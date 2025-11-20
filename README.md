<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>
<p align="center"><a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a><a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a><a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a><a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a></p>
Aplikasi Agenda Rapat
Aplikasi ini digunakan untuk mengelola rapat, notulen, kehadiran pegawai, dan dokumentasi rapat di lingkungan Diskominfo.
✨ Fitur Utama
- Manajemen Rapat
- Konfirmasi Kehadiran Pegawai
- Upload dan Kelola Notulen
- Manajemen Pengguna
- Dashboard Admin (FilamentPHP)
🛠 Teknologi yang Digunakan
- Laravel 12
- FilamentPHP v4
- MySQL / MariaDB
- PHP 8.2+
🚀 Cara Menjalankan Project
git clone https://github.com/EuroAndri/agenda-rapat.git
cd agenda-rapat
composer install
cp .env.example .env
php artisan key:generate
mysql -u root -p agenda_rapat < database/agendarapat.sql
php artisan serve
