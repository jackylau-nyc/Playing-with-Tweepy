# Create and use schema
CREATE SCHEMA IF NOT EXISTS DORIS_DB;
USE DORIS_DB;

# Create table containing users
CREATE TABLE IF NOT EXISTS USER (
  userID VARCHAR(20) NOT NULL, 
  screenName VARCHAR(20) NOT NULL,
  verified BOOLEAN NOT NULL, 
  realName VARCHAR(30), 
  userUrl VARCHAR(100) NOT NULL, 
  followerCount INT NOT NULL, 
  statusCount INT NOT NULL, 
  createdAt DATETIME NOT NULL,
  PRIMARY KEY (userID)
);

# Create table containing tweets
CREATE TABLE IF NOT EXISTS TWEET (
  tweetID VARCHAR(20) NOT NULL, 
  userID VARCHAR(20) NOT NULL,
  tweetText VARCHAR(300), 
  inReplyStatus VARCHAR(20), 
  inReplyUser VARCHAR(30), 
  quotedStatusID VARCHAR(20), 
  retweetCount INT NOT NULL, 
  favoriteCount INT NOT NULL, 
  createdAt DATETIME NOT NULL, 
  PRIMARY KEY(tweetID), 
  FOREIGN KEY(userID) REFERENCES USER(userID)
);
