-- My sql path in macbook to open in terminal [/usr/local/mysql/bin/mysql -u root - p]  ## -u denotes to user -p dentoes to password 
-- we can change the Port nnumber and host name as well [-u root --port 3307 -p] & [-u root --host abc -p]

-- Basic SQL commands

SHOW DATABASES;   -- To Display all DATABASE
CREATE DATABASE [db_name]; -- To CREATE New DATABASE
DROP DATABASE [db_name]; -- To delete the DATABASE
USE DATABASE [db_name]; --TO USE Specific DATABASE

-- Table Functions / Commands
CREATE Table [table_name]([col1] col1Type(size) extra, etc...);
--eg //int only can contain 11 size // space not allowed while definig the column name 
CREATE Table students_2(Id int(9)primary key, Name varchar(50)not null, Roll_No int(9)not null, City varchar(500));
-- Drop table // delete table
DROP Table [table_name];
-- To describe/see the table columns informtaion
DESC [table_name];
-- To update the table structure // "add" more columns or "Drop" delete columns 
ALTER table [table_name] add phone int(9)not null;
ALTER table [table_name] drop Column [column_name];
--To modify the table "Modify" command
ALTER table [table_name] Modify [column_name] [DATATYPE][SIZE][EXTRA];
--To change the column name "RENAME Column" Available from the MySQL 8
ALTER table [table_name] RENAME Column [old_column_name] TO [new_column_name];

--Inserting data into table
INSERT INTO [table_name]([column_name]) VALUES ([Data_of_column]);
--2nd way
INSERT INTO VALUES([Data_of_column]);
--3rd way Inserting multiple values 
INSERT INTO [table_name]([column_name]) VALUES (),(),();

--UPDATE command //ID is important to uniqly indetify
UPDATE [table_name] SET [column_name] = [new_value] WHERE [column_name] = [value];
--To select mutiple columns 
UPDATE [table_name] SET [column_name] = [new_value], [] = [] WHERE [column_name] = [value];

--T0 Delete the whole table
DELETE FROM [table_name];
--TO Delete specific row from the table
DELETE FROM [table_name] where [column_name] = [value];

--ALIAS in SQL // It is aminly used in the joins to select specific columns by giving
--them temporaray name we can assign the temporary name to column using AS same for the table as well;
Select [column_name] AS [new_column_name], [][] from [table_name];
-- 2nd way 
Select [column_name] [new_column_name], [][] from [table_name] [temporaray_table_name];
--3rd way
select [temporaray_table_name].[column_name], [][] from [table_name][temporaray_table_name];


-- Select stament and restrictions on table using specific functions to get the data
-- WHERE, AND, OR, NOT
Select [column_name],[column_name] from [table_name] where [column_name] = [value];
-- return values if both condition are true  // we can use and 3 times
Select [column_name],[column_name] from [table_name] where [column_name] = [value] AND [column_name] = [value];
-- return all value if any of the conditions true // same 3 times
Select [column_name],[column_name] from [table_name] where [column_name] = [value] OR [column_name] = [value];
-- return all values excet the condition which should not be ture // same 3 times
Select [column_name],[column_name] from [table_name] where NOT [column_name] = [value];

--Orderby, Limit, Offset
--orderby
Select [column_name], [column_name] FROM [table_name] ORDER BY [column_name] asc/desc,[column_name] asc/desc;

--limit
Select [column_name],[column_name] FROM [table_name] Limit [any_number];

--offset // means how many row I want to leave // Limit how many rows I want
select [column_name], [column_name] from [table_name] LIMIT [any_number] offset [any_number];

--Aggregate functions
--AVG,SUM,COUNT

--count
Select COUNT([column_name]) from table_name where [column_name] = [value];

--Sum
Select SUM([column_name]) from table_name where [column_name] = [value];

--Average
Select AVERAGE([column_name]) from table_name where [column_name] = [value];

--String Functions in SQL 
-- we can create string using 2 ways with single '' quotation and double " " quotation
-- Length function / helps to get the length of the String
Select LENGTH([value]);
Select LENGTH([column_name]) FROM table_name where [column_name] = [value];
-- Also we can use alias as well.
Select LENGTH([column_name]) FROM table_name [other_condition like limit, offset];

-- Concat function / combine two strings
Select CONCAT([value], [value]);
Select CONCAT([column_name], [column_name]) FROM table_name where [column_name] = [value];
-- Also we can use alias as well.
Select CONCAT([column_name], [column_name]) FROM table_name [other_condition like limit, offset];

-- LCASE to make the string in lower case
Select LCASE([value]);
Select LCASE([column_name]) FROM table_name where [column_name] = [value];
-- Also we can use alias as well.
Select LCASE([column_name]) FROM table_name [other_condition like limit, offset]; 

--UCASE to make the string in upper case
Select UCASE([value]);
Select UCASE([column_name]) FROM table_name where [column_name] = [value];
-- Also we can use alias as well.
Select UCASE([column_name]) FROM table_name [other_condition like limit, offset]; 

--SUBSTRING(str, length1, length2) index start from 1
Select SUBSTRING([value], Length1, Length2);
Select SUBSTRING([column_name], Length1, Length2) FROM table_name where [column_name] = [value];
-- Also we can use alias as well.
Select SUBSTRING([column_name], Length1, Length2) FROM table_name [other_condition like limit, offset]; 
-- Bonus Question by me /get the any column last entry with string value, that column have 
-- only last 2 letters in the caps
select concat(substring(first_name, 1, LENGTH(first_name) - 2), UCASE(substring(first_name, -2))) as name from employee order by first_name desc limit 1 offset 2;


-- Trim function / removes the spaces from the front and back of the string
Select Trim("     Hello");
Select Trim([column_name]) FROM table_name where [column_name] = [value];
-- Also we can use alias as well.
Select Trim([column_name]) FROM table_name [other_condition like limit, offset]; 

-- Reverse Function / reverse the string
Select Reverse("Hello");
Select Reverse([column_name]) FROM table_name where [column_name] = [value];
-- Also we can use alias as well.
Select Reverse([column_name]) FROM table_name [other_condition like limit, offset]; 

-- Compare 2 Strings
Select STRCMP("Hello", "Hello");
-- return values 
-- if str1 = str2, this function return 0
-- if str1 < str2, this function return -1
-- if str1 > str2, this function return 1


-- Other important functions

-- CURDATE / get the current date -- format YYYY-MM--DD
Select CURDATE(); 

-- CURTIME / get the current time -- format HH:MM:SS
Select CURTIME();

-- NOW() get the current date with current time -- format YYYT-MM-DD HH:MM:SS
Select NOW();

-- We can get only current year as well or day, month, I can own date as well " "
Select YEAR(CURDATE());
Select MONTH(CURDATE());
Select DAY(CURDATE());

-- We can get only current HH as well or MM, SS // I can pass own time as in " "
Select HOUR(CURTIME());
Select Minute(CURTIME());
Select SECOND(CURTIME());

-- if is condition we need to use ,
Select if(4<5, "YES","NO");
Select if([column_name], "YES", "NO") FROM table_name where [column_name] = [value];
-- Also we can use alias as well.
Select If([column_name], "YES", "NO") FROM table_name [other_condition like limit, offset]; 


-- IFNULL return the first value if it is not null otherwise return the second value
Select IFNULL(NULL, "HELLO");
-- anoher case
Select IFNULL("BHARAT", "Hello"); -- It will return Bharat  

-- DATABASE() / Return the current database
Select DATABASE();
-- VERSION() / Return the version of my sql server 
Select VERSION();
-- USER / return the user of the mysql
Select USER();

-- Math Function need to add by me https://www.w3schools.com/sql/sql_ref_sqlserver.asp


-- IN Operator / alternative of OR operator, to get multiple values to save the code line
Select * from table_name where [column_name] IN ([values]);

-- ** Like operator / can be use only with where
-- when we want to search the patern
-- eg name starting with letter a, ending with specific letter 
-- it can be whole word as well 
-- wildcards caharcter % -> Zero character, 1 character, more than onechar
-- _  -> only represent 1 charcter

Select * from [table_name] where [column_name] like "a%";
-- to see the if value is ending with specific letter
Select * from [table_name] where [column_name] like "%d";

-- _ we can use this if we want to the data after 2,3... more character
Select * from [table_name] where [column_name] like '__a%';
Select * from [table_name] where [column_name] like '_a%';

-- if we do not know what is in the front and at the back 
-- then we can use percentage at both side
select * from [table_name] where [column_name] like '%abc%';


-- Connecting the tables and performing joins
-- primary key -> unique & can not be null/ we can use more operation as well like AUTO_INCREMENT, DEFAULT, UNIQUE










