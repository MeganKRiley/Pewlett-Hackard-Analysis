# Pewlett-Hackard-Analysis
## Overview
This analysis determines the amount of retiring employees per title, as well as identifying the employees who are eligible in a mentorship program to help Pewlett-Hackard preparing for the upcoming "silver tsunami" at their company. 

### Resources
pgAdmin4, departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv

### Results
    - The number of retiring employess is 90,398
    - The title with the highest number of retiring employees is Senior Engineer
    - The number of eligible employees for the mentorship program is 1,549
    - The number of retiring employees before removing duplicates caused by a single employee holding multiple titles over their career with Pewlett-Hackard was 133,776.  This means that almost half of the retiring employees held more than one title while with the company, presumably due to promotions. This is an important thing to note during this analysis because it tells us that a lot of the positions that will be opened due to retirement will be filled by an existing employee.
    
<img width="163" alt="retiring_titles count image" src="https://user-images.githubusercontent.com/90050622/140093385-2aa899fc-a9be-460c-94c0-93ec23e60a32.PNG"> <img width="273" alt="mentorship count image" src="https://user-images.githubusercontent.com/90050622/140093396-4b128ef2-6a04-43ec-9db1-4c240566c900.PNG">


### Summary
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
 - While not all retirements will happen at the exact same time, the total number of retiring employees is 90,398, meaning that about that many roles that will need to be filled.   

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
 - The number of mentor eligible employees is no where near the amount of roles that will need to be filled.  However, the majority of the employees retiring are in senior staff roles.  It is not likely that the majority of these roles will be filled with new employees.  It is more likely that current mid level employees will be promoted and new hires will take more entry level jobs.  Because of this I do think that the mentorship program could either utilize a trickle down teaching method, or one mentor would have the capacity to train numerous new employees, because their positions wouldn't be as demanding.  

 #### Aditional Feedback 
 - I would be interested in breaking down the retiring employees into age groups to get more precise timing for who would be leaving when.  Not everyone retires at the exact same age but 90,398 is a large number to digest.  If we could breakdown the three year birth_date range into three unique years we could get a more narrowed down estimate for how many will retire per year.  
 - I would also like to take a look at this data from a departmental standpoint as opposed to just by title.  One person, regardless of their title, in a department leaving when the department size is 1,000 people is much less significant than if that one person belonged to a department of 10.  To really give appropriate feedback on the mentorship program we would really need to understand where our retirees are coming from and how they'll impact certain areas of the business most.  
