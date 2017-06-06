# Sekolah Cimahi
Aplikasi Web GIS Data Sekolah di Kota Cimahi (SekolahCimahi). Aplikasi sistem informasi geografis ini merupakan sistem dimana pengguna dapat mencari informasi tentang sekolah yang ada di Kota Cimahi, mulai dari SD, SMP, SMA, sampai SMK. 
Pengguna pun dapat menyaring hasil pencarian sesuai dengan Jenis Sekolah, Tipe Sekolah, Kecamatan, Kelurahan, Akreditasi, dan Fasilitas. Tautan source code project GIS ini dapat anda lihat di tautan : https://bitbucket.org/galpratama/sekolahcimahi/

## System Requirement
- Git (for cloning project)
- PHP >= 5.6.4
- OpenSSL PHP Extension
- PDO PHP Extension
- Mbstring PHP Extension
- Tokenizer PHP Extension
- XML PHP Extension

## Install
1. Run `git clone https://galpratama@bitbucket.org/galpratama/sekolahcimahi.git` or download the repository using download button
2. Run `composer install`
3. Create new mysql database and import the sql file provided (`sekolahcimahi.sql`)
4. Copy `.env.example` file to `.env` and set your mysql database credentials
5. Done!