--questions:
--select * from posts p
--where p.Tags like ##tag:string?%youtube-api%##

--answers:
--select * from posts p
--where p.ParentId in (select Id from posts p1 where p1.Tags like ##tag:string?%youtube-api%##)

--comments for questions:
--select * from comments c
--where c.PostId in (
--select Id from posts p1
--where p1.Tags like ##tag:string?%youtube-api%##)

--comments for answers:
--select * from comments c
--where c.PostId in (
--select Id from posts p2
--where p2.ParentId in (
--select Id from posts p1 where p1.Tags like ##tag:string?%youtube-api%##))

--users for questions:
--select * from users u
--where u.Id in (
--select OwnerUserId from posts p
--where p.Tags like ##tag:string?%youtube-api%##)

--users for answers:
--select * from users u
--where u.Id in (
--select OwnerUserId from posts p2
--where p2.ParentId in (
--select Id from posts p1 where p1.Tags like ##tag:string?%youtube-api%##))

--users for comments of questions:
--select * from users u
--where u.Id in (
--select UserId from comments c
--where c.PostId in (
--select Id from posts p where p.Tags like ##tag:string?%youtube-api%##))

--users for comments of answers:
select * from users u
where u.Id in (
select UserId from comments c
where c.PostId in (
select Id from posts p2
where p2.ParentId in (
select Id from posts p1 where p1.Tags like ##tag:string?%youtube-api%##)))
