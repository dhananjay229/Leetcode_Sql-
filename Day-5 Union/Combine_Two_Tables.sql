# Write your MySQL query statement below

Select P.firstName, P.lastName, A.city, A.state From Person P, Address A
where P.personId=A.PersonId
Union
Select P.firstName, P.lastName,null, null From Person P
where p.personId not in (Select personId from Address)
