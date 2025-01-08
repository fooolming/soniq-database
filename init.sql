CREATE DATABASE IF NOT EXISTS soniq_db;

USE soniq_db;

CREATE TABLE IF NOT EXISTS songs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    file_path VARCHAR(255) NOT NULL
);

-- 插入示例歌曲数据
INSERT INTO songs (title, file_path) VALUES
('Song 1', 'https://onlinetestcase.com/wp-content/uploads/2023/06/1-MB-MP3.mp3'),
('Song 2', 'https://onlinetestcase.com/wp-content/uploads/2023/06/2-MB-MP3.mp3'),
('Song 3', 'https://onlinetestcase.com/wp-content/uploads/2023/06/10-MB-MP3.mp3');

-- 创建 daily_song 表来存储每日歌曲
CREATE TABLE IF NOT EXISTS daily_song (
    date DATE PRIMARY KEY,
    song_id INT NOT NULL,
    FOREIGN KEY (song_id) REFERENCES songs(id)
);
