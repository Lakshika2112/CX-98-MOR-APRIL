Create database CaseStudy

Create table Event (EventID int, Duration int, StatusCode varchar(max), ReasonCode varchar(max))
Create table Status (StatusCode varchar(max), Name varchar(max))
Create table ReadyReason (ReasonCode varchar(max), Name varchar(max))
Create table DelayReason (ReasonCode varchar(max), Name varchar(max))
Create table SpareReason (ReasonCode varchar(max), Name varchar(max))
Create table DownReason (ReasonCode varchar(max), Name varchar(max))

Select * from Event
Select * from Status
Select * from ReadyReason
Select * from DelayReason
Select * from SpareReason
Select * from DownReason

Select Event.EventID, Event.Duration, Event.StatusCode, Event.ReasonCode, Status.Name as StatusName from Event inner join Status
on Event.StatusCode=Status.StatusCode

Select 'R', ReasonCode, Name from ReadyReason
Union
Select 'D1', ReasonCode, Name from DelayReason
Union
Select 'S', ReasonCode, Name from SpareReason
Union
Select 'D2', ReasonCode, Name from DownReason

SELECT EventID, Duration, Status.Name as [StatusName], SR.Name as [ReasonName]
FROM Event INNER JOIN Status on Event.StatusCode = Status.StatusCode
inner join
(SELECT 'R' as StatusCode, 'Ready' as StatusName, ReasonCode, Name FROM ReadyReason
UNION 
SELECT 'D1','Delay', ReasonCode, Name FROM DelayReason
UNION 
SELECT 'S','Spare', ReasonCode, Name FROM SpareReason
UNION
SELECT 'D2','Down', ReasonCode, Name FROM DownReason)
SR ON Event.StatusCode = SR.StatusCode AND Event.ReasonCode = SR.ReasonCode



