--1 Select the author firstname and last name

SELECT au_fname AS first_name , au_lname AS last_name FROM authors
select concat(au_fname,' ', au_lname) as name from authors

--2 Sort the titles by the title name in descending order and print all teh details

SELECT * from titles order by title desc 

--3 Print the number of titles published by every author

select concat(a.au_fname,' ',a.au_lname) as author_name, count(t.title_id) as no_of_titles 
from authors a
inner join titleauthor ta on a.au_id = ta.au_id
inner join titles t on ta.title_id = t.title_id
group by concat(a.au_fname,' ',a.au_lname)
---
select count(ta.title_id) as title_id,concat(au_fname,' ',au_lname) as name from titleauthor ta 
inner join authors a on ta.au_id = a.au_id   
group by concat(au_fname,' ',au_lname)    

select au_id, count(title_id) as no_of_titles from titleauthor group by au_id

--4 print the author name and title name

select concat(a.au_fname,' ',a.au_lname) as author_name, t.title as title_name
from authors a 
inner join titleauthor ta on a.au_id = ta.au_id
inner join titles t on ta.title_id = t.title_id

--5 print the publisher name and the average advance for every publisher

select p.pub_name, avg(t.advance) as avg_advance from publishers p 
inner join titles t on p.pub_id = t.pub_id
group by p.pub_name

--6 print the publishername, author name, title name and the sale amount(qty*price)

select p.pub_name, concat(a.au_fname,' ',a.au_lname) as author_name, t.title, (s.qty*t.price) as sale from titles t 
inner join publishers p on t.pub_id = p.pub_id
inner join titleauthor ta on t.title_id = ta.title_id
inner join authors a on ta.au_id = a.au_id
inner join sales s on t.title_id = s.title_id

--7 print the price of all that titles that have name that ends with s

select price from titles where title like '%s'

--8 print the title names that contain 'and' in it

select title from titles where title like '%and%'

--9 print the employee name and the publisher name

select concat(e.fname,' ',e.lname) as employee_name, p.pub_name from employee e
inner join publishers p on e.pub_id = p.pub_id

--10 Print the publisher name and number of employees woking in it if the publisher has more than 2 employees

select p.pub_name, count(e.emp_id) as no_of_employee 
from publishers p inner join employee e 
on p.pub_id = e.pub_id
group by p.pub_name having count(e.emp_id) > 2 

--11 Print the author names who have published using teh publisher name 'Algodata Infosystems'

select concat(a.au_fname,' ',a.au_lname) as author_name 
from authors a 
inner join titleauthor ta on a.au_id = ta.au_id 
inner join titles t on ta.title_id = t.title_id
inner join publishers p on t.pub_id = p.pub_id 
where p.pub_name = 'Algodata Infosystems'

--12 Print the employees of the publisher 'Algodata Infosystems'

select concat(e.fname,' ',e.lname) employee_name
from employee e 
inner join publishers p 
on e.pub_id = p.pub_id
where p.pub_name = 'Algodata Infosystems' order by employee_name asc