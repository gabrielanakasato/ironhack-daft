![Ironhack logo](https://i.imgur.com/1QgrNNw.png)
# Week 03 - Lab 04 | First Queries
## Description

The queries for each answer are in the file named **_first_queries.sql_**.

## Questions & Answers

**Q1. What are the different genres?**

There are **_23 diffenret types_** of genre and they are:

<table>
  <thead>
    <tr>
      <th colspan="6">GENRES</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Shopping</td>
      <td>Business</td>
      <td>Catalogs</td>
      <td>Entertainment</td>
      <td>Navigation</td>
      <td>News</td>
    </tr>
    <tr>
      <td>Games</td>
      <td>Social Networking</td>
      <td>Weather</td>
      <td>Medical</td>
      <td>Photo & Video</td>
      <td>Productivity</td>
    </tr>
    <tr>
      <td>Education</td>
      <td>Food & Drink</td>
      <td>Book</td>
      <td>Utilities</td>
      <td>Finance</td>
      <td>Lifestyle</td>
    </tr>
    <tr>
      <td>Reference</td>
      <td>Sports</td>
      <td>Music</td>
      <td>Travel</td>
      <td>Health & Fitness</td>
      <td></td>
    </tr>
  </tbody>
</table>

---

**Q2. Which is the genre with the most apps rated?**

The genre with the most apps rated is the **_Games_**.

---

**Q3. Which is the genre with most apps?**

The genre with the most apps is also the **_Games_**.

---

**Q4. Which is the one with least?**

The genre with the least apps is the **_Catalog_**.

---

**Q5. Find the top 10 apps most rated.**

The top 10 most rated apps are:

| RANK | APP                           | NUMBER OF RATINGS |
| :--: | :---------------------------: | :---------------: |
| 1    | **_Facebook_**                | 2,974,676         |
| 2    | **_Instagram_**               | 2,161,558         |
| 3    | **_Clash of Clans_**          | 2,130,805         |
| 4    | **_Temple Run_**              | 1,724,546         |
| 5    | **_Pandora - Music & Radio_** | 1,126,879         |
| 6    | **_Pinterest_**               | 1,061,624         |
| 7    | **_Bible_**                   | 985,920           |
| 8    | **_Candy Crush Saga_**        | 961,794           |
| 9    | **_Spotify Music_**           | 878,563           |
| 10   | **_Angry Birds_**             | 824,451           |

---

**Q6. Find the top 10 apps best rated by users.**

To answer this question, two factors were analyzed (rating and number of ratings).

| RANK | APP                                                      | RATING | NUMBER OF RATINGS |
| :--: | :------------------------------------------------------: | :----: | :---------------: |
| 1    | **_Head Soccer_**                                        | 5      | 481,564           |
| 2    | **_Plants vs. Zombies_**                                 | 5      | 426,463           |
| 3    | **_Sniper 3D Assassin: Shoot to Kill Gun Game_**         | 5      | 386,521           |
| 4    | **_Geometry Dash Lite_**                                 | 5      | 370,370           |
| 5    | **_Infinity Blade_**                                     | 5      | 326,482           |
| 6    | **_Geometry Dash_**                                      | 5      | 266,440           |
| 7    | **_Domino's Pizza USA_**                                 | 5      | 258,624           |
| 8    | **_CSR Racing 2_**                                       | 5      | 257,100           |
| 9    | **_Pictoword: Fun 2 Pics Guess What's the Word Trivia_** | 5      | 186,089           |
| 10   | **_Plants vs. Zombies HD_**                              | 5      | 163,598           |

---

**Q7. Take a look at the data you retrieved in question 5. Give some insights.**

Insights:
- All top 10 most rated apps are free;
- Most of them have at least 10 languages available;
- 40% of them are games, 20% are social medias, 20% are music related apps and 10% are from the genres 'Reference' and 'Photo & Video';
- 80% of them have a 4.5 rating. The apps Facebook and Pandora have a lower rating of 3.5 and 4 respectively.

---

**Q8. Take a look at the data you retrieved in question 6. Give some insights.**

Insights:
- Most of the top 10 best rated apps are games with prices ranginng from free to 1.99;
- The only one that is not in the game genre is the app Domino's Pizza USA, which belongs to the 'Food & Drink' genre, and it is a free app;
- Most of them are not available in many different languages. The ones that have at least 10 languages available are just 3 and all of them are games.

---

**Q9. Now compare the data from questions 5 and 6. What do you see?**

- In both datasets, most of apps are free and the top 1 genre is _Games_;
- What differs most both datasets are the information about the number of ratings and languages.
  - The number of ratings of the most rated app is about 6 times greater than the best rated app;
  - The number of languages available for the most rated apps is much greater than the one for the best rated apps.

---

**Q10. How could you take the top 3 regarding both user ratings and number of votes?**

This could be done by ordering the dataset by users' rating and by numer of ratings. The top 3 are:

| RANK | APP                                                      | RATING | NUMBER OF RATINGS |
| :--: | :------------------------------------------------------: | :----: | :---------------: |
| 1    | **_Head Soccer_**                                        | 5      | 481,564           |
| 2    | **_Plants vs. Zombies_**                                 | 5      | 426,463           |
| 3    | **_Sniper 3D Assassin: Shoot to Kill Gun Game_**         | 5      | 386,521           |

---

**Q11. Do people care about the price of an app?**

**_Yes_**, people tend to get the free ones. From the top 100 most rated apps, **_89 of them are free_**, the others' price range from $0.99 to $6.99, where most of them cost $0.99. Therefore, if people buy apps, they buy more the cheap ones.

---
