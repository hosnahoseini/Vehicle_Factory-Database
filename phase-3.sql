-- insert customers --
INSERT INTO `db_project`.`customer`
(`id`,
`first_name`,
`last_name`,
`address_province`,
`address_city`,
`address_street`,
`telephone`)
VALUES
('491681247591',
"Daniel",
"Leamon",
"Missouri",
"Ocean Springs",
"2408 Bienville Blvd",
"320-263-1158");

INSERT INTO `db_project`.`customer`
(`id`,
`first_name`,
`last_name`,
`address_province`,
`address_city`,
`address_street`,
`telephone`)
VALUES
("517454493676",
"Mildred ",
"Travis",
"Florida",
"Wilton Manors",
"2825 N Andrews Ave",
"541-704-2201");

INSERT INTO `db_project`.`customer`
(`id`,
`first_name`,
`last_name`,
`address_province`,
`address_city`,
`address_street`,
`telephone`)
VALUES
("538810508708",
"Lorena",
"Ferguson",
"Mississippi",
"Webb City",
"1310 S Madison St",
"818-904-7897");

INSERT INTO `db_project`.`customer`
(`id`,
`first_name`,
`last_name`,
`address_province`,
`address_city`,
`address_street`,
`telephone`)
VALUES
("555474050010",
"Clinton",
"Cervantes",
"West Virginia",
"Glendale",
"6100 N Green Bay Ave",
"502-937-3284");

INSERT INTO `db_project`.`customer`
(`id`,
`first_name`,
`last_name`,
`address_province`,
`address_city`,
`address_street`,
`telephone`)
VALUES
("541497133514",
"Marian",
"Hicks",
"California",
"Folsom",
"Bundrick Dr",
"940-341-1380");

INSERT INTO `db_project`.`customer`
(`id`,
`first_name`,
`last_name`,
`address_province`,
`address_city`,
`address_street`,
`telephone`)
VALUES
("556836374896",
"James",
"Belin",
"Texas",
"Arlington",
"4801 S Cooper St",
"805-919-8466");

INSERT INTO `db_project`.`customer`
(`id`,
`first_name`,
`last_name`,
`address_province`,
`address_city`,
`address_street`,
`telephone`)
VALUES
("510728897735",
"Alice",
"Jones",
"Maryland",
"Edgewood",
"2809 Pulaski Hwy",
"202-645-7106");

INSERT INTO `db_project`.`customer`
(`id`,
`first_name`,
`last_name`,
`address_province`,
`address_city`,
`address_street`,
`telephone`)
VALUES
("492991426361",
"Heather",
"Cribbs",
"North Dakota",
"Saratoga Springs",
"461 Broadway",
"612-366-3775");

INSERT INTO `db_project`.`customer`
(`id`,
`first_name`,
`last_name`,
`address_province`,
`address_city`,
`address_street`,
`telephone`)
VALUES
("453285987943",
"Shannon",
"Hernandez",
"Indiana",
"Elmwood Parks",
"7632 W North Ave",
"917-716-5506");

INSERT INTO `db_project`.`customer`
(`id`,
`first_name`,
`last_name`,
`address_province`,
`address_city`,
`address_street`,
`telephone`)
VALUES
("448597104742",
"Florence",
"Kendall",
"California",
"San Francisco",
"1239 9th Ave",
"561-313-4415");

-- insert brands --
INSERT INTO `db_project`.`brand`
(`name`)
VALUES
('BMW');

INSERT INTO `db_project`.`brand`
(`name`)
VALUES
('Benz');

-- insert models --
INSERT INTO `db_project`.`model`
(`name`,
`brand`)
VALUES
('X6',
'BMW');

INSERT INTO `db_project`.`model`
(`name`,
`brand`)
VALUES
('Z4',
'BMW');

INSERT INTO `db_project`.`model`
(`name`,
`brand`)
VALUES
('CLA',
'Benz');

INSERT INTO `db_project`.`model`
(`name`,
`brand`)
VALUES
('GLE',
'Benz');

-- insert color --
INSERT INTO `db_project`.`color`
(`name`,
`rgb`)
VALUES
('black',
'000000');

INSERT INTO `db_project`.`color`
(`name`,
`rgb`)
VALUES
('white',
'FFFFFF');

-- inset vehical --

-- 1
INSERT INTO `db_project`.`vehical`
(`VIN`,
`brand`,
`model`,
`color`,
`gear_type`)
VALUES
("69451886",
"BMW",
"Z4",
"black",
"manual");

-- 2
INSERT INTO `db_project`.`vehical`
(`VIN`,
`brand`,
`model`,
`color`,
`gear_type`)
VALUES
("14838668",
"BMW",
"Z4",
"white",
"manual");

-- 3
INSERT INTO `db_project`.`vehical`
(`VIN`,
`brand`,
`model`,
`color`,
`gear_type`)
VALUES
("52683694",
"BMW",
"Z4",
"white",
"automat");

-- 4
INSERT INTO `db_project`.`vehical`
(`VIN`,
`brand`,
`model`,
`color`,
`gear_type`)
VALUES
("56281340",
"BMW",
"X6",
"white",
"automat");

-- 5
INSERT INTO `db_project`.`vehical`
(`VIN`,
`brand`,
`model`,
`color`,
`gear_type`)
VALUES
("98743106",
"BMW",
"X6",
"black",
"manual");

-- 6
INSERT INTO `db_project`.`vehical`
(`VIN`,
`brand`,
`model`,
`color`,
`gear_type`)
VALUES
("44326109",
"BMW",
"X6",
"black",
"manual");

-- 7
INSERT INTO `db_project`.`vehical`
(`VIN`,
`brand`,
`model`,
`color`,
`gear_type`)
VALUES
("66112288",
"Benz",
"CLA",
"black",
"manual");

-- 8
INSERT INTO `db_project`.`vehical`
(`VIN`,
`brand`,
`model`,
`color`,
`gear_type`)
VALUES
("11100034",
"Benz",
"CLA",
"black",
"automat");

-- 9
INSERT INTO `db_project`.`vehical`
(`VIN`,
`brand`,
`model`,
`color`,
`gear_type`)
VALUES
("97513462",
"Benz",
"CLA",
"white",
"automat");

-- 10
INSERT INTO `db_project`.`vehical`
(`VIN`,
`brand`,
`model`,
`color`,
`gear_type`)
VALUES
("66553271",
"Benz",
"GLE",
"white",
"manual");

-- 11
INSERT INTO `db_project`.`vehical`
(`VIN`,
`brand`,
`model`,
`color`,
`gear_type`)
VALUES
("48204611",
"Benz",
"GLE",
"white",
"automat");

-- 12
INSERT INTO `db_project`.`vehical`
(`VIN`,
`brand`,
`model`,
`color`,
`gear_type`)
VALUES
("22376717",
"Benz",
"GLE",
"black",
"automat");

-- insert suppliers --
INSERT INTO `db_project`.`supplier`
(`id`,
`name`,
`start_date`,
`end_date`,
`manager_name`,
`address`)
VALUES
(1,
"McAnally",
"2021-5-21",
"2022-6-13",
"Randy B. Wright",
"32,Fudu Park40 Lentor Terrace,Singapore789033");

INSERT INTO `db_project`.`supplier`
(`id`,
`name`,
`start_date`,
`end_date`,
`manager_name`,
`address`)
VALUES
(2,
"King",
"2020-11-9",
"2025-3-19",
"Joseph L. Larson",
"5,Charlton Court33B Surin Avenue,Singapore535761");

INSERT INTO `db_project`.`supplier`
(`id`,
`name`,
`start_date`,
`end_date`,
`manager_name`,
`address`)
VALUES
(3,
"Robinson",
"2015-10-23",
"2024-8-4",
"Tiffany J. Dillard",
"12,Watten Estate36 Watten Drive,Singapore287817");

INSERT INTO `db_project`.`supplier`
(`id`,
`name`,
`start_date`,
`end_date`,
`manager_name`,
`address`)
VALUES
(4,
"Robinson",
"2019-10-2",
"2027-1-1",
"Barbara E. Higgins",
"12,Watten Estate36 Watten Drive,Singapore287817");

-- insert piece --
-- 1
INSERT INTO `db_project`.`piece`
(`id`,
`model`,
`name`,
`price`,
`stock`,
`supplier_id`)
VALUES
(1,
'X6',
'tier',
153.5,
5,
1);

-- 2
INSERT INTO `db_project`.`piece`
(`id`,
`model`,
`name`,
`price`,
`stock`,
`supplier_id`)
VALUES
(2,
'CLA',
'tier',
270,
40,
1);

-- 3
INSERT INTO `db_project`.`piece`
(`id`,
`model`,
`name`,
`price`,
`stock`,
`supplier_id`)
VALUES
(3,
'CLA',
'filter',
26.75,
31,
2);

-- 3
INSERT INTO `db_project`.`piece`
(`id`,
`model`,
`name`,
`price`,
`stock`,
`supplier_id`)
VALUES
(4,
'Z4',
'belt',
75,
14,
2);

-- 5
INSERT INTO `db_project`.`piece`
(`id`,
`model`,
`name`,
`price`,
`stock`,
`supplier_id`)
VALUES
(5,
'GLE',
'tier',
75.8,
48,
3);

-- 6
INSERT INTO `db_project`.`piece`
(`id`,
`model`,
`name`,
`price`,
`stock`,
`supplier_id`)
VALUES
(6,
'GLE',
'shock absorber',
166,
6,
3);

-- 7
INSERT INTO `db_project`.`piece`
(`id`,
`model`,
`name`,
`price`,
`stock`,
`supplier_id`)
VALUES
(7,
'X6',
'shock absorber',
169,
98,
4);

-- 8
INSERT INTO `db_project`.`piece`
(`id`,
`model`,
`name`,
`price`,
`stock`,
`supplier_id`)
VALUES
(8,
'CLA',
'belt',
54,
7,
4);

-- insert orders --
INSERT INTO `db_project`.`vehical_order`
(`id`,
`customer`,
`count`,
`vehical_id`)
VALUES
(1,
"448597104742",
1,
"66112288");

INSERT INTO `db_project`.`vehical_order`
(`id`,
`customer`,
`count`,
`vehical_id`)
VALUES
(2,
"517454493676",
2,
"69451886");

INSERT INTO `db_project`.`piece_order`
(`id`,
`customer`,
`count`,
`piece_id`)
VALUES
(1,
"555474050010",
5,
6);
