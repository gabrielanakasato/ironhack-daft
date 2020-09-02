# Project 02 | Data Cleaning & Manipulation

## Description
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
4. Analyze gender and filter dataset
5. Analyze age and filter dataset
6. Analyze activity

## Premises
1. The incidents that occured before 1801 represents only 2.61% of the dataset. Therefore, the dataset was restricted to the ones that happened from 1801.
2. Less than 10% of the column 'Sex' did not have an valid option (M or F). Most of them (over 9%) were a missing value, the rest was a string stored something besides M or F and they were not considered in the analysis.
3. 45.91% of the column 'Age' was not an integer. These rows that contains non-integer values were considered during the gender and age analysis, but, for the final result, they were not considered.
4. The columns 'Age', after its values were converted into integers, was categorized into:

| AGE               | CATEGORY    |
| :---------------: | :---------: |
| < 13              | Child       |
| 13 - 17           | Teenager    |
| 18 - 35           | Young Adult |
| 36 - 65           | Adult       |
| > 65              | Elder       |
| Non-integer value | No category |

5. Before the analysis, the following hypothesis was established: Men, specially the youg adults, tend to take more risk than women.


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

This conclusion validates the initial hypothesis that men, specially young adults, tend to tkae more riks than women.

## Extra - Analysis through the years
This analysis was made with the **final clean version** of the dataset, which includes data for both male and female of all ages, and the years were categorized into centuries (19th, 20th and 21st). The table below shows tha number of incidents in each century.

| YEARS       | CENTURY |
| :---------: | :-----: |
| 1801 - 1900 | 19th    |
| 1901 - 2000 | 20th    |
| > 2000      | 21st    |

### Number of incidents registered

| CENTURY | NUMBER OF INCIDENTS |
| :-----: | :-----------------: |
| 19th    | 531                 |
| 20th    | 3,168               |
| 21st    | 2,124               |

We can notice that we are not even 1/4 of the 21st century and the number of shark incidents is getting closer to the number of incidents in the 20th century. One reason may be that thare is a probability not all incidents were registered in the last two centuries.

### Gender

| CENTURY | GENDER | PERCENTAGE (%) |
| :-----: | :----: | :------------: |
| 19th    | M      | 95.86          |
| 19th    | F      | 4.14           |
| 20th    | M      | 91.38          |
| 20th    | F      | 8.62           |
| 21th    | M      | 81.97          |
| 21th    | F      | 18.03          |

This result reflects each gender's behaviors in each century. Long time ago, women usually would just take care of the house and were not allowed to do many things.

### Activity
The result will be the top 3 activities that were involved in shark incidents in each century.

#### 19th Century
| ACTIVITY | PERCENTAGE (%) |
| :------: | :------------: |
| Swimming | 17.70          |
| Bathing  | 15.63          |
| Fishing  | 6.03           |

#### 20th Century
| ACTIVITY      | PERCENTAGE (%) |
| :-----------: | :------------: |
| Swimming      | 14.68          |
| Surfing       | 10.83          |
| Spearfishing  | 6.60           |

#### 21st Century
| ACTIVITY      | PERCENTAGE (%) |
| :-----------: | :------------: |
| Surfing       | 31.36          |
| Swimming      | 13.70          |
| Spearfishing  | 6.12           |

The result shows that for each century there was different acctivities and habits. For example, it was more common for people to bathe in the nature during the 19th century and the surfing just appeared in the 20th century.

## Learning Process
### Challenges
- Remember everything we leaned from day 1
- Not being able to see the dataset visually
- Not have enough information in just one dataset
- Think about how manipulate data in a cell scale
- Think how to deal with the column 'Age'
