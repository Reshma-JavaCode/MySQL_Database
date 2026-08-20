-- date fun()

select curdate(); -- 2026-08-01

select curtime(); -- 11:55:42

select now(); -- 2026-08-01 11:55:55
-- Reason: NOW() is evaluated only once when the statement starts.
SELECT NOW(), SLEEP(5), NOW(); -- 2026-08-01 11:58:47	0	2026-08-01 11:58:47

select current_timestamp(); -- 2026-08-01 11:56:52
SELECT CURRENT_TIMESTAMP(), SLEEP(5), CURRENT_TIMESTAMP(); -- 2026-08-01 11:59:45	0	2026-08-01 11:59:45
-- NOW() = CURRENT_TIMESTAMP()

-- SYSDATE() returns the actual system time whenever it is called.
select sysdate();-- 2026-08-01 11:57:17
SELECT SYSDATE(), SLEEP(5), SYSDATE(); -- 2026-08-01 12:00:56	0	2026-08-01 12:01:01
-- ----------------------------------------

SELECT DAY('2026-07-31');
SELECT month('2026-07-31');
SELECT year('2026-07-31');

SELECT dayname('2026-07-31');
SELECT monthname('2026-07-31');
SELECT dayofweek('2026-07-31');
SELECT DAYofyear('2026-07-31');
SELECT last_DAY('2026-07-06'); -- 2026-07-31
SELECT last_DAY('2026-02-06'); -- 2026-02-28
SELECT last_DAY('2020-02-06'); -- 2020-02-29
-- --------------------------------------------
use batch72;
select date_add('2020-02-29',interval 7 day); -- 2020-03-07
select date_add('2020-03-07',interval 1 month); -- 2020-04-07
select date_add('2020-03-31',interval 1 month); -- 2020-04-30

select date_sub('2020-04-01',interval 10 day); -- 2020-03-22
select date_sub('2020-04-20',interval 1 month); -- 2020-03-20

SELECT DATEDIFF('2026-08-10', '2026-07-31'); -- 10
SELECT TIMESTAMPDIFF(YEAR, '2000-05-10', CURDATE()); -- 26
SELECT TIMESTAMPDIFF(MONTH, '2026-01-01', CURDATE()); -- 7

SELECT TIMESTAMPDIFF(DAY, '2026-07-01', CURDATE()); -- 31
SELECT TIMESTAMPDIFF(DAY, '2026-06-30', CURDATE()); -- 32

-- Extracts a specific part of a date.
SELECT EXTRACT(YEAR FROM '2026-07-31');