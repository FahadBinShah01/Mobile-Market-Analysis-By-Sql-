create schema mobiled ;
use mobiled;
				-- Q1. Check Mobile features and Price list--
select * from mobile ;
				-- Q2.Find out Price of  5 most expensive phones-- 
                
select * from mobile 
order by Price desc
limit 5 ; 
			
            -- Q3.Find out the Price 5 most cheapest phones-- 
select * from mobile 
order by Price asc
limit 5 ; 
					
                    
                    -- Q4.List of top Samsung phones Price and All features--
select *from mobile 
where Brands='Samsung'  
order by price desc  
limit 5;

			-- Q5. Must have Android Phone list then Top 5 High Price Android phones--
select *  from mobile 
where Operating_System_Type ="Android"
order by Price desc 
limit 5 ;
		-- Q6. Must have Android Phone list then Top 5 Lower Price Android phones--
select *  from mobile 
where Operating_System_Type ="Android"
order by Price asc 
limit 5 ;
			-- Q7. Must have IOS Phone list then Top 5 High Price IOS phones--
select *  from mobile 
where Operating_System_Type ="IOS"
order by Price desc 
limit 5 ;
			-- Q8.Must have IOS Phone list then Top 5 Lower Price IOS phones--
select *  from mobile 
where Operating_System_Type ="IOS"
order by Price asc 
limit 5 ;
			-- Q9. Which phone support 5G and Also Top 5 phone with 5G support 
select *  from mobile 
where 5G_Availability ="Yes"
order by Price desc 
limit 5 ;

  --      Q10.Total price of all mobile is to be found with Brand Name --
select Brands , sum(Price) 'Total Price' from mobile 
group by Brands ;
