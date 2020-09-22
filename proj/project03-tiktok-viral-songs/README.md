<img src="https://bit.ly/2VnXWr2" width="100">

# Project 03 | Data Gathering & Visualization :bar_chart:

## Description
This is the result of the third project for the Ironhack Data Analytics Bootcamp, using all knowledge acquired up to Week 5 - Day 5.

## Project Status
:white_check_mark: Complete 

## Table of Content
- [Objective](#objective)
- [Data Source](#data-source)
- [Resources](#resources)
- [Process](#process)
- [Premises](#premises)
- [Issues](#issues)
- [Results](#results)
- [Learning Process](#learning-process)

## Objective
The objective of this project was to answer a problem statement, practicing data gathering and visualization.

### Problem Statement
>**Do some TikTok viral songs have common characteristics?**

## Data Source
- Web Scrapping
  - [PopSugar](https://www.popsugar.com/entertainment/popular-tiktok-songs-47289804?stream_view=1#photo-47289832)

- API
  - [Spotify](https://developer.spotify.com/)
  - [Chartmetric](https://api.chartmetric.com/apidoc/)
  
## Resources
- Python
- Jupyter Notbook
- [Spotipy](https://spotipy.readthedocs.io/en/2.15.0/) (Spotify API wrapper for Python)
- Tableau  

## Process
**__Part 1 - Data Gathering__**
1. Web scrapping
   - PopSugar
2. API
   - Spotify
   - Chartmetric

**__Part 2 - Data Cleaning and Manipulation__**
1. Data cleaning and manipulation
   - Music genre
   - Release Date and Explicit
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
1. Incomplete data for some songs.
2. Possibility that the song selected for the analysis is a wrong version.
3. When no song is selected in the filter box, the radar chart disappears.

## Results
The result can be found [here](https://public.tableau.com/profile/gabriela.nakasato#!/vizhome/proj-tiktok-viral-songs/TikTokViralSongs).

### Genre
<p align="center">
  <img width="550" src="https://github.com/gabrielanakasato/ironhack-daft/blob/master/proj/project03-tiktok-viral-songs/image/viral-songs-genres.PNG">
</p>

### Release Date and Explicit
<p align="center">
  <img width="550" src="https://github.com/gabrielanakasato/ironhack-daft/blob/master/proj/project03-tiktok-viral-songs/image/viral-songs-release_date-explicit.PNG">
</p>

### Audio Features
<p align="center">
  <img width="550" src="https://github.com/gabrielanakasato/ironhack-daft/blob/master/proj/project03-tiktok-viral-songs/image/viral-songs-audio_features-radar.PNG">
</p>

### Being a TikTok viral song is the same as being popular in other platforms?
<p align="center">
  <img width="550" src="https://github.com/gabrielanakasato/ironhack-daft/blob/master/proj/project03-tiktok-viral-songs/image/viral-songs-tiktok-spotify.PNG">
</p>

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
