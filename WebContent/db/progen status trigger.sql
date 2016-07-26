drop trigger createBackupOfDailyTaskMaster;
delimiter #

create trigger  createBackupOfDailyTaskMaster after insert on DailyTaskMaster
for each row
begin
  insert into DailyTaskMasterBckup select * from DailyTaskMaster;
end#

