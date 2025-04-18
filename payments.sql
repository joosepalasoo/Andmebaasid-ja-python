create table payments (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	booking_id INT,
	total DECIMAL(7,2),
	payment_date DATE,
	payment_type VARCHAR(13)
);
insert into payments (booking_id, total, payment_date, payment_type) values (1, 1099.46, '10/14/2022', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (2, 9406.83, '4/18/2020', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (3, 5654.79, '6/22/2020', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (4, 4397.81, '10/28/2021', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (5, 6843.06, '11/5/2022', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (6, 1734.44, '7/18/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (7, 6892.81, '8/6/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (8, 7453.66, '12/18/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (9, 1703.51, '9/22/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (10, 248.87, '7/15/2022', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (11, 5656.8, '3/28/2022', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (12, 3567.42, '9/6/2022', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (13, 2345.47, '7/18/2022', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (14, 7222.28, '12/11/2021', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (15, 2965.27, '6/10/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (16, 6874.42, '6/7/2021', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (17, 5385.7, '8/24/2022', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (18, 4903.77, '10/16/2020', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (19, 8355.91, '9/5/2022', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (20, 7823.14, '11/18/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (21, 4319.61, '12/11/2022', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (22, 6368.78, '10/27/2021', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (23, 3521.09, '9/24/2021', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (24, 6243.62, '3/28/2022', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (25, 6501.62, '10/13/2022', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (26, 5661.51, '2/20/2021', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (27, 6921.88, '7/26/2021', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (28, 535.06, '3/4/2021', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (29, 4098.82, '12/22/2020', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (30, 8892.48, '11/1/2021', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (31, 8653.2, '4/27/2022', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (32, 3027.34, '9/24/2020', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (33, 8911.69, '5/19/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (34, 1917.88, '10/25/2021', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (35, 1140.51, '12/28/2022', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (36, 1246.84, '11/28/2022', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (37, 861.46, '12/8/2020', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (38, 9955.75, '7/15/2022', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (39, 5908.17, '8/28/2021', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (40, 9172.24, '3/28/2021', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (41, 1071.71, '11/26/2020', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (42, 707.76, '11/13/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (43, 1382.95, '12/6/2020', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (44, 7538.72, '12/15/2020', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (45, 9703.42, '12/24/2020', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (46, 3680.99, '8/22/2020', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (47, 5900.59, '9/10/2022', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (48, 3834.64, '10/1/2020', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (49, 9030.1, '12/18/2021', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (50, 702.2, '7/28/2022', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (51, 9917.73, '7/6/2022', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (52, 938.28, '6/4/2020', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (53, 4858.26, '3/8/2021', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (54, 2474.81, '6/26/2021', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (55, 2291.04, '8/26/2021', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (56, 5895.91, '11/29/2021', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (57, 1495.17, '5/29/2020', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (58, 7790.5, '5/17/2021', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (59, 3475.46, '6/4/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (60, 2669.22, '7/16/2022', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (61, 5493.21, '3/29/2021', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (62, 3889.74, '6/10/2021', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (63, 2904.5, '12/7/2022', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (64, 2050.25, '6/16/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (65, 4994.57, '9/30/2021', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (66, 8247.38, '1/2/2021', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (67, 1882.13, '5/11/2021', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (68, 5579.69, '1/8/2020', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (69, 2840.81, '5/22/2022', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (70, 7611.56, '9/29/2021', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (71, 47.9, '6/26/2021', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (72, 9232.71, '9/16/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (73, 365.85, '3/23/2021', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (74, 6043.66, '5/29/2020', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (75, 8820.64, '3/1/2021', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (76, 6868.38, '6/22/2021', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (77, 7546.64, '3/20/2022', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (78, 3478.6, '2/20/2022', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (79, 3715.66, '10/23/2022', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (80, 3155.28, '11/29/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (81, 6718.8, '7/23/2020', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (82, 3340.06, '6/27/2020', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (83, 6678.84, '4/30/2022', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (84, 5701.34, '4/22/2021', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (85, 978.1, '11/17/2021', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (86, 8722.62, '6/3/2021', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (87, 635.5, '6/28/2022', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (88, 1041.53, '9/22/2021', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (89, 7955.04, '2/18/2022', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (90, 2617.6, '3/1/2020', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (91, 673.95, '7/1/2022', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (92, 8673.17, '8/27/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (93, 992.21, '10/31/2022', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (94, 6486.72, '3/23/2020', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (95, 4872.12, '11/30/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (96, 4963.33, '7/13/2021', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (97, 9417.86, '3/7/2022', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (98, 5180.9, '10/11/2020', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (99, 5780.78, '11/16/2020', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (100, 8361.29, '5/19/2021', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (101, 418.58, '7/8/2021', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (102, 6917.82, '2/18/2022', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (103, 9384.67, '7/5/2020', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (104, 4402.43, '5/14/2022', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (105, 9595.39, '10/9/2022', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (106, 705.66, '8/15/2020', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (107, 2896.01, '2/10/2022', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (108, 4789.7, '2/14/2020', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (109, 8140.49, '9/2/2020', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (110, 2550.55, '3/8/2021', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (111, 7403.2, '6/17/2020', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (112, 5925.13, '7/7/2020', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (113, 2934.81, '12/14/2021', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (114, 7265.2, '3/31/2022', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (115, 8859.37, '9/1/2022', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (116, 3522.69, '7/7/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (117, 4279.29, '10/27/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (118, 7944.2, '3/4/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (119, 9604.21, '2/5/2022', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (120, 5709.14, '4/23/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (121, 2931.28, '8/30/2022', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (122, 1501.66, '4/6/2020', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (123, 7067.54, '9/1/2020', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (124, 820.24, '12/12/2022', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (125, 7733.09, '2/16/2021', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (126, 8004.15, '9/9/2022', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (127, 4101.16, '3/29/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (128, 719.38, '7/24/2020', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (129, 4693.76, '7/22/2022', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (130, 3130.34, '1/16/2020', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (131, 3857.54, '12/1/2022', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (132, 3041.99, '10/4/2022', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (133, 7373.59, '6/4/2021', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (134, 5637.38, '6/22/2020', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (135, 1346.32, '6/4/2022', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (136, 123.54, '5/15/2022', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (137, 2557.69, '10/27/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (138, 1566.7, '12/28/2022', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (139, 1677.02, '6/19/2022', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (140, 279.04, '6/5/2021', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (141, 3765.89, '8/8/2020', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (142, 8594.32, '3/12/2022', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (143, 9859.19, '4/7/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (144, 3135.71, '8/17/2022', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (145, 1296.03, '1/6/2021', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (146, 2730.1, '7/13/2022', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (147, 2865.92, '12/11/2021', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (148, 4500.42, '11/16/2022', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (149, 7650.61, '9/16/2022', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (150, 3924.68, '2/4/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (151, 2785.03, '12/24/2021', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (152, 4605.41, '6/1/2020', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (153, 1685.97, '10/19/2022', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (154, 3258.61, '8/9/2022', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (155, 3003.81, '9/27/2021', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (156, 9145.03, '8/4/2020', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (157, 2584.06, '1/5/2021', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (158, 9807.52, '6/11/2020', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (159, 7239.16, '6/11/2021', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (160, 4564.8, '1/13/2021', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (161, 7451.49, '4/14/2020', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (162, 7127.11, '3/28/2021', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (163, 1260.79, '11/29/2021', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (164, 8134.89, '4/21/2021', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (165, 9158.62, '10/25/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (166, 428.71, '7/7/2021', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (167, 8354.34, '3/2/2021', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (168, 8818.83, '8/11/2020', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (169, 5305.13, '2/12/2021', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (170, 9066.63, '11/14/2021', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (171, 9370.83, '7/23/2022', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (172, 1118.06, '3/7/2022', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (173, 3817.87, '4/3/2021', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (174, 9683.36, '2/11/2021', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (175, 2767.3, '9/12/2022', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (176, 5362.91, '1/19/2022', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (177, 6911.37, '4/19/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (178, 7088.63, '8/20/2020', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (179, 2380.21, '7/18/2022', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (180, 1486.07, '9/15/2020', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (181, 9601.67, '10/21/2022', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (182, 89.67, '10/18/2021', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (183, 9919.62, '8/20/2022', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (184, 6163.33, '10/20/2021', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (185, 5357.12, '11/28/2021', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (186, 4453.41, '11/2/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (187, 8567.39, '7/3/2021', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (188, 62.66, '5/9/2022', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (189, 8761.32, '11/8/2022', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (190, 5074.74, '4/25/2021', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (191, 4983.47, '5/7/2020', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (192, 1551.07, '12/2/2020', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (193, 1673.53, '3/23/2020', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (194, 8801.75, '2/26/2021', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (195, 6765.09, '9/9/2020', 'bank transfer');
insert into payments (booking_id, total, payment_date, payment_type) values (196, 5529.67, '5/30/2020', 'credit card');
insert into payments (booking_id, total, payment_date, payment_type) values (197, 8146.56, '11/11/2021', 'PayPal');
insert into payments (booking_id, total, payment_date, payment_type) values (198, 5213.05, '11/6/2020', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (199, 7868.22, '6/5/2020', 'debit card');
insert into payments (booking_id, total, payment_date, payment_type) values (200, 7364.36, '7/2/2021', 'PayPal');
