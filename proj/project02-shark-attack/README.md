![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Project 02 | Data Cleaning & Manipulation

## Description
This is the result of the second project for the Ironhack Data Analytics Bootcamp, using all knowledge acquired up to Week 3 - Day 1.

## Objective
The objective of this project was to answer a problem statement, practicing data cleaning and manipulation.

### Problem Statement
**_What are the most common characteristics of people involved in shark incidents in the history?_**

## Project Status
:white_check_mark: Complete 

## Resources
- Python
- Jupyter Notbook
- Pandas
- Numpy

## Data Source
The dataset was obtained from the [Global Shark Attack File](http://www.sharkattackfile.net/incidentlog.htm).

## Process
1. Obtain dataset
2. Clean the dataset
3. Check information and data cleaning
   + Gender
   - Age
   - Year
4. Analyze gender and filter dataset
5. Analyze age and filter dataset
6. Analyze activity

## Premises
1. In the column `Sex`, 0.08% of the dataset did not have an valid option (M or F) and these rows were removed. Besides, 8.72% of this column was a missing value. They were maintained in the dataframe until the analysis required to not consider them (when the dataset was filtered for the first time).
2. In the column `Age`, after the first removal of data, 0.37% of the values contained the character `&`, meaning that there was more than one age registered. These cases were not considered.
3. Still in the column `Age`, after the second removal of data, 0.25% of the values were invalid ages, which means there were non-integers values, and they were also removed.
4. Besides these two cases, the column `Age` presented 44.44% of its values as `NaN`. They were maintained in the dataframe until the analysis required to not consider them (when the dataset was filtered for the second time).
5. The column `Age`was categorized into:

| AGE               | CATEGORY    |
| :---------------: | :---------: |
| < 13              | Child       |
| 13 - 17           | Teenager    |
| 18 - 35           | Young Adult |
| 36 - 65           | Adult       |
| > 65              | Elder       |
| Missing values    | No category |

6. In the column `Year` after the third removadl of data, 0.03% of the dataset happened before the 1801. Since the idea was to categorize the years to centyries, these years before 1801 were removed.
7. After all the data clenaing and not taking the rows with only `NaN` values, only 0.03% of the dataset was removed.
8. Before the analysis, the following hypothesis was established: Men, specially the youg adults, tend to take more risk than women. Therefore, the characteristics for gender and age expected were _male_ and _young adults_.


## Results
### Gender
As shown in the table below, the **males** are the most involved in shark incidents.

| GENDER | PERCENTAGE (%) |
| :----: | :------------: |
| **M**  | **80.68**      |
| F      | 10.59          |
| NaN    | 8.73           |

## Age
From the **male population**, the highest percentage is the category that the value contained a non-integer.

CATEGORY | PERCENTAGE (%)
---------|----------------
Child |3.16
Teenager | 12.07
Young Adult | 29.92
Adult | 13.95
Elder | 0.98
No category | 39.92

But, if we analyze only the ones that have a category, the result for the **male population** is:

CATEGORY | PERCENTAGE (%)
---------|----------------
Child | 5.25
Teenager | 20.09
**Young Adult** | **49.80**
Adult | 23.22
Elder | 1.63

## Activity
From the **young adult male population**, the acativity that was involved the most in incidents is the **surfing**, as shown in the table below with the top 5.

| ACTIVITY     | PERCENTAGE (%) |
| :----------: | :------------: |
| **Surfing**  | **27.70**      |
| Swimming     | 13.56          |
| Spearfishing | 10.11          |
| Fishing      | 3.57           |
| Diving       | 1.72           |

## Conclusion

The most common characteristic of people involved in shark incidents in the history are:

- **Male**
- **Young adult**
- **Surfing**

This conclusion validates the initial hypothesis that men, specially young adults, tend to take more riks than women.

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
| 19th    | 580                 |
| 20th    | 3,538               |
| 21st    | 2,207               |

We can notice that we are not even 1/4 of the 21st century and the number of shark incidents is getting closer to the number of incidents in the 20th century. One reason may be that there is a probability not all incidents were registered in the last two centuries.

### Gender

| CENTURY | GENDER | PERCENTAGE (%) |
| :-----: | :----: | :------------: |
| 19th    | M      | 87.41          |
| 19th    | F      | 8.79           |
| 19th    | NaN    | 3.79           |
| 20th    | M      | 80.98          |
| 20th    | F      | 7.63           |
| 20th    | NaN    | 11.39          |
| 21th    | M      | 78.43          |
| 21th    | F      | 17.13          |
| 21th    | NaN    | 4.44           |

This result reflects each gender's behaviors in each century. Long time ago, women usually would just take care of the house and were not allowed to do many things.

### Activity
The result will be the _top 3_ activities that were involved in shark incidents in each century.

#### 19th Century
| ACTIVITY | PERCENTAGE (%) |
| :------: | :------------: |
| Swimming | 16+44          |
| Bathing  | 14.83          |
| Fishing  | 7.24           |

#### 20th Century
| ACTIVITY      | PERCENTAGE (%) |
| :-----------: | :------------: |
| Swimming      | 14.56          |
| Surfing       | 10.18          |
| Spearfishing  | 7.60           |

#### 21st Century
| ACTIVITY      | PERCENTAGE (%) |
| :-----------: | :------------: |
| Surfing       | 30.68          |
| Swimming      | 13.41          |
| Spearfishing  | 6.66           |

The result shows that for each century there was different activities and habits. For example, it was more common for people to bathe in the nature during the 19th century and the surfing just appeared in the 20th century.

## Learning Process
### Challenges
- Remember everything I have leaned from day 1
- Not being able to see the dataset visually
- Not have enough information in just one dataset
- Think about how manipulate data in a cell scale
- Think how to deal with the column 'Age'

### Theory Applied
- [X] Import and Export data
- [X] Data Manipulation - Filtering
- [X] Data Manipulation - Aggregation
- [X] Data Cleaning
- [X] Dataframe Calculations
- [X] Apply Functions
- [X] Lambda Functions
- [X] Regex
