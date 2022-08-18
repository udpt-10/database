drop database requestManager
create database requestManager
use requestManager
create table [employee] (
	[employee_id] int primary key,
)

create table [ot_request] (
	[ot_request_id] int identity primary key,
	[employee_id] int,
	[date] date,
	[hour] float,
	[reason] nvarchar(500),
	[mamager_id] int,
	[is_approved] bit,
	[approve_reason] nvarchar(500),
	[approve_date] date
)
alter table [ot_request] add CONSTRAINT  ot_request_ FOREIGN KEY ([employee_id]) REFERENCES [employee]([employee_id])
alter table [ot_request] add CONSTRAINT  approve_ot_ FOREIGN KEY ([mamager_id]) REFERENCES [employee]([employee_id])

create table [work_from_home_request] (
	[work_from_home_request_id] int identity primary key,
	[employee_id] int,
	[date] date,

) 

alter table [work_from_home_request] add CONSTRAINT  wfh_request_ FOREIGN KEY ([employee_id]) REFERENCES [employee]([employee_id])

create table [leave_request] (
	[leave_request_id] int identity primary key,
	[employee_id] int,
	[date] date,
	[hour] float,
	[reason] nvarchar(500)
)
alter table [leave_request] add CONSTRAINT  leave_request_ FOREIGN KEY ([employee_id]) REFERENCES [employee]([employee_id])

create table [approve_leave] (
	[approve_leave_id] int identity primary key,
	[ot_request_id] int,
	[mamager_id] int,
	[is_approved] bit,
	[reason] nvarchar(500),
	[date] date
)

alter table [approve_leave] add CONSTRAINT  approve_leave_ FOREIGN KEY ([mamager_id]) REFERENCES [employee]([employee_id])


create table [support_request] (
	[support_request_id] int identity primary key,
	[employee_id] int,
	[date] date,
	[department] nvarchar(500)
)

alter table [support_request] add CONSTRAINT  support_request_ FOREIGN KEY ([employee_id]) REFERENCES [employee]([employee_id])

create table [approve_support] (
	[approve_support_id] int identity primary key,
	[approver] int,
	[date] date,
	[is_approved] bit,
	[reason] nvarchar(500),
	[director_id] int,
	[money] money,
	[status] nvarchar(100),
	[describe] nvarchar(100)
)

alter table [approve_support] add CONSTRAINT  approve_support_manager_ FOREIGN KEY ([approver]) REFERENCES [employee]([employee_id])
alter table [approve_support] add CONSTRAINT  approve_support_director_ FOREIGN KEY ([director_id]) REFERENCES [employee]([employee_id])

create table [general_info] (
	[general_info_id] int identity primary key,
	[title] nvarchar(100),
	[describe] nvarchar(1000),
	[author] int,
	[date] date,
)
alter table [general_info] add CONSTRAINT  general FOREIGN KEY ([author]) REFERENCES [employee]([employee_id])