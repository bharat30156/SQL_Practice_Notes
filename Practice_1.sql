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










