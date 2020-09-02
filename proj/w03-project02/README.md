# Project 02 | Data Cleaning & Manipulation

This is the result of the second project for the Ironhack Data Analytics Bootcamp, using all knowledge acquired up to Week 3 - Day 1.

## Objective
The objective of this projects was to asnwer a problem statement, practicing data cleaning and manipulation.

### Problem Statement
**_What are the most commom characteristics of people involved in shark incidents in the history?_**

## Project Status
:black_square_button: In progress 

## Data Source
The dataset was obtained from the [Global Shark Attack File](http://www.sharkattackfile.net/incidentlog.htm).


## Resources
- Python
- Jupyter Notbook
- Pandas
- Numpy

## Process
1. Obtaing dataset
2. Cleaning the dataset
3. Check information and data cleaning
   - Age
   - Year
   - Gender
4. Analyze gender
5. Analyze
6. Analyze activity

## Premises
1. The incidents that occured before 1801 represents only 2.61% of the dataset. Therefore, the dataset was restricted to the ones that happened from 1801.
2. Less than 10% of the column 'Sex' did not have an valid option (M or F). They were or a missing value or a string stored something besides M or F and they were not considered in the analysis.
3. 45.91% of the column 'Age' was not an integer. These rows containig non-integer values were considered during the gender and age analysis, but, for the final result, they were not considered.


## Results
### Gender
As shown in the table below, the **males** are the most involved in shark incidents.

**MALE** | FEMALE
---------|--------
**_88.36%_** | 11.64%

## Age
From the **male population**, the highest percentage is the category that the value contained a non-integer.

CATEGORY | PERCENTAGE (%)
---------|----------------
Child | 4.26
Teenager | 10.44
Young Adult | 29.43
Adult | 13.66
Elder | 0.89
No category | 41.32

But, if we analyze only the ones that have a category, the result for the **male population** is:

CATEGORY | PERCENTAGE (%)
---------|----------------
Child | 7.25
Teenager | 17.79
**Young Adult** | **50.15**
Adult | 23.29
Elder | 1.52

## Activity
From the young adult male population, the acativity that was involved in most incidents is the **surfing**, as shown in the table below with the top 5.

ACTIVITY | PERCENTAGE (%)
---------|----------------
**Surfing** | **27.54**
Swimming | 12.35
Spearfishing | 10.11
Fishing | 3.57
Diving | 1.72

## Conclusion
_**Young adult males** are the most involved in shark incidents while **surfing**_.


## Extra


## Learning Process
### Challenges

