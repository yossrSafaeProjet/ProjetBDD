  CREATE TABLE subscription (
    subscription_id SERIAL PRIMARY KEY NOT NULL,
    subscribed_at TIMESTAMP WITH TIME ZONE,
    user_id INT REFERENCES user_table(user_id) NOT NULL,
    paid INTEGER CHECK (paid IN (10, 100, 1000)),
    subscription_plan VARCHAR(20) CHECK (subscription_plan IN ('monthly', 'yearly', 'lifetime'))
);

 INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (1, '2023-03-24 16:35:12', 1, 10, 'monthly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (2, '2023-01-19 03:51:07', 1, 100, 'yearly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (3, '2023-02-14 17:04:29', 1, 1000, 'lifetime');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (4, '2023-04-20 05:32:04', 2, 10, 'monthly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (5, '2023-05-13 04:45:23', 2, 100, 'yearly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (6, '2023-03-18 13:06:16', 2, 1000, 'lifetime');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (7, '2023-01-17 06:51:59', 3, 10, 'monthly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (8, '2023-02-12 19:39:27', 3, 100, 'yearly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (9, '2023-01-27 22:09:35', 3, 1000, 'lifetime');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (10, '2023-05-31 05:13:10', 4, 10, 'monthly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (11, '2023-04-03 09:23:47', 4, 100, 'yearly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (12, '2023-01-04 17:30:09', 4, 1000, 'lifetime');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (13, '2023-02-14 06:53:06', 5, 10, 'monthly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (14, '2023-02-28 07:40:39', 5, 100, 'yearly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (15, '2023-04-27 00:40:33', 5, 1000, 'lifetime');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (16, '2023-04-23 04:43:23', 6, 10, 'monthly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (17, '2023-03-24 13:18:00', 6, 100, 'yearly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (18, '2023-04-26 06:58:29', 6, 1000, 'lifetime');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (19, '2023-05-11 22:53:33', 7, 10, 'monthly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (20, '2023-02-18 10:04:22', 7, 100, 'yearly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (21, '2023-06-03 15:32:25', 7, 1000, 'lifetime');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (22, '2023-06-25 11:47:45', 8, 10, 'monthly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (23, '2023-02-21 18:22:30', 8, 100, 'yearly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (24, '2023-03-09 10:22:05', 8, 1000, 'lifetime');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (25, '2023-04-15 03:21:26', 9, 10, 'monthly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (26, '2023-04-18 07:25:36', 9, 100, 'yearly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (27, '2023-01-20 05:35:20', 9, 1000, 'lifetime');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (28, '2023-02-28 17:03:44', 10, 10, 'monthly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (29, '2023-05-16 20:56:13', 10, 100, 'yearly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (30, '2023-05-17 03:49:57', 10, 1000, 'lifetime');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (31, '2023-03-28 13:08:10', 11, 10, 'monthly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (32, '2023-02-06 12:59:05', 11, 100, 'yearly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (33, '2023-02-04 13:53:07', 11, 1000, 'lifetime');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (34, '2023-02-21 20:35:40', 14, 10, 'monthly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (35, '2023-02-13 10:19:48', 14, 100, 'yearly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (36, '2023-06-14 06:48:52', 14, 1000, 'lifetime');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (37, '2023-03-05 04:54:00', 16, 10, 'monthly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (38, '2023-06-07 09:23:28', 16, 100, 'yearly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (39, '2023-01-13 23:25:36', 16, 1000, 'lifetime');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (40, '2023-06-04 04:04:42', 17, 10, 'monthly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (41, '2023-03-03 13:28:13', 17, 100, 'yearly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (42, '2023-02-24 22:38:08', 17, 1000, 'lifetime');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (43, '2023-06-03 22:13:39', 18, 10, 'monthly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (44, '2023-01-07 07:19:36', 18, 100, 'yearly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (45, '2023-04-15 19:37:32', 18, 1000, 'lifetime');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (46, '2023-02-15 16:32:03', 19, 10, 'monthly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (47, '2023-03-27 00:10:16', 19, 100, 'yearly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (48, '2023-02-08 02:52:23', 19, 1000, 'lifetime');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (49, '2023-02-13 23:09:33', 20, 10, 'monthly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (50, '2023-03-30 06:29:42', 20, 100, 'yearly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (51, '2023-01-23 13:03:54', 20, 1000, 'lifetime');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (52, '2023-06-12 20:40:35', 22, 10, 'monthly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (53, '2023-04-27 22:50:16', 22, 100, 'yearly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (54, '2023-04-10 22:22:22', 22, 1000, 'lifetime');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (55, '2023-02-07 05:07:44', 24, 10, 'monthly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (56, '2023-02-20 07:48:37', 24, 100, 'yearly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (57, '2023-01-25 16:09:01', 24, 1000, 'lifetime');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (58, '2023-03-24 23:05:28', 25, 10, 'monthly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (59, '2023-01-12 05:15:59', 25, 100, 'yearly');
INSERT INTO subscription (subscription_id, subscribed_at, user_id, paid, subscription_plan) VALUES (60, '2023-04-19 21:36:38', 25, 1000, 'lifetime');
  
SELECT count(*) from subscription where subscription_plan='lifetime'; 
/* SELECT count(*) from user_email_verification_table u INNER JOIN subscription s
on s.user_id=u.user_id; */
