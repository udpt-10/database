create table [employee] (
	[employee_id] int identity primary key,
	[employee_name] nvarchar(50),
	[date_of_birth] date,
	[sex] bit,
	[work_email] nvarchar(50),
	[phone] nvarchar(50),
	[persional_email] nvarchar(50),
	[position] nvarchar(50),
	[leaving_day_alance] tinyint,
	[user_name] nvarchar(50),
	[password] nvarchar(50),
)