
CREATE TABLE City2 (
    CityID INT PRIMARY KEY,
    CityName VARCHAR(50) UNIQUE,
    Pincode INT,
    Remarks VARCHAR(100)
);

CREATE TABLE Village (
    VillageID INT PRIMARY KEY,
    VillageName VARCHAR(50),
    CityID INT,
    FOREIGN KEY (CityID) REFERENCES City2(CityID)
);


INSERT INTO City2 (CityID, CityName, Pincode, Remarks) VALUES
(1, 'Rajkot', 360005, 'Good'),
(2, 'Surat', 335009, 'Good'),
(3, 'Baroda', 390001, 'Awesome'),
(4, 'Jamnagar', 361003, 'Smart'),
(5, 'Junagadh', 362229, 'Historic'),
(6, 'Morvi', 363641, 'Ceramic');

INSERT INTO Village (VillageID, VillageName, CityID) VALUES
(101, 'Raiya', 1),
(102, 'Madhapar', 1),
(103, 'Dodka', 3),
(104, 'Falla', 4),
(105, 'Bhesan', 5),
(106, 'Dhoraji', 5);

--Part – A 


--1. Display all the villages of Rajkot city.  
select village.VillageName 
from  city2 inner join Village
on city2.CityID = village.CityID
where CityName ='rajkot';

--2. Display city along with their villages & pin code. 
select city2.CityName ,city2.Pincode , Village.VillageName 
from  city2 inner join Village
on city2.CityID = village.CityID

--3. Display the city having more than one village. 
select city2.CityName 
from  city2 inner join Village
on city2.CityID = village.CityID
group by CityName
having count(VILLAGE.CITYID) >1

--4. Display the city having no village. 
select city2.CityName 
from  city2 FULL OUTER join Village
on city2.CityID = village.CityID
WHERE Village.VillageName IS NULL

--5. Count the total number of villages in each city. 
SELECT city2.cityname ,COUNT(CITY2.CITYID) 
from city2 full outer join village
on city2.CityID = village.CityID
group by city2.cityname

--Part – B 


--6. Display number of villages of Rajkot city.  
select count(city2.cityid)
from city2 full outer join village
on city2.CityID = village.CityID
where city2.cityname='rajkot'

--7. Display Rajkot city along with their villages & pin code. 
select city2.CityName ,city2.Pincode , Village.VillageName 
from  city2 full outer join Village
on city2.CityID = village.CityID
where city2.CityName = 'rajkot'

--8. Display villages of Rajkot & Junagadh city.  
select Village.VillageName ,city2.CityName
from  city2 full outer join Village
on city2.CityID = village.CityID
where city2.CityName = 'rajkot' and city2.CityName = 'junagadh';

--Part – C 


--9. Display number of villages of Surat city. 
select count(city2.cityid)
from city2 full outer join village
on city2.CityID = village.CityID
where city2.cityname='surat'

--10. Display city along with their villages & pin code whose Remarks is Good. 
select city2.CityName ,city2.Pincode , Village.VillageName 
from  city2 full outer join Village
on city2.CityID = village.CityID
where Remarks ='good'

--11. Display the city name of Falla village.
select city2.CityName
from city2 full outer join village
on city2.CityID = village.CityID
where village.VillageName='falla'