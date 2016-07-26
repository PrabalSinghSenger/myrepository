

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updateMonthlyLeave`(
 OUT total float, IN userId int)
BEGIN
DECLARE lastremainDays float DEFAULT 0.0;
DECLARE newRemainDays float DEFAULT 1.5;
select concat('the value lastremainDays=', lastremainDays);
select concat('the value newRemainDays =', newRemainDays);

 SELECT HolidaysRemained  INTO lastremainDays
 FROM prg_user_master WHERE USER_ID = userId;
 set newRemainDays:=lastremainDays+newRemainDays;
 
select concat('tlastremainDays =', lastremainDays);
 set total:=newRemainDays;
 select concat('total =', total);
 update prg_user_master set HolidaysRemained=newRemainDays WHERE USER_ID = userId;
 
END$$
DELIMITER ;




