Create Table cc_detail(
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);

CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);

--Copying data from csv file
Copy cc_detail 
from 'C:\LearnBay 18th Aug2023\Project\Credit Card Financial Dataset\credit_card.csv' 
Delimiter ','
CSV Header

Copy cust_detail 
from 'C:\LearnBay 18th Aug2023\Project\Credit Card Financial Dataset\customer.csv' 
Delimiter ','
CSV Header

--Copying 53rd Week Data in Dashboard

Copy cc_detail
from 'C:\LearnBay 18th Aug2023\Project\Credit Card Financial Dataset\cc_add.csv'
Delimiter ','
CSV Header

copy cust_detail
from 'C:\LearnBay 18th Aug2023\Project\Credit Card Financial Dataset\cust_add.csv'
Delimiter','
CSV Header



