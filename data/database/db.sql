PRAGMA encoding = "UTF-8";
DROP TABLE Singer;
DROP TABLE Song;
DROP TABLE Dic;
DROP TABLE User;
DROP TABLE PrivateSong;
DROP TABLE OrderList;

CREATE TABLE Singer(
singerId INTEGER PRIMARY KEY,
singerName VARCHAR(20),
singerCategory VARCHAR(20),
singerGender VARCHAR(2),
singerPic VARCHAR(100)
);
CREATE TABLE Song(
songId INTEGER PRIMARY KEY,
songName VARCHAR(100),
songPath VARCHAR(100),
songCategory VARCHAR(20),
singerId INT,
songLanguage VARCHAR(20),
songPlayCount INT DEFAULT 0,
pinyin VARCHAR(50) DEFAULT NULL,
songRegTime DATETIME
);
CREATE TABLE Dic(
word VARCHAR(4),
pinyin VARCHAR(2)
);
CREATE TABLE User(
userId INTEGER PRIMARY KEY,
account VARCHAR(20),
pwd VARCHAR(20)
);
CREATE TABLE PrivateSong(
psongId INTEGER PRIMARY KEY,
userId INT,
songId INT,
songSaveTime DATETIME
);
CREATE TABLE OrderList(
orderId INTEGER PRIMARY KEY,
songId INT,
priority TINYINT DEFAULT 0,
finished TINYINT DEFAULT 0
);
CREATE INDEX dic_index ON Dic(word);

INSERT INTO Singer(singerName,singerCategory,singerGender,singerPic) VALUES ('蔡依林','港台女星','女','znl.jpg');
INSERT INTO Singer(singerName,singerCategory,singerGender,singerPic) VALUES ('周杰伦','港台男星','男','znl.jpg');
INSERT INTO Singer(singerName,singerCategory,singerGender,singerPic) VALUES ('韩红','大陆女星','女','znl.jpg');
INSERT INTO Singer(singerName,singerCategory,singerGender,singerPic) VALUES ('刀郎','大陆男星','男','znl.jpg');
INSERT INTO Singer(singerName,singerCategory,singerGender,singerPic) VALUES ('SHE','演唱组合','女','znl.jpg');
INSERT INTO Singer(singerName,singerCategory,singerGender,singerPic) VALUES ('小虎队','演唱组合','男','znl.jpg');
INSERT INTO Singer(singerName,singerCategory,singerGender,singerPic) VALUES ('West Life','欧美组合','男','znl.jpg');
INSERT INTO Singer(singerName,singerCategory,singerGender,singerPic) VALUES ('宋祖英','大陆女星','女','znl.jpg');
INSERT INTO Singer(singerName,singerCategory,singerGender,singerPic) VALUES ('周迅','大陆女星','女','znl.jpg');
INSERT INTO Singer(singerName,singerCategory,singerGender,singerPic) VALUES ('潘玮柏','港台男星','男','znl.jpg');
INSERT INTO Singer(singerName,singerCategory,singerGender,singerPic) VALUES ('陶喆','港台男星','男','znl.jpg');

INSERT INTO Song(songName,songPath,songCategory,singerId,songLanguage,songRegTime) VALUES('布拉格广场','blggc.rmvb','DISCO',1,'国语歌曲',date("%Y-%m-%d %H:%M:%S"));
INSERT INTO Song(songName,songPath,songCategory,singerId,songLanguage,songRegTime) VALUES('彩虹','blggc.rmvb','怀旧',2,'闽南歌曲',date("%Y-%m-%d %H:%M:%S"));
INSERT INTO Song(songName,songPath,songCategory,singerId,songLanguage,songRegTime) VALUES('天路','blggc.rmvb','舞蹈',3,'粤语歌曲',date("%Y-%m-%d %H:%M:%S"));
INSERT INTO Song(songName,songPath,songCategory,singerId,songLanguage,songRegTime) VALUES('冲动的惩罚','blggc.rmvb','戏剧',4,'韩语歌曲',date("%Y-%m-%d %H:%M:%S"));
INSERT INTO Song(songName,songPath,songCategory,singerId,songLanguage,songRegTime) VALUES('Supper Star','blggc.rmvb','革命',5,'日语歌曲',date("%Y-%m-%d %H:%M:%S"));
INSERT INTO Song(songName,songPath,songCategory,singerId,songLanguage,songRegTime) VALUES('忘了他们有什么歌','blggc.rmvb','民歌',6,'英文歌曲',date("%Y-%m-%d %H:%M:%S"));
INSERT INTO Song(songName,songPath,songCategory,singerId,songLanguage,songRegTime) VALUES('My Love','blggc.rmvb','儿童',7,'英文歌曲',date("%Y-%m-%d %H:%M:%S"));
INSERT INTO Song(songName,songPath,songCategory,singerId,songLanguage,songRegTime) VALUES('茉莉花','blggc.rmvb','祝福',8,'国语歌曲',date("%Y-%m-%d %H:%M:%S"));
INSERT INTO Song(songName,songPath,songCategory,singerId,songLanguage,songRegTime) VALUES('不知道她有什么歌','blggc.rmvb','儿童',9,'国语歌曲',date("%Y-%m-%d %H:%M:%S"));
INSERT INTO Song(songName,songPath,songCategory,singerId,songLanguage,songRegTime) VALUES('不得不爱','blggc.rmvb','DISCO',10,'国语歌曲',date("%Y-%m-%d %H:%M:%S"));
INSERT INTO Song(songName,songPath,songCategory,singerId,songLanguage,songRegTime) VALUES('今天你要嫁给我','blggc.rmvb','怀旧',11,'国语歌曲',date("%Y-%m-%d %H:%M:%S"));

INSERT INTO User(account,pwd) VALUES('001','123456');

INSERT INTO PrivateSong(userId,songId,songSaveTime) VALUES(1,1,date("%Y-%m-%d %H:%M:%S"));

INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('一', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丁', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丁', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('七', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('万', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('万', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丈', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('三', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('上', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('下', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丌', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丌', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('不', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('不', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('不', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('与', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丐', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丑', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('专', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('且', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('且', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('且', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丕', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('世', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丘', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丙', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('业', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丛', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('东', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丝', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丞', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丞', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丞', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丢', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('两', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('严', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丧', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丨', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丨', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('个', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丫', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丬', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丬', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('中', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丰', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('串', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('串', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('临', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丶', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丶', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丸', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丹', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('为', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('主', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丽', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('举', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丿', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('丿', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乃', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乃', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('久', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乇', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乇', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('么', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('么', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('义', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('义', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('之', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乌', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乍', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乎', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乏', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乐', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乐', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乒', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乓', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乔', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乔', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乖', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乘', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乘', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乙', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乙', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乜', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乜', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('九', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乞', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('也', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('习', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乡', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('书', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乩', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('买', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乱', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乳', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乾', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('乾', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('了', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('予', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('予', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('争', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('事', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('事', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('二', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亍', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('于', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('于', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亏', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亏', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('云', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('互', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亓', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('五', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('井', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亘', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亘', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亚', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亚', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('些', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('些', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亟', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亟', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亠', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亠', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亡', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亢', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亢', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('交', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亥', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亥', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亦', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('产', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亨', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亨', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亨', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亩', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('享', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('京', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亭', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亮', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亲', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亳', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亵', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('人', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亻', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亻', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('亿', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('什', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仁', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仂', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仃', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仄', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仅', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仅', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仅', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仆', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仇', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仇', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仇', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仉', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('今', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('介', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('介', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仍', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('从', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仑', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仓', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仔', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仕', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('他', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仗', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('付', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仙', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仝', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仞', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仟', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仡', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仡', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仡', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('代', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('令', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('以', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('以', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仨', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仪', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仫', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('们', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仰', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仰', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仲', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仳', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仳', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仵', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('件', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('件', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('价', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('任', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('任', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('份', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('份', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仿', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('仿', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('企', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伉', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伉', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伊', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伍', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伎', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伎', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伎', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伏', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伐', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('休', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('众', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('众', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('优', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伙', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('会', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('会', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伛', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伞', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伟', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('传', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('传', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伢', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伤', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伥', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伥', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伦', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伧', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伪', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伪', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伪', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伫', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伯', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伯', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('估', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伲', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伴', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伴', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伶', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伸', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伺', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伺', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('似', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伽', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伽', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('伽', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佃', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佃', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('但', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('但', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('但', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('位', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('位', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('低', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('住', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佐', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佑', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('体', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('体', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('体', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('何', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佗', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佗', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佘', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('余', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('余', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('余', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佚', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佚', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佛', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佛', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('作', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佝', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佝', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佝', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佞', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佟', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('你', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佣', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佤', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佥', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佧', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佩', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佬', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佯', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佰', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佰', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佳', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佴', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佴', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佶', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佻', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佻', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佼', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佼', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('佾', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('使', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侃', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侄', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侈', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侉', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侉', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侉', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侉', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('例', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侍', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侏', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侑', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侔', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侗', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侗', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('供', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('依', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侠', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侣', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侥', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侥', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侦', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侧', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侧', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侨', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侨', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侩', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侪', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侬', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侮', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侯', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('侵', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('便', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('便', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('促', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俄', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俅', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俊', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俊', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俊', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俎', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俏', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俏', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俐', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俑', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俗', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俘', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俚', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俜', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('保', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俞', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俞', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俟', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俟', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('信', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('信', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俣', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俦', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俦', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俨', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俩', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俪', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俭', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('修', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俯', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俱', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俳', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俸', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俸', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俺', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俺', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俾', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('俾', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倌', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倍', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倍', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倏', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倒', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倔', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倘', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倘', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('候', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倚', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倚', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倜', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倜', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倜', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('借', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倡', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倥', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倦', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倨', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倩', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倪', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倬', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倭', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倮', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('债', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('值', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('倾', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('偃', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('假', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('假', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('偈', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('偈', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('偌', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('偎', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('偏', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('偕', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('做', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('停', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('健', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('偬', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('偬', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('偶', 'o');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('偷', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('偻', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('偾', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('偿', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('傀', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('傀', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('傅', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('傈', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('傍', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('傍', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('傣', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('傥', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('傧', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('储', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('傩', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('催', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('傲', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('傺', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('傻', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('像', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('僖', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('僚', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('僦', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('僧', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('僧', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('僬', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('僭', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('僭', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('僮', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('僮', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('僮', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('僳', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('僵', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('僻', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('儆', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('儇', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('儋', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('儋', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('儒', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('儡', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('儿', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('儿', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('兀', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('允', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('元', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('兄', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('兄', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('充', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('兆', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('先', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('光', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('克', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('免', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('免', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('兑', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('兑', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('兔', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('兔', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('兕', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('兖', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('党', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('兜', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('兢', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('入', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('全', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('八', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('公', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('六', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('兮', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('兰', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('共', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('关', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('关', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('兴', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('兵', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('其', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('其', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('具', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('典', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('典', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('兹', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('兹', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('养', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('兼', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('兽', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冀', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冁', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冂', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冂', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('内', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('内', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冈', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冉', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冉', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('册', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('册', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('再', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冒', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冕', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冖', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冖', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冗', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('写', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('军', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('农', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冠', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冢', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冤', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冥', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冫', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冫', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冬', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冯', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冯', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冰', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冰', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冱', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冲', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('决', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('决', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('决', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('况', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冶', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冷', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冻', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冼', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冼', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('冽', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('净', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('净', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凄', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('准', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凇', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凉', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凋', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凌', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('减', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凑', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凛', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凝', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('几', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凡', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凤', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凫', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凭', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凯', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凰', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凳', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凵', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凵', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凵', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凶', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凸', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凹', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凹', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('出', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('击', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凼', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('函', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('凿', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刀', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刁', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刂', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刂', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刃', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('分', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('分', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('切', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刈', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刊', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刍', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刎', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刑', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('划', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('划', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刖', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('列', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刘', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('则', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刚', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('创', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('初', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('删', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('判', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刨', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刨', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('利', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('别', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刭', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刮', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('到', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刳', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('制', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刷', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('券', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('券', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刹', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刹', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刺', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刺', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刻', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刽', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('刿', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剀', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剀', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剁', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剂', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剃', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('削', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('削', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('削', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剌', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('前', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('前', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剐', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剑', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剔', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剖', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剜', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剞', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剡', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剡', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剥', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剥', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剧', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剩', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剪', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('副', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('副', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('割', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剽', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剽', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剿', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('剿', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('劁', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('劂', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('劈', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('劐', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('劓', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('力', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('劝', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('办', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('功', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('加', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('务', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('劢', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('劣', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('动', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('助', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('助', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('努', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('劫', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('劬', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('劭', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('励', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('劲', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('劳', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('劾', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('劾', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('势', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('勃', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('勇', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('勉', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('勋', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('勐', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('勒', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('勖', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('勖', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('勘', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('募', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('募', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('勤', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('勰', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('勹', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('勹', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('勺', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('勺', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('勺', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('勾', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('勿', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('勿', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匀', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匀', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('包', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('包', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('包', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匆', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匈', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匍', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匏', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匐', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匕', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匕', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('化', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('北', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匙', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匙', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匚', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匚', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匝', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匠', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匡', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匡', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匣', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匦', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匪', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匮', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匮', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匹', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('区', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('区', 'o');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('区', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('医', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匾', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匿', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('匿', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('十', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('千', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卅', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('升', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('午', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卉', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('半', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('半', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('华', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('协', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卑', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卑', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卒', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卒', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卓', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('单', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('单', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('单', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卖', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('南', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('博', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卜', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卜', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卞', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卞', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卟', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卟', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('占', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('占', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卡', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卡', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卢', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卣', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卤', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卦', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卧', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卩', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卩', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卫', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卮', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卯', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('印', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('危', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('即', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('却', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('却', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卵', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卵', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卷', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卷', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卸', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卺', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('卿', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厂', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厂', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厂', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厂', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厄', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厅', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('历', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厉', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('压', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厌', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厍', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厕', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厕', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厕', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厘', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厘', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厚', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厝', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厝', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('原', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厢', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厣', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厥', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厦', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厦', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厨', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厩', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厮', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厶', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('厶', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('去', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('县', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叁', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('参', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('参', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('又', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叉', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('及', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('友', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('双', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('反', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('发', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叔', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('取', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('受', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('受', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('变', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叙', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叛', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叟', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叟', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叠', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('口', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('古', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('古', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('句', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('句', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('句', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('另', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叨', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叨', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叩', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('只', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叫', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('召', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('召', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叭', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叭', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叮', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('可', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('可', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('台', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('台', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('台', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叱', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('史', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('右', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叵', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叶', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叶', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('号', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('号', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('司', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('司', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叹', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叹', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叻', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叼', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('叽', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吁', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吁', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吃', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吃', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('各', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吆', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('合', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('合', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吉', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吊', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('同', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('名', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('后', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吏', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吐', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('向', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吒', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吓', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吓', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吕', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吖', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吖', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吗', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('君', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吝', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吞', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吟', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吟', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吠', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吡', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吡', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吣', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('否', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('否', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吧', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吧', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吨', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吨', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吩', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吩', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('含', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('听', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('听', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吭', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吭', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吮', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('启', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吱', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吱', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吲', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吲', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吴', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吴', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吵', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吵', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吸', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吹', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吻', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吼', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吾', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('吾', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呀', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呀', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呃', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呃', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呆', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呆', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呆', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呈', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('告', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('告', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呋', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呐', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呐', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呒', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呒', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呓', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呔', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呔', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呕', 'o');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呕', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呖', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呗', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('员', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呙', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呙', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呙', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呛', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呛', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呜', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呢', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呤', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呦', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('周', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呱', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呲', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呲', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('味', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('味', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呵', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呵', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呵', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呶', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呷', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呷', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呷', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呸', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呻', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呼', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('呼', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('命', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咀', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咀', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咂', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咄', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咆', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咋', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('和', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咎', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咎', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咏', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咐', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咒', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咔', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咔', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咕', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咖', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咖', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咖', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咙', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咚', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咛', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咝', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咣', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咤', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咦', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咦', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咧', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咨', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咩', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咪', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咫', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咬', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咬', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咭', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咭', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咭', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咯', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咯', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咯', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咱', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咳', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咳', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咳', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咴', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咸', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咻', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咽', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('咿', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哀', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('品', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哂', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哄', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哆', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哆', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哆', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哇', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哇', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哇', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哈', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哉', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哌', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哌', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('响', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哎', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哏', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哏', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哏', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哐', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哐', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哑', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哑', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哒', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哓', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哔', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哕', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哕', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哗', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哙', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哙', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哙', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哚', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哜', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哝', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哞', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哟', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哥', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哦', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哦', 'o');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哧', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哧', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哨', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哨', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哩', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哩', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哪', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哭', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哮', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哲', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哳', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哺', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哺', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哼', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哽', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哽', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('哿', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唁', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唆', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唇', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唇', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唉', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唏', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唐', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唑', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唑', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唔', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唛', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唠', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唠', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唠', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唢', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唣', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唤', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唧', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唪', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唪', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唬', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唬', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唬', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('售', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唯', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唰', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唱', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唳', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唷', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唼', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唼', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唾', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('唿', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啁', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啁', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啁', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啃', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啄', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('商', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啉', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啊', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啊', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啐', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啐', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啐', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啕', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啖', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啜', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啜', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啡', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啡', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啤', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啥', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啦', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啧', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啪', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啬', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啭', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啮', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啮', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啵', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啶', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啷', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啸', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啸', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啻', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啻', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啼', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('啾', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喀', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喁', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喂', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喃', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('善', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喇', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喈', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喈', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喉', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喊', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喊', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喊', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喋', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喋', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喋', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喏', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喏', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喑', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喔', 'o');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喔', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喘', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喙', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喙', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喜', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喜', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喝', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喝', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喝', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喟', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喟', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喧', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喱', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喳', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喵', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喷', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喷', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喹', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喻', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喽', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('喾', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗄', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗄', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗄', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗅', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗉', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗌', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗌', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗌', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗍', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗑', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗑', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗑', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗒', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗒', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗓', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗔', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗔', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗖', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗜', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗝', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗟', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗡', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗣', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗤', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗥', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗦', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗨', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗪', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗫', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗫', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗬', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗯', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗯', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗲', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗳', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗵', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗷', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗽', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嗾', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘀', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘀', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘁', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘁', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘈', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘉', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘌', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘎', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘏', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘏', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘘', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘘', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘛', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘞', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘟', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘣', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘤', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘧', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘬', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘬', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘭', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘱', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘲', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘲', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘴', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘶', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘹', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘻', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘿', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嘿', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噌', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噍', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噎', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噎', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噔', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噗', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噘', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噙', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噜', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噢', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噢', 'o');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噢', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噤', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('器', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噩', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噪', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噫', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噫', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噬', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噱', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噱', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噶', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噻', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('噼', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嚅', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嚆', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嚎', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嚏', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嚓', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嚣', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嚣', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嚯', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嚯', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嚷', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嚼', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('囊', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('囔', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('囗', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('囗', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('囗', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('囚', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('四', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('囝', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('囝', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('囝', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('回', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('囟', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('因', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('囡', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('团', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('团', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('囤', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('囤', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('囫', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('园', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('园', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('困', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('囱', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('围', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('囵', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('囹', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('固', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('国', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('图', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('囿', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圃', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圄', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圆', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圈', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圈', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圉', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圊', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圜', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圜', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('土', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('土', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('土', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圣', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圣', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('在', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圩', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圩', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圪', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圪', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圬', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圭', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圮', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圯', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('地', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圳', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圳', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圳', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圳', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圹', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('场', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('场', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('场', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圻', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圻', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('圾', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('址', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坂', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('均', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('均', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坊', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坌', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坍', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坎', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坏', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坏', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坐', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坑', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('块', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('块', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坚', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坛', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坛', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坜', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坝', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坞', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坟', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坠', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坡', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坤', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坦', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坨', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坨', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坩', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坪', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坫', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坫', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坭', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坯', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坯', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坳', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坳', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坶', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坷', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坻', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坻', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('坼', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垂', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垂', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垃', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垄', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垅', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垆', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('型', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垌', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垌', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垒', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垓', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垛', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垠', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垠', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垡', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垢', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垣', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垤', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垦', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垦', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垧', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垧', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垩', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垩', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垫', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垭', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垭', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垭', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垮', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垲', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垴', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垸', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('垸', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埂', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埃', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埃', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埋', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('城', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埏', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埏', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埒', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埔', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埔', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埕', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埘', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埙', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埚', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埚', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埝', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埝', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('域', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埠', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埤', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埤', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埭', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埯', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埯', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埴', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埸', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('培', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('基', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('埽', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堀', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堂', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堆', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堆', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堇', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堇', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堋', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堋', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堍', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堑', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堑', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堕', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堕', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堙', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堞', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堠', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堡', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堡', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堤', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堤', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堤', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堪', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堪', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堰', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堵', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('堵', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('塄', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('塌', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('塌', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('塍', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('塑', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('塔', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('塔', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('塘', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('塞', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('塥', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('填', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('填', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('填', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('塬', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('塾', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('墀', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('墁', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('境', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('墅', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('墅', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('墉', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('墒', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('墓', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('墙', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('墚', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('增', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('增', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('墟', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('墨', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('墩', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('墼', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('壁', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('壅', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('壅', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('壑', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('壕', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('壤', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('士', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('壬', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('壮', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('声', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('声', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('壳', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('壳', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('壶', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('壹', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夂', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夂', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('处', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('备', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('复', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('复', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夏', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夏', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夏', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夔', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夕', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夕', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('外', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夙', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('多', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('多', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('多', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夜', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('够', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夤', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夥', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('大', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('大', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('天', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('太', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夫', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夭', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夭', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('央', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夯', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夯', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('失', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('失', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('头', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夷', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夸', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夹', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夹', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夺', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('夼', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奁', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奂', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奄', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奇', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奇', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奇', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奇', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奈', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奉', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奋', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奋', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奎', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奏', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奏', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('契', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('契', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('契', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奔', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奔', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奕', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奖', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('套', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奘', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奚', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奠', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奠', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奠', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奢', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奥', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奥', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('女', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('女', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奴', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奶', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奸', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('奸', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('她', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('她', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('她', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('好', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妁', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妁', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('如', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妃', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妃', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妄', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妆', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妇', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妈', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妊', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妍', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妒', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妓', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妖', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妖', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妗', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妗', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妙', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妞', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妞', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妣', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妤', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妥', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妨', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妩', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妪', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妪', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妫', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妮', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妯', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妯', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妲', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妹', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妻', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('妾', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姆', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姊', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('始', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姐', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姐', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姑', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姒', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姓', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姓', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('委', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姗', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姗', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姗', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姘', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姚', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姚', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姜', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姝', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姣', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姣', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姥', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姥', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姨', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姬', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姬', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姹', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姻', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('姿', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('威', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娃', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娃', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娄', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娅', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娆', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娆', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娇', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娈', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娉', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娌', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娑', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娓', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娘', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娜', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娟', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娠', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娣', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娥', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娩', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娩', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娱', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娲', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娴', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娶', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娶', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娶', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('娼', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('婀', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('婆', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('婉', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('婊', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('婕', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('婕', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('婚', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('婢', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('婧', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('婪', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('婴', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('婵', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('婶', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('婷', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('婺', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('婺', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('婿', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('媒', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('媚', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('媛', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('媪', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('媪', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('媪', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('媲', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('媲', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('媳', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('媵', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('媵', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('媸', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('媾', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嫁', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嫂', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嫉', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嫌', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嫒', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嫔', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嫖', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嫖', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嫘', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嫜', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嫠', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嫡', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嫣', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嫦', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嫩', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嫫', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嫱', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嬉', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嬖', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嬗', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嬗', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嬲', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嬴', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嬷', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孀', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('子', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孑', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孓', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孔', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孕', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('字', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('存', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孙', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孙', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孚', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孛', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孜', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孝', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孟', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孢', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('季', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孤', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孥', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('学', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('学', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('学', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孩', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孪', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孬', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孰', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孱', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孱', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孳', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孵', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孺', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('孽', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宀', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宀', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宁', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宁', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('它', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('它', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宄', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宅', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宅', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宅', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宇', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('守', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('安', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宋', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('完', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('完', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宏', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宓', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宓', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宕', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宗', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('官', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宙', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('定', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宛', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宛', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宜', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宝', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('实', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('实', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宠', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宠', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('审', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('审', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('客', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('客', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宣', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('室', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宥', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宦', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宪', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宫', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宰', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('害', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宴', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宵', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('家', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宸', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('容', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('容', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宽', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宾', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宿', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宿', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('宿', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寂', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寄', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寅', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('密', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寇', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('富', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寐', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寒', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寓', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寝', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寞', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('察', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寡', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寤', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寥', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寨', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寨', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寨', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寮', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寰', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寰', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寸', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('对', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寺', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寻', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('导', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('寿', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('封', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('封', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('射', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('射', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('将', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('将', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尉', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尉', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尊', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('小', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('少', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尔', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尔', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尕', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尖', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尘', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尚', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尚', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尜', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尝', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尢', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尢', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尢', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尤', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尥', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尥', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尧', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尬', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('就', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尴', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尸', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尹', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尺', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尻', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尼', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尽', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尾', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尾', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尿', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('尿', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('局', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屁', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('层', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('居', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屈', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屈', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屉', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('届', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屋', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屎', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屎', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屏', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屏', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屐', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屑', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('展', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屙', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('属', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('属', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屠', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屡', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屣', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('履', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屦', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屮', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屮', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屯', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屯', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('山', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屹', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屹', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屺', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('屿', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岁', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岂', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岈', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岈', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岌', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岍', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岐', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岑', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岔', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岖', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岗', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岘', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岙', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岚', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岛', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岜', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岢', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岣', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岩', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岫', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岬', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岭', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岱', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岳', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岵', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岷', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岸', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岽', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岿', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('岿', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('峁', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('峄', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('峋', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('峒', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('峒', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('峙', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('峙', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('峡', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('峤', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('峤', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('峥', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('峦', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('峨', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('峪', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('峭', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('峰', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('峻', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崂', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崃', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崆', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崇', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崎', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崎', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崔', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崖', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崛', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崛', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崞', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崤', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崦', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崧', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崩', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崭', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崭', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崮', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崴', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崽', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('崾', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嵇', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嵊', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嵊', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嵋', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嵌', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嵌', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嵌', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嵘', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嵛', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嵝', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嵩', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嵫', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嵬', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嵯', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嵴', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嶂', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嶙', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嶝', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嶷', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('嶷', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巅', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巍', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巛', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巛', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('川', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('州', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巡', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巡', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巡', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巢', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('工', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('左', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巧', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巨', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巨', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巩', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巫', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('差', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巯', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('己', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('己', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('已', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巳', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巳', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巴', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巷', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巷', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巽', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('巾', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('币', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('币', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('市', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('市', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('布', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帅', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帆', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('师', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('希', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帏', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帐', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帑', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帑', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帔', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帕', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帕', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帖', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帘', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帘', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帙', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帚', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帛', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帜', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帝', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('带', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帧', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('席', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帮', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帱', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帱', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帷', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('常', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帻', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帻', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帼', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('帽', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('幂', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('幄', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('幅', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('幅', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('幌', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('幔', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('幕', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('幛', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('幞', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('幡', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('幢', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('幢', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('干', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('干', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('平', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('平', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('年', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('并', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('幸', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('幸', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('幺', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('幺', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('幻', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('幼', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('幽', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('广', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('广', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('广', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庀', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庀', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庄', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庄', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庆', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庇', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庇', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('床', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庋', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('序', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庐', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庑', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('库', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('应', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('底', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庖', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('店', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庙', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庚', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('府', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('府', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庞', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庞', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('废', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庠', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庥', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('度', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('度', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('座', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庭', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庳', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庳', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庵', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庵', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庵', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庶', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庶', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('康', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庸', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庹', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('庾', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('廉', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('廊', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('廑', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('廑', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('廒', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('廓', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('廖', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('廛', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('廨', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('廪', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('廴', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('廴', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('延', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('廷', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('建', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('廾', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('廾', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('廿', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('开', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弁', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弁', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('异', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弃', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弄', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弄', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弈', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弊', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弋', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('式', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('式', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弑', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弓', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('引', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弗', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弘', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弛', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弟', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弟', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('张', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弥', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弦', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弧', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弩', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弪', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弭', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弯', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弱', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弹', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弹', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('强', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('强', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('弼', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彀', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彀', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彐', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彐', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('归', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('当', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('录', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彖', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彖', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彖', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彗', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彘', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彝', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彡', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彡', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彡', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('形', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彤', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彦', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彦', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彩', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彪', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彬', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彭', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彭', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彰', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('影', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彳', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彳', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彷', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彷', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('役', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彻', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('彼', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('往', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('征', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('徂', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('徂', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('径', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('待', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('徇', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('很', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('徉', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('徊', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('律', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('後', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('徐', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('徒', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('徕', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('得', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('徘', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('徙', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('徙', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('徜', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('御', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('御', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('徨', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('循', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('徭', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('微', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('徵', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('徵', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('德', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('徼', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('徽', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('心', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忄', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忄', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('必', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忆', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忉', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忌', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忍', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忏', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忏', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忐', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忐', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忑', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忑', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忒', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忖', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('志', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忘', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忙', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忝', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忠', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忡', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忤', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忧', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忪', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忪', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('快', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忭', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忮', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忮', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忱', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忱', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('念', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忸', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忻', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忽', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忾', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忾', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('忿', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怀', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怀', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('态', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怂', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怃', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怄', 'o');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怅', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怆', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怊', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怍', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怎', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怏', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怒', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怔', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怕', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怕', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怖', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怙', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怛', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怜', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('思', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怠', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怠', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怡', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('急', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怦', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('性', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怨', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怩', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怪', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怫', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怫', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怯', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怵', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怵', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('总', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('总', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怼', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('怿', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恁', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恁', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恂', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恂', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恃', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恃', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恋', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恍', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恍', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恐', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恒', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恕', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恙', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恚', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恝', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恝', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恢', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恣', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恤', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恧', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恨', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恩', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恪', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恫', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恫', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恬', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恭', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('息', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恰', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恳', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恶', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恶', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恸', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恹', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恺', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恻', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恼', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恽', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恿', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('恿', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悃', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悄', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悉', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悌', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悍', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悒', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悔', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悖', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悚', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悛', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悛', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悝', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悝', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悟', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悠', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('患', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悦', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('您', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悫', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悬', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悭', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悯', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悱', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悲', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悴', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悸', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悻', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('悼', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('情', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惆', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惆', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惆', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惊', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惊', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惋', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惑', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惕', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惘', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惚', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惜', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惝', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惟', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惠', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惦', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惧', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惨', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惩', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惫', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惬', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惭', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惮', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惯', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惰', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惰', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('想', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惴', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惴', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惴', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惶', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惹', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('惺', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愀', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愁', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愁', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愁', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愆', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愈', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愉', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愉', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愍', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愍', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愎', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('意', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愕', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愚', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('感', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('感', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愠', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愠', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愣', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愤', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愦', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愧', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愫', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('愿', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('慈', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('慊', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('慊', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('慌', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('慎', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('慎', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('慑', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('慕', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('慝', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('慝', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('慢', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('慧', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('慨', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('慰', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('慵', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('慷', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('憋', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('憎', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('憔', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('憝', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('憧', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('憧', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('憨', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('憩', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('憬', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('憷', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('憾', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('憾', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('懂', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('懈', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('懊', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('懊', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('懋', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('懑', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('懒', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('懔', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('懦', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('懵', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('懿', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戆', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戆', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戈', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戊', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戋', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戌', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戌', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戍', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戎', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戏', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戏', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('成', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('我', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戒', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戕', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戕', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('或', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('或', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戗', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('战', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戚', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戚', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戛', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戟', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戡', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戡', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戢', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戤', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戥', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('截', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戬', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戮', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戳', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戴', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('户', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戽', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('戾', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('房', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('房', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('所', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扁', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扁', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扃', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扇', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扈', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扉', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('手', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扌', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扌', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('才', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('才', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扎', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扑', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扒', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扒', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('打', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扔', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('托', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扛', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扛', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扣', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扦', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('执', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扩', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扩', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扩', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扪', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扫', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扬', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扭', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扭', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扭', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扮', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扮', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扮', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扯', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扰', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扰', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扳', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扳', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扶', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扶', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('批', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('扼', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('找', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('找', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('承', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('承', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('技', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('技', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抄', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抄', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抉', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('把', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('把', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抑', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抒', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抓', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('投', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('投', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抖', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抗', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抗', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('折', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('折', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('折', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抚', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抚', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抛', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抟', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抟', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抠', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抠', 'o');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抡', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抢', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抢', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('护', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('报', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抨', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抨', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('披', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抬', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抬', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抱', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抱', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抵', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抵', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抵', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抹', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抻', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抻', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('押', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('押', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('押', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抽', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('抿', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拂', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拂', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拂', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拄', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('担', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('担', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拆', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拇', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拈', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拈', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拉', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拊', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拊', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拌', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拌', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拍', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拍', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拎', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拐', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拒', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拓', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拓', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拔', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拔', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拖', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拖', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拗', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拗', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拗', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拘', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拘', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拙', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拚', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拚', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拚', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('招', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('招', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('招', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拜', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拟', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拢', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拣', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拥', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拦', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拧', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拨', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拨', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('择', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('择', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('括', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拭', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拮', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拯', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拱', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拱', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拳', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拴', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拴', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拶', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拷', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拼', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拼', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拽', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拽', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拾', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拾', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('拿', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('持', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挂', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('指', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挈', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挈', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('按', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挎', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挑', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挑', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挖', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挚', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挛', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挝', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挝', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挞', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挟', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挟', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挠', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挠', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挠', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挡', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挢', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挢', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挣', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挤', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挥', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挨', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挪', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挫', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挫', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('振', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挲', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挹', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挺', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('挽', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捂', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捃', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捅', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捆', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捆', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捉', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捋', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捌', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捍', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捍', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捍', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捎', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捎', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捎', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捏', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捐', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捐', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捕', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捞', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('损', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捡', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('换', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捣', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捧', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捧', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捩', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捭', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('据', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捱', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捶', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捶', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捷', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捷', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捷', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捺', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('捻', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掀', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掀', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掂', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掇', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掇', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('授', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掉', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掉', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掊', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掊', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掌', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掎', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掎', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掏', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掐', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('排', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('排', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掖', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掘', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掘', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掠', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('探', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('探', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掣', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('接', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('接', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('接', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('接', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('控', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('控', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('推', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掩', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('措', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('措', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掬', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掭', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掮', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掰', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掳', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掴', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掷', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掸', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掸', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掸', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掸', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掺', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掺', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掼', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掾', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('掾', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揄', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揄', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揄', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揆', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揉', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揍', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揍', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揎', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('描', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('提', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('提', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('提', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('提', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('插', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('插', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揖', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揖', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揞', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揞', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揠', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('握', 'o');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('握', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揣', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揣', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揣', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揩', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揩', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揪', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揭', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揭', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揭', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揲', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揲', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揲', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('援', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('援', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揶', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揸', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揽', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('揿', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搀', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搀', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搁', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搂', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搅', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搋', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搋', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搌', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搏', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搐', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搓', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搓', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搔', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搛', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搛', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搜', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搜', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搞', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搞', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搞', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搠', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搡', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搦', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搪', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搬', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搬', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搭', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搭', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搴', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('携', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搽', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('搿', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摁', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摄', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摄', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摄', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摅', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摅', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摆', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摇', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摈', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摊', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摊', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摒', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摔', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摘', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摞', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摧', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摧', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摩', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摭', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摸', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摹', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摺', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摺', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('摺', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撂', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撄', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撅', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撇', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撇', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撑', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撒', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撕', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撕', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撖', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撖', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撙', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撞', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撤', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撩', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撬', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('播', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撮', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撮', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撰', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撰', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撰', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撵', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撷', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撸', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撺', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('撼', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('擀', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('擂', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('擅', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('操', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('擎', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('擐', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('擐', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('擐', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('擒', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('擗', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('擗', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('擘', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('擞', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('擢', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('擤', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('擦', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('攀', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('攉', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('攉', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('攒', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('攒', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('攘', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('攘', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('攘', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('攥', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('攫', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('攮', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('支', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('支', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('攴', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('攵', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('收', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('攸', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('改', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('攻', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('放', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('政', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('故', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('效', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('敉', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('敌', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('敌', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('敏', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('救', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('敕', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('敕', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('敖', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('教', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('敛', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('敝', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('敞', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('敞', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('敢', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('散', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('敦', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('敦', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('敫', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('敫', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('敬', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('数', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('敲', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('整', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('敷', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('文', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斋', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斌', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斐', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斑', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斓', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斗', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斗', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('料', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斛', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斜', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斜', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斜', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斟', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斡', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斡', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斤', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斥', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斥', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斧', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斩', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斫', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斫', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('断', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('斯', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('新', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('方', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('方', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('於', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('於', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('施', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('施', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旁', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旁', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旃', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旄', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旄', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旅', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旆', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旋', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旌', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旎', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('族', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('族', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('族', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旒', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旖', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旗', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('无', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('无', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('既', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('既', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('日', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旦', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旧', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旨', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('早', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旬', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旬', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旭', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旮', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旮', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旯', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旰', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旰', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旱', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('时', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旷', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('旺', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昀', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昂', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昂', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昃', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昆', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昆', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昊', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昌', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('明', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昏', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('易', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昔', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昔', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昕', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昕', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昙', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昙', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昝', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('星', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('映', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('春', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昧', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昧', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昨', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昭', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('是', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('是', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昱', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昴', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昵', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昵', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昶', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('昼', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('显', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晁', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晁', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晃', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晋', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晌', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晏', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晒', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晓', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晔', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晕', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晖', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晗', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晚', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晟', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晟', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晟', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晡', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晤', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晦', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晨', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('普', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('景', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('景', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晰', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晴', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晶', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晷', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('智', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('晾', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('暂', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('暄', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('暇', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('暇', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('暌', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('暑', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('暖', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('暖', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('暗', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('暝', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('暧', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('暨', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('暮', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('暴', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('暴', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('暹', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('暾', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('曙', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('曛', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('曜', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('曝', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('曦', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('曩', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('曰', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('曲', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('曳', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('更', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('曷', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('曷', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('曹', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('曼', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('曾', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('曾', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('替', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('最', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('最', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('月', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('月', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('有', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('有', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('朊', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('朊', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('朋', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('服', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('服', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('朐', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('朐', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('朐', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('朔', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('朕', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('朗', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('望', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('朝', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('朝', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('期', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('期', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('朦', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('木', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('未', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('末', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('本', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('本', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('札', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('札', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('术', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('术', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('朱', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('朱', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('朴', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('朵', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('机', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('机', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('朽', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杀', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杂', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杂', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('权', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杆', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杈', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杉', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杌', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('李', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杏', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('材', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('村', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杓', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杓', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杓', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杖', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杜', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杜', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杞', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('束', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杠', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('条', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('来', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杨', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杩', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杪', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杭', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杭', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杯', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杰', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杲', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杳', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杵', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杷', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杷', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杼', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('杼', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('松', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('板', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('极', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('构', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枇', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枇', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枉', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枉', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枋', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枋', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('析', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('析', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枕', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枕', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('林', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枘', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枘', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枚', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('果', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('果', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枝', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枝', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枞', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枞', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枢', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枣', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枥', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枧', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枨', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枪', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枫', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枭', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枯', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枯', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枰', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枳', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枵', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('架', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枷', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枸', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('枸', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柁', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柁', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柃', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柄', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柏', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('某', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柑', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柑', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柒', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('染', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柔', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柘', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柙', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柙', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柚', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柚', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柜', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柜', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柝', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柞', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柠', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柠', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柠', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柢', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柢', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('查', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('查', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柩', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柬', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柯', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柰', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柱', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柳', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柴', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柴', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柽', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柽', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('柿', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栀', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栅', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栅', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栅', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('标', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栈', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栉', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栊', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栋', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栌', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栎', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栎', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栏', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('树', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栓', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栖', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栖', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栗', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栝', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栝', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栝', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('校', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('校', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('校', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栩', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栩', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('株', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栲', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栳', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('样', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('核', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('核', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('核', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('根', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('格', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('格', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('格', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栽', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('栾', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桀', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桁', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桂', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桃', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桃', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桄', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桅', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桅', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('框', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('案', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桉', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桊', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桊', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桌', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桎', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桐', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桐', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桑', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桓', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桔', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桔', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桕', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桠', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桡', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桢', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('档', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桤', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桥', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桦', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桧', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桧', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桨', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桩', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桫', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桴', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桶', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('桷', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('梁', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('梃', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('梅', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('梆', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('梏', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('梓', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('梗', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('梢', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('梢', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('梦', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('梧', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('梧', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('梨', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('梭', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('梭', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('梯', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('械', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('梳', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('梵', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('检', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棂', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棉', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棋', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棋', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棍', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棍', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棍', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棒', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棕', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棘', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棚', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棠', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棣', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棣', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('森', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棰', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棰', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棱', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棵', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棹', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棺', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('棼', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('椁', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('椅', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('椋', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('植', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('椎', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('椎', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('椐', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('椒', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('椟', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('椠', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('椤', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('椭', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('椰', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('椴', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('椹', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('椹', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('椽', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('椿', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('楂', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('楂', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('楔', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('楗', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('楚', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('楝', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('楞', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('楠', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('楣', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('楦', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('楫', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('楮', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('楮', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('楱', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('楱', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('楷', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('楷', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('楸', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('楹', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('楼', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('榀', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('概', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('概', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('榄', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('榆', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('榇', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('榈', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('榉', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('榍', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('榔', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('榕', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('榘', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('榛', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('榜', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('榧', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('榨', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('榫', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('榭', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('榱', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('榴', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('榷', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('榻', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('槁', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('槁', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('槊', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('槌', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('槌', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('槎', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('槐', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('槔', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('槛', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('槛', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('槟', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('槠', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('槭', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('槭', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('槲', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('槽', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('槽', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('槿', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('槿', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('樊', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('樗', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('樘', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('樘', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('樟', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('模', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('樨', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('横', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('横', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('樯', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('樱', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('樵', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('樽', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('樾', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('橄', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('橇', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('橐', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('橐', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('橐', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('橘', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('橙', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('橙', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('橛', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('橡', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('橥', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('橱', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('橹', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('橼', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('檀', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('檀', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('檄', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('檎', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('檐', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('檐', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('檑', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('檗', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('檠', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('檠', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('檩', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('檫', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('檫', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('檬', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('欠', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('次', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('次', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('欢', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('欣', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('欤', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('欧', 'o');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('欲', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('欷', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('欹', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('欹', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('欺', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('款', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('款', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('歃', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('歃', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('歆', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('歇', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('歇', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('歉', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('歌', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('歙', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('歙', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('止', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('正', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('此', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('步', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('武', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('歧', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('歪', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('歹', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('歹', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('死', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('歼', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殁', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殁', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殂', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殃', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殄', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殆', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殇', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殉', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殊', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('残', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殍', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殍', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殒', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殓', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殖', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殖', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殚', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殛', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殡', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殪', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殳', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殴', 'o');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('段', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殷', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('殿', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毁', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毂', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毅', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毋', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毋', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('母', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('母', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('每', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毒', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毓', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('比', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('比', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毕', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毖', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毗', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毙', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毛', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毡', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毪', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毫', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毯', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毳', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毳', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毳', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毵', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毹', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('毽', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氅', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氆', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氇', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氍', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氏', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氏', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氏', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氐', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氐', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('民', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氓', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('气', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氕', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氖', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氘', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氙', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氚', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氛', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氟', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氡', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氢', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氤', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氦', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氧', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氨', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氩', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氪', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氮', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氯', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氰', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氲', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('水', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氵', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氵', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('永', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氽', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('氽', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汀', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汀', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汁', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汁', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汁', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('求', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汆', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汇', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汉', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汊', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汐', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汔', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汕', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汗', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汗', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汛', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汜', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汝', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汞', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('江', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('池', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('池', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('污', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('污', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汤', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汤', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汨', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汩', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汩', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汩', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汪', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汪', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汰', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汲', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汴', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汶', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汶', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汹', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汽', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汽', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汽', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汾', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('汾', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沁', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沂', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沃', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沅', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沆', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沆', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沈', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沈', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沈', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沉', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沌', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沌', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沌', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沌', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沏', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沐', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沓', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沓', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沔', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沙', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沛', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沟', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('没', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沣', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沤', 'o');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沥', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沦', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沦', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沧', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沩', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沩', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沪', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沫', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沭', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沮', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沮', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沱', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沱', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沱', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沲', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('河', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沸', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('油', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('治', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('治', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('治', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沼', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沽', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沾', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沾', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沾', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沾', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('沿', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泄', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泄', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泅', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泅', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泉', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泊', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泊', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泌', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泌', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泐', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泓', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泔', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泔', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('法', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泖', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泖', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泗', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泛', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泞', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泞', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泠', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泡', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('波', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泣', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泣', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泣', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泥', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('注', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泪', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泫', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泫', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泮', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泯', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泰', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泱', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泳', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泵', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泵', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泵', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泶', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泷', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泷', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泸', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泺', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泻', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泼', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泼', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泽', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('泾', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洁', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洄', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洇', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洋', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洋', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洌', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洎', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洒', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洒', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洗', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洙', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洚', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洛', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洞', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洞', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('津', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洧', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洪', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洫', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洫', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洮', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洮', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洮', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洱', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洲', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洳', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洵', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洹', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('活', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('活', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洼', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洼', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洽', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('洽', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('派', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('派', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('派', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('流', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浃', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浃', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浅', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浅', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浆', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浇', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浇', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浇', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浈', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浈', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浊', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('测', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浍', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浍', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('济', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('济', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浏', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浑', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浑', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浒', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浒', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浓', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浔', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浔', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浙', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浚', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浚', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浚', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浜', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浞', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浠', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浣', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浦', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浩', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浩', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浪', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浮', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浯', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浴', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('海', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浸', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浸', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('浼', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涂', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涂', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涂', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涅', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('消', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涉', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涉', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涌', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涌', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涎', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涎', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涎', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涑', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涓', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涓', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涓', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涔', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涔', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涔', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涕', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涛', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涛', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涛', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涛', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涝', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涞', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涟', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涠', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涡', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涡', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涣', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涤', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('润', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涧', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涨', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涩', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涪', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涪', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涫', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涮', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涯', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('液', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('液', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涵', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涸', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('涿', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淀', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淄', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淅', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淆', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淇', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淋', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淌', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淌', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淑', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淑', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淖', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淖', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淖', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淘', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淙', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淙', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淝', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淞', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淠', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淡', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淡', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淡', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淤', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淦', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淦', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淫', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淬', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淬', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淮', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('深', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淳', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淳', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('混', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('混', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('混', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淹', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('添', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('淼', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('清', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渊', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渌', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渍', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渍', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渍', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渎', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渐', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渐', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渐', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渑', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渑', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渔', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渖', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渗', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渗', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渗', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渚', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渝', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渠', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渠', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渡', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渣', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渤', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渥', 'o');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渥', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('温', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('温', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渫', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渫', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渫', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渫', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渭', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('港', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('港', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渲', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渴', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渴', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渴', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('游', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('游', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('渺', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湃', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湃', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湄', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湍', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湍', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湎', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湓', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湔', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湔', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湔', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湖', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湘', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湛', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湛', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湛', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湛', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湟', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湟', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湫', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湫', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湮', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湾', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湿', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湿', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('湿', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溃', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溃', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溅', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溆', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溉', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溉', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溏', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('源', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溘', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溜', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溟', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溢', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溥', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溥', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溥', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溧', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溪', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溯', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溱', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溱', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溲', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溴', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溴', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溶', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溷', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溺', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溺', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溻', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('溽', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滁', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滂', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滇', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滇', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滇', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滋', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滋', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滏', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滑', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滑', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滓', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滔', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滕', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滗', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滚', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滞', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滞', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滟', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滠', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滠', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('满', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滢', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滤', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滥', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滥', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滦', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滨', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滩', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滩', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滩', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滴', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('滹', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('漂', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('漂', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('漆', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('漉', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('漏', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('漓', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('演', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('漕', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('漠', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('漤', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('漩', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('漪', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('漫', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('漭', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('漯', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('漯', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('漱', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('漳', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('漶', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('漾', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潆', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潇', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潋', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潍', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潘', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潘', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潜', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潞', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潢', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潢', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潦', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潭', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潭', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潭', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潭', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潮', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潲', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潴', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潸', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潺', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潼', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潼', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('潼', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澄', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澄', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澈', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澉', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澉', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澌', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澍', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澍', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澎', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澜', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澡', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澡', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澧', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澳', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澳', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澶', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澶', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澶', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澹', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澹', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('澹', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('激', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('濂', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('濂', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('濉', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('濑', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('濒', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('濞', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('濞', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('濠', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('濡', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('濡', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('濡', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('濮', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('濯', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('濯', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瀑', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瀑', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瀚', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瀛', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瀣', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瀵', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瀹', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('灌', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('灌', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('灏', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('灞', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('火', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('灬', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('灬', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('灬', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('灭', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('灯', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('灰', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('灵', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('灶', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('灸', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('灼', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('灾', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('灿', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炀', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炅', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炅', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炉', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炊', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炎', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炎', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炒', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炔', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炔', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炔', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炕', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炕', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炖', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炖', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炙', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炜', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炝', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炫', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炬', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炭', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炮', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炮', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炯', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炱', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炳', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炷', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炸', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('点', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炻', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炼', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('炽', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烀', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烁', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烁', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烁', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烂', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烃', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烃', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烈', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烊', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烘', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烙', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烛', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烛', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烟', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烤', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烦', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烧', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烨', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烩', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烫', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烫', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烬', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('热', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烯', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烷', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烹', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('烽', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('焉', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('焊', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('焐', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('焓', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('焕', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('焖', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('焘', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('焘', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('焙', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('焚', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('焦', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('焦', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('焯', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('焯', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('焰', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('焱', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('然', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('煅', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('煊', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('煌', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('煎', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('煜', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('煞', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('煤', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('煦', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('照', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('煨', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('煨', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('煮', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('煲', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('煳', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('煸', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('煺', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('煽', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('熄', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('熊', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('熏', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('熔', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('熘', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('熙', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('熙', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('熟', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('熠', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('熨', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('熨', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('熬', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('熳', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('熵', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('熹', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('燃', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('燎', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('燔', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('燕', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('燠', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('燥', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('燥', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('燧', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('燮', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('燹', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('燹', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('爆', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('爝', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('爨', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('爪', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('爬', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('爰', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('爱', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('爵', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('父', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('爷', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('爸', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('爹', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('爻', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('爻', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('爽', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('爿', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('爿', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('片', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('版', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('牌', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('牍', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('牒', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('牖', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('牙', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('牛', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('牝', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('牟', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('牡', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('牢', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('牦', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('牧', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('物', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('牮', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('牯', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('牲', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('牵', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('特', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('牺', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('牺', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('牾', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('牿', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('犀', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('犁', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('犄', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('犄', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('犊', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('犋', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('犍', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('犍', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('犏', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('犒', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('犟', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('犬', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('犭', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('犭', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('犯', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('犰', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('犴', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('状', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('犷', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('犸', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('犹', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狁', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狂', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狂', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狃', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狄', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狄', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狈', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狍', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狎', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狐', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狒', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狗', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狙', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狞', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狠', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狠', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狠', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狡', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狡', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狨', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狩', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('独', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狭', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狮', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狯', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狰', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狱', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狲', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狳', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狴', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狷', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狸', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狺', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狻', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狻', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狻', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狼', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('狼', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猁', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猃', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猊', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猎', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猎', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猎', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猓', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猓', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猕', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猖', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猗', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猗', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猗', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猛', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猜', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猝', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猞', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猡', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猢', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猥', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猩', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猪', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猫', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猬', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('献', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猱', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猴', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猷', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猸', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猹', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猹', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猾', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('猿', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('獍', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('獐', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('獒', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('獗', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('獠', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('獬', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('獬', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('獬', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('獭', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('獯', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('獯', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('獾', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('獾', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('玄', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('率', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('率', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('玉', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('王', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('王', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('玎', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('玑', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('玖', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('玛', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('玟', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('玢', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('玢', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('玩', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('玫', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('玮', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('环', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('现', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('玲', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('玳', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('玷', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('玺', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('玻', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('珀', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('珂', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('珈', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('珈', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('珉', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('珊', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('珍', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('珏', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('珐', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('珑', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('珙', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('珞', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('珠', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('珥', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('珧', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('珩', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('班', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('珲', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('球', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('琅', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('理', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('琉', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('琊', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('琏', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('琐', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('琚', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('琛', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('琢', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('琥', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('琦', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('琨', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('琪', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('琬', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('琮', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('琰', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('琳', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('琴', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('琵', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('琶', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('琼', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瑁', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瑁', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瑕', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瑗', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瑗', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瑙', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瑚', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瑛', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瑜', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瑞', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瑟', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瑭', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瑰', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瑶', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瑷', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瑾', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('璀', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('璁', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('璃', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('璇', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('璋', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('璎', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('璐', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('璜', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('璞', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('璧', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('璨', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('璩', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('璺', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瓒', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瓜', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瓞', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瓠', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瓠', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瓢', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瓣', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瓤', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瓦', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瓮', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瓯', 'o');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瓴', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瓶', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瓷', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瓿', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甄', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甄', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甍', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甏', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甑', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甓', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甘', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甘', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甙', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甚', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甜', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('生', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甥', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('用', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甩', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甫', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甫', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甬', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甬', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甭', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甭', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甯', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('田', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('由', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甲', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('申', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('电', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('男', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甸', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甸', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甸', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甸', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('町', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('町', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('町', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('画', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('甾', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('畀', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('畅', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('畈', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('畋', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('界', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('畎', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('畏', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('畔', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('留', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('畚', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('畛', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('畜', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('畜', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('略', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('畦', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('番', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('番', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('番', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('畲', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('畴', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('畸', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('畸', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('畹', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('畿', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疃', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疆', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疋', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疋', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疋', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疏', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疑', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疑', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疒', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疒', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疔', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疔', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疖', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疗', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疙', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疙', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疚', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疝', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疟', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疟', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疠', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疡', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疣', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疤', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疥', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疫', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疬', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疮', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疯', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疰', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疱', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疲', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疳', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疴', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疴', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疵', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疵', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疵', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疸', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疹', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疹', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疼', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疽', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('疾', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痂', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痃', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痄', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('病', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('症', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痈', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痉', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痊', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痍', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痒', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痔', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痕', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痕', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痖', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痘', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痛', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痞', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痢', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痣', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痤', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痦', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痦', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痧', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痨', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痪', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痫', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痰', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痱', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痴', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痹', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痼', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('痿', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘀', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘁', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘃', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘅', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘊', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘌', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘐', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘕', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘕', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘗', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘘', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘙', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘛', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘟', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘟', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘠', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘢', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘤', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘥', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘦', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘩', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘪', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘫', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘭', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘰', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘳', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘳', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘴', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘵', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘵', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘸', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘼', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘾', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瘿', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('癀', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('癃', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('癌', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('癍', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('癔', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('癖', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('癜', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('癞', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('癣', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('癫', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('癯', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('癸', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('登', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('白', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('百', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('百', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('皂', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('的', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('皆', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('皇', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('皇', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('皈', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('皋', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('皋', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('皎', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('皑', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('皓', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('皖', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('皖', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('皙', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('皤', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('皮', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('皱', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('皲', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('皴', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('皿', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盂', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盅', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盅', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盆', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盈', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('益', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盍', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盍', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盎', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盏', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盐', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('监', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盒', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盒', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盔', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盖', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盗', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盘', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盛', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盛', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盟', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盥', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('目', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盯', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盯', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盱', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盲', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('直', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('相', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盹', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盹', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盼', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盼', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盾', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('盾', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('省', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('省', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眄', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眇', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眈', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眈', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眉', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('看', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眍', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眙', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眙', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眚', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('真', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眠', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眢', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眦', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眨', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眩', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眩', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眩', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眭', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眭', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眭', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眭', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眯', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眵', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眶', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眷', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眸', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眺', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眼', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('眼', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('着', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睁', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睃', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睃', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睇', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睇', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睐', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睑', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睚', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睛', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睡', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睢', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睢', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('督', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睥', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睦', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睨', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睫', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睫', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睬', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睹', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睽', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睽', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睾', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睾', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('睿', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞀', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞀', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞄', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞅', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞌', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞍', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞎', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞑', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞒', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞟', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞠', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞠', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞢', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞥', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞥', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞧', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞩', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞪', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞬', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞰', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞳', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞵', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞻', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞽', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞿', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('瞿', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('矍', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('矗', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('矛', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('矜', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('矜', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('矜', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('矢', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('矣', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('矣', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('知', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('矧', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('矩', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('矫', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('矬', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('短', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('矮', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('石', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('石', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('矶', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('矸', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('矸', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('矽', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('矾', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('矿', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砀', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('码', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砂', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砉', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砉', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砌', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砍', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砑', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砒', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('研', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('研', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砖', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砗', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砘', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砚', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砜', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砝', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砝', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砝', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砟', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砣', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砥', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砦', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砧', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砩', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砬', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砭', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砰', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('破', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砷', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砸', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砹', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砺', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砻', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砼', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('砾', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('础', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硅', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硅', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硇', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硌', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硌', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硎', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硎', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硐', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硐', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硒', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硕', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硖', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硗', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硝', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硝', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硪', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硪', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硪', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硫', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硫', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硬', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硬', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硭', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('确', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硷', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('硼', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碇', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碉', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碌', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碍', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碎', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碑', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碓', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碗', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碘', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碚', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碛', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碜', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碟', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碟', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碡', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碣', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碣', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碣', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碥', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碧', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碰', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碱', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碱', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碲', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碳', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碴', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碹', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('碾', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('磁', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('磅', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('磅', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('磉', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('磊', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('磋', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('磐', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('磔', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('磕', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('磙', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('磨', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('磬', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('磲', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('磴', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('磷', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('磺', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('磺', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('礁', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('礅', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('礓', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('礞', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('礤', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('礴', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('示', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('示', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('示', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('礻', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('礻', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('礼', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('社', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祀', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祁', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祁', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祆', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祈', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祈', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祉', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祓', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祖', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祖', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祗', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祗', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祚', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祛', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祜', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祝', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祝', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('神', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祟', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祠', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祠', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祢', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祢', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祥', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祧', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('票', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祭', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祭', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祯', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祷', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祸', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('祺', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('禀', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('禁', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('禄', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('禅', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('禅', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('禊', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('福', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('禚', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('禧', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('禳', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('禹', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('禺', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('离', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('离', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('禽', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('禾', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('秀', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('私', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('秃', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('秆', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('秉', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('秋', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('种', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('种', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('科', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('秒', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('秕', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('秘', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('秘', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('租', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('租', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('秣', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('秤', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('秤', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('秦', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('秧', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('秩', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('秫', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('秭', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('积', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('积', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('称', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('秸', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('移', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('移', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('秽', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稀', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稂', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稃', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稆', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('程', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稍', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('税', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('税', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稔', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稗', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稚', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稞', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稞', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稠', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稠', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稠', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稣', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稳', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稷', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稷', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稹', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稹', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稻', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稼', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稽', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稽', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('稿', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('穆', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('穑', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('穗', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('穰', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('穴', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('穴', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('究', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('穷', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('穸', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('穹', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('穹', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('空', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('穿', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('穿', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窀', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窀', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('突', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窃', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窄', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窆', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窈', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窍', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窑', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窒', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窒', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窕', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窖', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窖', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窗', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窘', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窜', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窝', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窟', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窠', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窥', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窦', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窨', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窨', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窬', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窬', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窭', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窳', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('窿', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('立', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('立', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('竖', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('站', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('竞', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('竟', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('章', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('竣', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('童', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('童', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('竦', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('竭', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('端', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('竹', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('竺', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('竺', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('竽', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('竿', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笃', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笄', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笆', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笈', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笊', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笋', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笏', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笏', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笑', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笔', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笕', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笕', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笙', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笛', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笞', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笠', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笤', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笤', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笥', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('符', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笨', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笪', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笫', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('第', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笮', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笱', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笳', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笸', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笺', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笼', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('笾', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筅', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筇', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('等', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筋', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筋', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筌', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筏', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筐', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筑', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筒', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筒', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('答', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('策', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筘', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筚', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筛', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筝', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筠', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筠', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筢', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筮', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筱', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筲', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筵', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筷', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筹', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筹', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('筻', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('签', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('简', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箅', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箍', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箐', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箐', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箔', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箕', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('算', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箜', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箝', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('管', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箢', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箢', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箦', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箧', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箨', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箩', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箪', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箫', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箬', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箬', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箭', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箱', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箴', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箴', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('箸', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('篁', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('篆', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('篇', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('篌', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('篑', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('篓', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('篓', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('篙', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('篚', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('篝', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('篡', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('篥', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('篦', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('篦', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('篪', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('篮', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('篱', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('篷', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('篼', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('篾', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('簇', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('簋', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('簌', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('簏', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('簖', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('簟', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('簦', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('簧', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('簪', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('簸', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('簿', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('籀', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('籁', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('籍', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('米', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('籴', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('籴', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('类', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('籼', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('籽', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粉', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粑', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粒', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粕', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粗', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粘', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粘', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粜', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粜', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粝', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粞', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粟', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粢', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粢', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粢', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粤', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粥', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粥', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粪', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粮', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粱', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粲', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粳', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粹', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粹', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粼', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('粽', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('精', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('精', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('糁', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('糅', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('糇', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('糈', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('糊', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('糌', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('糍', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('糕', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('糖', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('糗', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('糙', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('糜', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('糟', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('糠', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('糨', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('糯', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('糸', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('糸', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('系', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('系', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('紊', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('素', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('索', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('紧', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('紫', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('累', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('絮', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('絮', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('絮', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('絷', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('綦', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('綮', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('縻', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('繁', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('繁', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('繇', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('繇', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纂', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纛', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纟', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纟', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纠', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纡', 'o');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纡', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('红', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('红', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('红', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纣', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纤', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纤', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纤', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纥', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纥', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纥', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('约', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('约', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('级', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纨', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纩', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纪', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纫', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纬', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纭', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纯', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纯', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纯', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纯', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纰', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纰', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纱', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纱', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纲', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纳', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纵', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纵', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纶', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纶', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纷', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纸', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纹', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纺', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纺', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纽', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('纾', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('线', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绀', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绁', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绁', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绂', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('练', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('组', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('组', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绅', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('细', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('织', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('终', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绉', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绉', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绊', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绋', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绌', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绍', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绍', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绎', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绎', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('经', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绐', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绑', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绒', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('结', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绔', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绕', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绗', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绘', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绘', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('给', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('给', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('给', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绚', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绛', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('络', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绝', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绞', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绞', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('统', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绠', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绠', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绡', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绡', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绢', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绢', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绣', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绣', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绥', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绥', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绦', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('继', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绨', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绩', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绪', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绫', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('续', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绮', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绮', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绯', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绰', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绱', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绲', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绲', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绳', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绳', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绳', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('维', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('维', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绵', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绶', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绷', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绸', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绸', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绸', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绺', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绻', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('综', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绽', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绾', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('绿', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缀', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缀', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缁', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缂', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缃', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缄', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缅', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缆', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缇', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缈', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缉', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缉', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缋', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缌', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缍', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缎', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缏', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缏', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缑', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缒', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缓', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缔', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缕', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('编', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缗', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缗', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缘', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缙', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缚', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缛', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缜', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缜', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缝', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缟', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缠', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缡', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缢', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缣', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缤', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缥', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缦', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缧', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缨', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缩', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缪', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缪', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缫', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缫', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缬', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缭', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缭', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缮', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缯', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缯', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缰', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缱', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缲', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缲', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缲', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缳', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缴', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缴', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缴', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缵', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缶', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缸', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缺', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('缺', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('罂', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('罄', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('罅', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('罐', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('网', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('罔', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('罕', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('罗', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('罘', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('罚', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('罟', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('罡', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('罢', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('罨', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('罩', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('罪', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('置', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('罱', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('署', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('罴', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('罹', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('罾', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羁', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羊', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羌', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('美', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羔', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羚', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羝', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羞', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羟', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羡', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羡', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('群', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羧', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羧', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羯', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羰', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羲', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羸', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羹', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羹', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羼', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羽', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羽', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('羿', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翁', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翅', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翊', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翌', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翎', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翔', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翕', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翘', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翟', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翟', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翠', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翡', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翥', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翦', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翩', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翮', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翮', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翰', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翱', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翳', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翻', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('翼', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耀', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('老', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('考', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耄', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('者', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耆', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耆', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耆', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耋', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('而', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('而', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耍', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耐', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耒', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耔', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耕', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耖', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耗', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耗', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耘', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耙', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耙', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耜', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耠', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耢', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耥', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耦', 'o');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耧', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耨', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耩', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耪', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耱', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耳', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耳', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耵', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耶', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耶', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耷', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耷', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耸', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耻', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耽', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('耿', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('聂', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('聂', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('聂', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('聂', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('聃', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('聆', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('聊', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('聋', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('职', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('聍', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('聒', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('联', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('聘', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('聚', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('聩', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('聪', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('聱', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('聱', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('聿', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肀', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肀', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肃', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肄', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肄', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肆', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肆', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肇', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肉', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肋', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肋', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肌', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肓', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肖', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肘', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肚', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肛', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肜', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肜', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肝', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肟', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肠', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('股', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肢', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肢', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肤', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肤', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肥', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肩', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肩', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肪', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肫', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肫', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肫', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肭', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肮', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肮', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肮', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肯', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肱', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('育', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肴', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肷', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肷', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肺', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肺', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肼', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肽', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肾', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('肿', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胀', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胀', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胁', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胂', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胂', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胃', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胄', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胆', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胆', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('背', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胍', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胍', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胎', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胖', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胗', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胙', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胚', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胛', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胜', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胜', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胜', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胝', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胝', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胝', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胞', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胞', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胡', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胤', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胥', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胧', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胨', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胩', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胪', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胫', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胫', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胬', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胭', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胯', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胰', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胱', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胲', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胲', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胳', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胴', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胶', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胶', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胸', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胺', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胺', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('胼', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('能', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('能', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脂', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脆', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脉', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脊', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脍', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脎', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脏', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脐', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脑', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脒', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脓', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脔', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脔', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脖', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脘', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脘', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脚', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脞', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脞', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脬', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脯', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脯', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脱', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脲', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脶', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脸', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脾', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('脾', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腆', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腈', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腊', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腊', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腋', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腌', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腌', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腐', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腑', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腓', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腔', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腔', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腕', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腙', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腚', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腠', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腥', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腧', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腧', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腩', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腭', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腮', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腰', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腱', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腱', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腴', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腹', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腺', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腻', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腼', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腽', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腾', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('腿', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膀', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膀', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膂', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膈', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膊', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膊', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膊', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膏', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膑', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膘', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膘', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膛', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膜', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膝', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膣', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膦', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膨', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膪', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膪', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膳', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膺', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膻', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('膻', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('臀', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('臁', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('臂', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('臃', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('臆', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('臊', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('臌', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('臣', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('臧', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('臧', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('自', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('臬', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('臭', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('臭', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('至', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('至', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('致', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('臻', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('臼', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('臾', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('臾', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舀', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舁', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舂', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舂', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舄', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舄', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舄', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舅', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舆', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舌', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舌', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舍', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舐', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舒', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舒', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舔', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舛', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舜', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舞', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舟', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舡', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舡', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舢', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舣', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舨', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('航', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舫', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('般', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('般', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舭', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舯', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舰', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舱', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舳', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舴', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舵', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舶', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舷', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舸', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('船', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舻', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('舾', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艄', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艇', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艉', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艋', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艏', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艘', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艚', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艟', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艟', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艟', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艨', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艮', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艮', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('良', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艰', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('色', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艳', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艴', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艴', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艴', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艹', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艹', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艺', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艽', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艽', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艾', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艾', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艿', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('艿', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('节', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芄', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芈', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芊', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芋', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芋', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芍', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芍', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芍', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芍', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芎', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芏', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芑', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芒', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芒', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芒', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芗', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芘', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芘', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芙', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芜', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芝', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芟', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芟', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芡', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芤', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芥', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芥', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芦', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芦', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芨', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芩', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芩', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芪', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芪', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芫', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芬', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芭', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芭', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芮', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芯', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芰', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('花', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芳', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芴', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芴', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芷', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芸', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芹', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芽', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('芾', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苁', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苄', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苇', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苈', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苊', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苋', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苋', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苌', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苍', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苎', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苏', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苑', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苒', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苓', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苔', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苕', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苕', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苗', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苘', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苛', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苛', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苜', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苞', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苞', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苟', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苠', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苡', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苣', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苣', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苤', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('若', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苦', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苦', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苦', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苫', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苫', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苫', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苯', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('英', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苴', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苴', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苴', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苷', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苹', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苻', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('苻', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茁', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茂', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('范', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茄', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茄', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茅', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茆', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茇', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茇', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茇', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茈', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茈', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茉', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茌', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茎', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茏', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茑', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茔', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茕', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茗', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茚', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茛', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茛', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茜', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茜', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茧', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茧', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茨', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茫', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茫', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茬', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茭', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茭', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茭', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茯', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茱', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茳', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茴', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茵', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茶', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茸', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茹', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茺', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('茼', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荀', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荃', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荃', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荆', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荇', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('草', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('草', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荏', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荐', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荑', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荑', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荒', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荒', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荔', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荚', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荛', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荛', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荜', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荞', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荟', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荠', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荠', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荠', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荡', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荡', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荣', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荤', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荤', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荥', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荥', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荦', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荧', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荨', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荨', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荨', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荩', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荪', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荫', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荬', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荭', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荮', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('药', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('药', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('药', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荷', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荸', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荻', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荼', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荼', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荼', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荼', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荽', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('荽', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莅', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莆', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莆', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莉', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莉', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莎', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莒', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莓', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莘', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莘', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莛', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莜', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莜', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莞', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莞', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莠', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莠', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莨', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莩', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莩', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莪', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莫', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莫', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莰', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莱', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莲', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莳', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莴', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莶', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莶', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莶', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莶', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('获', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莸', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莹', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莺', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莼', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('莽', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菀', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菀', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菁', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菅', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菅', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菇', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菊', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菌', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菏', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菏', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菔', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菖', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菘', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菜', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菝', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菟', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菠', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菡', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菥', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菥', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菩', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菩', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菪', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菰', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菱', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菲', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菸', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菹', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菹', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菽', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('菽', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萁', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萁', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萃', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萄', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萆', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萆', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萋', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萌', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萍', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萎', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萏', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萏', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萑', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萑', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萘', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萜', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萝', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萤', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('营', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萦', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萧', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萨', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萱', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萸', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('萼', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('落', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葆', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葑', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('著', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('著', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葙', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葚', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葚', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葛', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葜', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葡', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葡', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('董', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('董', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葩', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葫', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葬', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葭', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葭', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葱', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葳', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葵', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葶', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葶', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葸', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('葺', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒂', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒇', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒈', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒉', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒋', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒌', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒌', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒎', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒗', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒙', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒙', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒜', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒡', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒡', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒯', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒲', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒲', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒴', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒸', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒹', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒺', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒽', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒿', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蒿', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蓁', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蓁', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蓄', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蓉', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蓊', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蓍', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蓐', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蓑', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蓓', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蓖', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蓝', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蓟', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蓠', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蓣', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蓥', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蓦', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蓬', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蓰', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蓼', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蓿', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔌', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔑', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔓', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔓', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔗', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔚', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔚', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔟', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔡', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔡', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔫', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔫', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔬', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔷', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔷', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔸', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔹', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔹', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔺', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔻', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔼', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔽', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蔽', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕃', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕃', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕃', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕈', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕈', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕉', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕉', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕊', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕊', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕖', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕙', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕞', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕞', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕤', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕨', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕲', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕲', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕴', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕴', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕹', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕹', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕺', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕺', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕻', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蕾', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('薄', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('薅', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('薇', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('薏', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('薛', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('薜', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('薤', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('薨', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('薪', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('薮', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('薮', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('薯', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('薰', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('薷', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('薹', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('藁', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('藉', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('藏', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('藏', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('藐', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('藓', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('藕', 'o');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('藜', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('藤', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('藩', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('藻', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('藿', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蘅', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蘑', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蘖', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蘖', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蘧', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蘧', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蘩', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蘸', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蘼', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虍', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虍', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虎', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虏', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虐', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虑', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虑', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虔', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虚', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虞', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虢', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虫', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虫', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虬', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虮', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虱', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虹', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虹', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虹', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虺', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虻', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虼', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虽', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虾', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虾', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('虿', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚀', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚁', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚂', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚊', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚋', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚌', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚌', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚌', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚍', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚓', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚕', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚕', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚜', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚝', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚝', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚣', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚣', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚤', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚧', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚨', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚩', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚪', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚬', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚯', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚰', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚰', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚱', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚴', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚴', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚵', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚵', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚶', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚺', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蚺', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛀', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛄', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛆', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛆', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛇', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛇', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛇', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛇', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛉', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛊', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛋', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛎', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛏', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛐', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛑', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛔', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛘', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛙', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛙', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛛', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛞', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛞', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛟', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛤', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛤', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛩', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛩', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛭', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛮', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛰', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛱', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛲', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛳', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛴', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛸', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛸', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛹', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛾', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蛾', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜀', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜂', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜃', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜇', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜈', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜉', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜊', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜍', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜍', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜒', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜒', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜓', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜓', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜕', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜕', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜗', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜘', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜚', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜚', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜚', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜜', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜞', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜡', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜡', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜡', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜡', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜢', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜣', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜥', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜩', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜩', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜮', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜮', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜱', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜱', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜴', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜴', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜷', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜷', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜻', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜻', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜾', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜾', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蜿', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝇', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝈', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝉', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝌', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝎', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝎', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝓', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝗', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝙', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝙', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝠', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝣', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝤', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝤', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝤', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝥', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝥', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝮', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝰', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝴', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝶', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝶', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝻', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝼', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝽', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蝾', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('螂', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('螃', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('螃', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('螅', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('螅', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('螈', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('螋', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('融', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('螓', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('螗', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('螟', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('螨', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('螫', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('螬', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('螭', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('螯', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('螳', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('螵', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('螺', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('螽', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蟀', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蟆', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蟊', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蟋', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蟑', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蟒', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蟓', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蟛', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蟠', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蟠', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蟥', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蟪', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蟮', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蟹', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蟾', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蠃', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蠃', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蠊', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蠓', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蠕', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蠖', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蠖', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蠛', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蠡', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蠢', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蠲', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蠹', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蠼', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蠼', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('血', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衄', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衅', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('行', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('行', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衍', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衔', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('街', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衙', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衡', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衢', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衣', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衤', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衤', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('补', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('表', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衩', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衫', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衬', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衮', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衰', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衰', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衲', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衷', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衽', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衾', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衿', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('衿', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袁', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袂', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袂', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袄', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袅', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袈', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袋', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袍', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袍', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袒', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袒', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袖', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袜', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袜', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袢', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袢', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袤', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('被', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('被', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袭', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袱', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袷', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袷', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袼', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('袼', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裁', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裂', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('装', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裆', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裉', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裎', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裒', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裒', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裔', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裕', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裘', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裙', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裟', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裢', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裣', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裣', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裤', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裥', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裨', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裨', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裰', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裱', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裳', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裳', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裴', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裴', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裸', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裹', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裼', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裼', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('裾', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褂', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褊', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褊', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褐', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褒', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褒', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褓', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褙', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褚', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褚', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褛', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褡', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褥', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褥', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褪', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褫', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褰', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褴', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褶', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褶', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('褶', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('襁', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('襄', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('襞', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('襟', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('襦', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('襻', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('西', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('要', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('覃', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('覃', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('覃', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('覆', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('见', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('见', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('观', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('规', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('规', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觅', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('视', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觇', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觇', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觇', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('览', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觉', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觊', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觋', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觌', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觌', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觎', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觏', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觐', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觑', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('角', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('角', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('角', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觖', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觖', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觖', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觚', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觜', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觞', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('解', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('解', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觥', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('触', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觫', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觯', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('觳', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('言', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('訇', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('訇', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('訾', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('詈', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('詹', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('詹', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('誉', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('誊', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('誓', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('謇', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('謦', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('警', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('譬', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('讠', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('讠', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('计', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('订', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('讣', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('认', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('讥', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('讦', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('讧', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('讨', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('让', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('讪', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('讫', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('训', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('议', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('讯', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('记', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('讲', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('讳', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('讴', 'o');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('讴', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('讵', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('讶', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('讷', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('许', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('许', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('讹', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('论', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('讼', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('讽', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('设', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('访', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诀', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('证', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诂', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诃', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('评', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诅', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('识', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('识', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诈', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诉', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诊', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诋', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诋', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诌', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诌', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('词', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诎', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诎', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诏', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('译', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诒', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诒', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诒', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诓', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诔', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('试', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诖', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诗', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诘', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诙', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诚', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诛', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诜', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('话', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诞', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诟', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诟', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诠', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诡', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('询', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诣', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诤', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('该', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('详', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('详', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诧', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诧', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诨', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诩', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诫', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诬', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('语', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诮', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('误', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诰', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诱', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诲', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诳', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('说', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('说', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('说', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诵', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诶', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诶', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诶', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('请', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诸', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诸', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诹', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诺', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('读', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诼', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诽', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('课', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('诿', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谀', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谁', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谂', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谂', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('调', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('调', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('调', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谄', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谅', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谆', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谇', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谈', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谊', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谋', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谌', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谍', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谍', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谎', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谏', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谏', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谐', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谑', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谑', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谒', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谓', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谔', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谕', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谕', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谖', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谗', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谘', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谙', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谙', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谚', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谛', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谛', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谜', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谝', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谟', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谠', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谡', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谢', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谣', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谤', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谥', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谥', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谥', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谦', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谦', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谧', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谨', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谩', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谪', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谫', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谬', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谭', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谮', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谮', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谯', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谰', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谱', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谲', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谳', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谴', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谵', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谶', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谷', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谷', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('谷', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('豁', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('豆', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('豇', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('豉', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('豌', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('豕', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('豚', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('豚', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('象', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('豢', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('豪', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('豫', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('豫', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('豫', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('豳', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('豸', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('豹', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('豺', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('貂', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('貅', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('貉', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('貉', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('貊', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('貌', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('貔', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('貘', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贝', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贞', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('负', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贡', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('财', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('责', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贤', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('败', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('账', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('货', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('质', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贩', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贪', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贫', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贬', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贬', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('购', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贮', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贯', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贯', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贰', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贱', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贲', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贲', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贳', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贴', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贵', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贶', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贷', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贷', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贸', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('费', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('费', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贺', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贻', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贼', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贽', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贾', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贾', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('贿', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赀', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赁', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赂', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赃', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('资', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赅', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赆', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赇', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赈', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赉', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赊', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赋', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赌', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赍', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赎', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赏', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赐', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赓', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赔', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赕', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赕', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赖', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赘', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赙', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赚', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赛', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赜', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赝', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赞', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赠', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赡', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赡', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赢', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赣', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赣', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赤', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赦', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赦', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赧', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赫', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赫', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赭', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('走', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赳', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赴', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赵', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赵', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赶', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('赶', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('起', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趁', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趁', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趁', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趄', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趄', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('超', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('超', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('越', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('越', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趋', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趋', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趑', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趑', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趔', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趟', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趟', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趟', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趣', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趣', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趱', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('足', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('足', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趴', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趵', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趵', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趵', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趸', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趺', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趼', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趼', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趾', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趿', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('趿', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跃', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跃', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跄', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跆', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跋', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跌', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跌', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跎', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跏', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跑', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跑', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跖', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跗', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跚', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跛', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跛', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('距', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跞', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跞', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跟', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跣', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跣', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跤', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跤', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跨', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跪', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跫', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跬', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跬', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('路', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跳', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跳', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('践', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跷', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跸', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跹', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跺', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跻', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('跽', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踅', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踅', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踉', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踊', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踌', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踏', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踔', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踔', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踔', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踔', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踝', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踞', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踟', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踢', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踢', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踣', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踣', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踩', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踩', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踪', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踬', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踮', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踯', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踱', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踱', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踵', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踹', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踹', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踹', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踺', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('踽', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹀', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹁', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹂', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹄', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹄', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹇', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹈', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹉', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹊', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹊', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹋', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹑', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹒', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹒', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹒', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹙', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹦', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹦', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹩', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹬', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹭', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹯', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹰', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹲', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹲', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹲', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹴', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹴', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹴', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹶', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹶', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹼', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('蹿', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('躁', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('躅', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('躇', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('躏', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('躐', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('躔', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('躔', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('躜', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('躜', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('躞', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('身', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('身', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('躬', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('躯', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('躲', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('躺', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('軎', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('车', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('车', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轧', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轧', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轧', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轨', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轩', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轩', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轫', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('转', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轭', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轮', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('软', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轰', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轱', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轲', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轳', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轴', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轵', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轶', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轶', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轶', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轷', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轸', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轹', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轺', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轺', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轻', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轼', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('载', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轾', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('轿', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辁', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辁', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辂', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辂', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辂', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('较', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('较', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辄', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辅', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辆', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辇', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辈', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辉', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辊', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辋', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辍', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辎', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辏', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辐', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辑', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('输', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辔', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辕', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辖', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辖', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辗', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辗', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辘', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辙', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辚', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辛', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辜', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辞', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辟', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辟', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辟', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辣', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辨', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辩', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辩', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辫', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辰', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辱', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辶', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辶', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('边', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('辽', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('达', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('达', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迁', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迂', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迄', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迅', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('过', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迈', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迎', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('运', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('近', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迓', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('返', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迕', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('还', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('还', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('这', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('这', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('进', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('远', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('违', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('违', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('连', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迟', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迟', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迢', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迤', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迤', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迥', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迦', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迦', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迨', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迩', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迪', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迫', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迭', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迭', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迮', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('述', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迳', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迷', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迸', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迸', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('迹', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('追', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('追', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('追', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('退', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('送', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('适', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('适', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逃', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逄', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逄', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逅', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逆', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('选', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('选', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逊', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逋', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逍', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('透', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('透', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逐', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逐', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逐', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逑', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('递', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('途', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逖', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逗', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逗', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逗', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逗', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('通', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逛', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逛', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逝', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逞', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逞', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('速', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('造', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('造', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逡', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逡', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逡', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逢', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逢', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逦', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逭', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逮', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逯', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逯', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逵', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逶', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逸', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逻', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逼', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逾', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('逾', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遁', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遁', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遁', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遂', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遄', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遇', 'o');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遇', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遍', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遏', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遐', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遑', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遒', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('道', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遗', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遗', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遗', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遘', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遛', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遢', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遣', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遥', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遨', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遭', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遮', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遴', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遵', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遽', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('遽', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('避', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邀', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邂', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邃', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邈', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邋', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邑', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邑', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邓', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邓', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邕', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邗', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邙', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邛', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邝', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邡', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邢', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邢', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('那', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邦', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邪', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邪', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邬', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邮', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邯', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邰', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邱', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邳', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邴', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邵', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邶', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邸', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邹', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邹', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邺', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邺', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邻', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('邾', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郁', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郄', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郄', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郅', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郅', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郇', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郇', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郊', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郎', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郏', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郐', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郑', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郓', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郗', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郛', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郜', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郝', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郝', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郡', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郢', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郢', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郦', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郦', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郧', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('部', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('部', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郫', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郭', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郯', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郴', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郴', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郸', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('都', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('郾', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鄂', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鄄', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鄙', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鄞', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鄢', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鄣', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鄯', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鄱', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鄹', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鄹', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酃', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酆', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酉', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酊', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酋', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酌', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('配', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酎', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酏', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酐', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酐', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酒', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酗', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酚', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酝', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酞', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酡', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酡', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酢', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酢', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酣', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酤', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酥', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酩', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酪', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酬', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酮', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酮', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酮', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酯', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酰', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酱', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酲', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酴', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酵', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酶', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酷', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酸', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酹', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酽', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酾', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('酿', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醅', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醇', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醉', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醋', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醋', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醌', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醍', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醐', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醑', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醒', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醒', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醒', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醚', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醛', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醛', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醢', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醣', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醪', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醭', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醮', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醮', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醮', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醯', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醴', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醵', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('醺', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('采', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('釉', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('释', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('释', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('里', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('重', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('重', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('重', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('野', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('野', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('量', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('金', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('釜', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鉴', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('銎', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('銮', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鋈', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('錾', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鍪', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鎏', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鏊', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鏖', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鏖', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鐾', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鑫', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钅', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钅', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钆', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钆', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钇', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('针', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钉', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钉', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钊', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钋', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钌', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钍', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钎', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钏', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钐', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钐', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钒', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钓', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钔', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钕', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钗', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钙', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钚', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钚', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钛', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钜', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钝', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钞', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钟', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钠', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钠', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钡', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钢', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钣', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钤', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钤', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钥', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钦', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钧', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钨', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钩', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钪', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钫', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钬', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钭', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钭', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钮', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钮', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钯', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钯', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钰', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钱', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钱', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钲', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钳', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钳', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钴', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钴', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钵', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钶', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钷', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钸', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钹', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钺', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钻', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钼', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钽', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钾', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钾', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钿', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('钿', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铀', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铀', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铁', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铁', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铂', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铃', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铄', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铄', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铄', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铅', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铅', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铆', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铆', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铈', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铉', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铊', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铊', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铊', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铋', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铋', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铌', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铍', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铎', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铐', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铑', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铒', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铒', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铕', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铖', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铗', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铘', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铙', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铛', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铛', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铛', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铜', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铝', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铞', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铟', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铠', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铡', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铢', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铣', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铤', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铤', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铥', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铧', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铨', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铩', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铪', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铪', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铪', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铪', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铫', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铫', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铫', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铫', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铬', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铬', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铭', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铮', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铯', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铰', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铱', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铲', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铳', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铴', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铵', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('银', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铷', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铸', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铹', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铺', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铼', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铽', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('链', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('铿', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('销', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锁', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锂', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锃', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锄', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锄', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锅', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锆', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锇', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锇', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锈', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锈', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锉', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锊', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锋', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锌', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锌', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锍', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锎', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锏', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锐', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锐', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锐', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锑', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锒', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锓', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锓', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锔', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锕', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锕', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锖', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锗', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锗', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锘', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锘', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('错', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('错', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锚', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锛', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锝', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锞', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锞', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锟', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锟', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锡', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锡', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锢', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锣', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锤', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锥', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锦', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锨', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锩', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锪', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锫', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锫', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锬', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锬', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锬', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锭', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('键', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锯', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锰', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锱', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锲', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锴', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锴', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锵', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锶', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锷', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锸', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锹', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锺', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锻', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锼', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锾', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('锿', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镀', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镁', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镂', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镄', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镅', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镆', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镇', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镇', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镉', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镉', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镊', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镌', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镍', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镎', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镏', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镐', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镐', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镑', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镑', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镒', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镓', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镔', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镖', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镗', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镘', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镙', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镛', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镜', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镝', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镞', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镞', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镟', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镡', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镡', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镡', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镢', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镣', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镤', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镥', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镦', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镧', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镨', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镩', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镪', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镫', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镬', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镭', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镯', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镯', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镰', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镱', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镲', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镳', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镶', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('镶', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('长', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('长', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('门', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闩', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闪', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闫', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闭', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('问', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闯', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闰', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闱', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闲', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闳', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('间', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闵', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闶', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闷', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闸', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闸', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闸', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闹', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闺', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闻', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闼', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闽', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('闾', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阀', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阁', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阂', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阂', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阂', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阃', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阄', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阅', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阆', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阈', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阉', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阊', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阊', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阋', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阋', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阌', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阍', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阎', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阏', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阏', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阐', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阑', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阒', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阔', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阕', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阕', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阕', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阖', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阗', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阙', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阙', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阚', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阚', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阚', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阜', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阝', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阝', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('队', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阡', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阢', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阪', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阮', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阮', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阱', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('防', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阳', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阴', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阴', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阵', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阶', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阻', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阼', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阽', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阽', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阿', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('阿', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陀', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陀', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陂', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陂', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('附', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('附', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('际', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陆', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陇', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陈', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陉', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陉', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陋', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陌', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('降', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('降', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('限', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('限', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陔', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陕', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陛', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陟', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陟', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陡', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('院', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('除', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('除', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('除', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陧', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陨', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('险', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('险', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('险', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陪', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陬', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陲', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陴', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陴', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陵', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陶', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陶', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陶', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('陷', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隅', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隆', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隈', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隋', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隋', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隋', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隍', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('随', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隐', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隔', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隔', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隔', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隗', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隗', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隗', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隘', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隘', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隙', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('障', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隧', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隧', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隰', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隳', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隶', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隶', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隶', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隹', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隹', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隹', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隼', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('隽', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('难', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雀', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雁', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雄', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雅', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('集', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雇', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雇', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雉', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雉', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雉', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雉', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雌', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雍', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雎', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雏', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雏', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雒', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雕', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雠', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雨', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雩', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雩', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雪', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雯', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雳', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('零', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雷', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雹', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('雾', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('需', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('需', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('需', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霁', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霄', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霆', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('震', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('震', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霈', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霉', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霍', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霍', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霎', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霏', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霓', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霖', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霜', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霞', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霪', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霭', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霰', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霰', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('露', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霸', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霸', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霹', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霾', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('霾', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('青', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('青', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('靓', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('靓', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('靖', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('静', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('靛', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('非', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('靠', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('靡', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('面', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('靥', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('革', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('革', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('靳', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('靴', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('靶', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('靼', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞅', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞋', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞋', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞍', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞑', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞑', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞒', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞒', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞔', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞘', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞘', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞠', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞠', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞣', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞫', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞫', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞭', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞯', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞲', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞴', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鞴', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('韦', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('韦', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('韧', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('韩', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('韪', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('韫', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('韫', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('韬', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('韭', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('音', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('韵', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('韶', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('页', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('页', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('顶', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('顷', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('顷', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('顸', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('顸', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('项', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('顺', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('须', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('顼', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('顽', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('顽', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('顾', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('顿', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颀', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颀', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颁', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颁', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颂', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颂', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颃', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颃', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('预', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颅', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('领', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颇', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颈', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颈', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颉', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颉', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颊', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颌', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颌', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颌', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颌', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颍', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颏', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颏', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颐', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('频', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('频', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颓', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颔', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颖', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颗', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('题', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('题', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颚', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颛', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颜', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('额', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颞', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颟', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颠', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颠', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颡', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颢', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颤', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颤', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颤', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颥', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颦', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('颧', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('风', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('飑', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('飑', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('飒', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('飒', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('飓', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('飕', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('飘', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('飙', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('飚', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('飞', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('食', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('食', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('飧', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('飨', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('餍', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('餐', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('餐', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('餮', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饔', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饕', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饣', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饣', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饥', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饧', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饧', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饨', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饨', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饩', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饪', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饫', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饬', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饬', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饭', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饮', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饯', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饰', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饰', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饱', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饲', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饴', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饴', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饵', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饶', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饷', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饺', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饼', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饽', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('饿', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馀', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馁', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馄', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馄', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馅', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馅', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馆', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馇', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馈', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馈', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馊', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馋', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馍', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馏', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馐', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馑', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馒', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馓', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馔', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馔', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馕', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('首', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馗', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馗', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馘', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馘', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('香', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馥', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馥', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('馨', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('马', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('驭', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('驮', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('驮', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('驯', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('驰', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('驱', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('驳', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('驴', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('驵', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('驶', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('驷', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('驸', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('驹', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('驺', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('驺', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('驻', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('驼', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('驽', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('驾', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('驿', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骀', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骀', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骀', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骁', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骂', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骄', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骄', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骄', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骅', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骆', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骆', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骇', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骈', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骊', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骊', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骋', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('验', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骏', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骐', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骑', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骑', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骒', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骓', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骖', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骗', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骘', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骚', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骚', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骛', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骜', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骜', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骝', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骞', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骞', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骟', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骠', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骠', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骠', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骡', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骢', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骣', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骣', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骤', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骥', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骧', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骨', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骰', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骰', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骱', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骱', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骶', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骷', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骸', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骸', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骺', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('骼', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('髀', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('髁', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('髂', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('髂', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('髅', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('髋', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('髌', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('髑', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('髓', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('高', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('髟', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('髟', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('髟', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('髡', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('髦', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('髫', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('髫', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('髭', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('髯', 'r');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('髹', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('髻', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鬃', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鬈', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鬏', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鬓', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鬟', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鬣', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鬯', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鬲', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鬲', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鬲', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鬻', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鬻', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鬻', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鬼', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('魁', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('魂', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('魃', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('魄', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('魄', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('魄', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('魅', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('魇', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('魈', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('魉', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('魍', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('魏', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('魑', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('魔', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鱼', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鱿', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲁', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲂', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲅', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲆', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲇', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲈', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲋', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲋', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲍', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲍', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲎', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲐', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲑', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲑', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲑', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲑', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲒', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲒', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲔', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲕', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲚', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲛', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲜', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲞', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲞', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲟', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲠', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲡', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲢', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲣', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲤', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲥', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲦', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲧', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲨', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲩', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲫', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲫', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲭', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲭', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲮', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲰', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲱', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲲', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲳', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲴', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲵', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲶', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲷', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲸', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲺', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲻', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲼', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲽', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲽', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鲽', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳃', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳃', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳄', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳅', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳆', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳇', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳊', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳋', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳌', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳍', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳎', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳎', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳏', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳏', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳐', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳓', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳔', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳕', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳖', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳗', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳘', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳙', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳜', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳜', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳝', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳞', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳟', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鳢', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸟', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸟', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸟', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸠', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸠', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸠', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸡', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸢', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸣', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸥', 'o');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸦', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸨', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸩', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸪', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸫', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸬', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸭', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸯', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸱', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸲', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸲', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸳', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸵', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸶', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸷', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸸', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸹', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸺', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸽', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸾', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鸿', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹁', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹂', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹃', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹄', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹄', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹅', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹆', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹇', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹈', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹉', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹊', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹋', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹌', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹌', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹎', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹏', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹏', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹑', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹑', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹕', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹗', 'e');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹘', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹘', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹚', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹛', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹜', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹞', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹣', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹣', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹤', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹦', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹧', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹨', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹩', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹪', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹫', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹬', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹬', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹭', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹰', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹱', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹳', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹳', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹳', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹾', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鹿', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('麂', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('麇', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('麇', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('麈', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('麋', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('麒', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('麓', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('麝', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('麟', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('麦', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('麴', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('麸', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('麻', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('麽', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('麾', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黄', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黉', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黍', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黎', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黏', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黑', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黔', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('默', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黛', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黜', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黝', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黟', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黠', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黢', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黥', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黧', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黩', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黪', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黯', 'a');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黹', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黹', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黻', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黼', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('黾', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鼋', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鼍', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鼎', 'd');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鼎', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鼐', 'n');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鼓', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鼗', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鼙', 'p');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鼠', 's');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鼢', 'f');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鼬', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鼯', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鼷', 'x');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鼹', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鼻', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鼽', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('鼾', 'h');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('齄', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('齐', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('齐', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('齐', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('齑', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('齿', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龀', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龃', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龃', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龄', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龅', 'b');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龆', 't');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龇', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龇', 'z');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龈', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龈', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龈', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龉', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龉', 'y');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龊', 'c');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龋', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龌', 'w');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龙', 'l');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龙', 'm');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龚', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龛', 'k');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龟', 'g');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龟', 'j');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龟', 'q');
INSERT INTO `dic` (`word`, `pinyin`) VALUES 
  ('龠', 'y');