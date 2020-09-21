![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Project 03 | Data Gathering & Visualization

## Description
This is the result of the third project for the Ironhack Data Analytics Bootcamp, using all knowledge acquired up to Week 5 - Day 5.

## Objective
The objective of this project was to answer a problem statement, practicing data gathering and visualization.

### Problem Statement
**_Do some TikTok viral songs have common characteristics?_**

## Project Status
:white_large_square: In progress

## Data Source
- Web Scrapping
  - [PopSugar](https://www.popsugar.com/entertainment/popular-tiktok-songs-47289804?stream_view=1#photo-47289832)

- API
  - [Spotify API](https://developer.spotify.com/)
  - [Chartmetric API](https://api.chartmetric.com/apidoc/)
  
## Resources
- Python
- Jupyter Notbook
- Pandas
- Numpy
- [Spotipy (Spotify API wrapper for Python)](https://spotipy.readthedocs.io/en/2.15.0/)
- Tableau  

## Process
**__Part 1 - Data Gathering__**
1. Web scrapping for a list of songs to be analyzed
   - PopSugar
2. Data gathering
   - Spotify
   - Chartmetric

**__Part 2 - Data Cleaning and Manipulation__**
1. Data cleaning and manipulation
   - Music genre
   - Metadata
   - Audio features
   - Artists
2. Export dataset
   - PostgreSQL
   - CSV format

**__Part 3 - Data Analysis and Visualization__**
1. Data analysis and visualization using Tableau

## Premises
1. There are 69 songs in list on the _PopSugar_ website, but only 66 were analyzed, because 3 of them were not found in the Spotify library.
2. There were some missing values from the data collected for some songs.

## Issues
1. Imcomplete data, because some songs or their data were not found/missing value.
2. Possibility that the song selected for the analysis is a wrong version.

## Results
The result can be found [here](https://public.tableau.com/profile/gabriela.nakasato#!/vizhome/proj-tiktok-viral-songs/TikTokViralSongs).

## Learning Process
### Challenges
- Remember everything I have leaned from day 1
- Access the Chartmetric API
- Refactor the code so it can be shorter and avoid unnecessary repetition
- Prepare the datasets to import in Tableau
- Make a radar chart

### Theory Applied
- [X] Connect PostgreSQL and Python
- [X] Web Scrapping
- [X] API
- [X] Data Visualization
- [ ] Data Pipeline
