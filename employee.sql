create table [employee] (
	[employee_id] int identity primary key,
	[employee_name] nvarchar(50),
	[user_name] nvarchar(50),
	[password] nvarchar(500),
	[position] nvarchar(50),
	[leaving_day_balance] tinyint,
	[address] nvarchar(100),
	[phone] nvarchar(50),
	[email] nvarchar(50),
	[date_of_birth] date,
	[sex] bit,
	[information_summary] nvarchar(500),
	[director] int,
	[manager] int,
)

insert into employee ([employee_name], [user_name], [password], [position], [leaving_day_balance], [address], [phone],[email],[date_of_birth], [sex], [information_summary], [director],[manager]) 
values('Pham Anh Tien', 'PATIen', '123456', 'employee', '12', 'Nguyen Xien Long Thach My Quan 9 HCM', '123123123', 'tbKhanh@gmail.com','12/31/2000','0','','1','1')

alter table [employee] add CONSTRAINT  manager_employee FOREIGN KEY ([manager]) REFERENCES [employee]([employee_id])
alter table [employee] add CONSTRAINT  director_employee FOREIGN KEY ([director]) REFERENCES [employee]([employee_id])

insert into employee ([employee_name], [user_name], [password], [position], [leaving_day_balance], [address], [phone],[email],[date_of_birth], [sex], [information_summary], [director],[manager]) 
values('Tran Bao Khanh', 'TBKhanh', '123456', 'employee', '12', 'Nguyen Xien Long Thach My Quan 9 HCM', '123123123', 'tbKhanh@gmail.com','12/31/2000','0','','1','1')