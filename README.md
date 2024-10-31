<p align="center">
  <img src="https://github.com/user-attachments/assets/b8276054-906f-4d14-a03d-f6e450a6a7c0" width="512" heigth="120">
</p>


<p align="center">
   An R script developed as a project for the Calcolo della Probabilità Statistica e Matematica (Statistical and Mathematical Probability Calculation) course, part of the Computer Science Bachelor's Degree program at the University of Salerno 
</p>


## Table of Contents
- [Overview](#Overview)
- [Preview](#Preview)
- [Features](#Features)
- [Sources](#Sources)
- [How to replicate](#How-to-replicate)
- [Built with](#Built-with)


## Overview
  Crash Stat was developed to apply key concepts from Statistical and Mathematical Probability Calculation to a real-life scenario: analyzing the number of car crashes in Italy. The script allows for data analysis using the most important statistical indices.


## Preview
<p>
  <img src="https://github.com/raffaeleav/crash-stat/assets/114619463/4fd2b53c-fd7a-40b9-b753-ab7a577bd943" width="400" heigth="400">
</p>


## Features 
1) Absolute frequencies, cumulative absolute frequencies, relative frequencies, and cumulative relative frequencies
2) Histogram and box plot 
3) Mean, median, and mode
4) Variance and standard deviation
5) Skewness and kurtosis


## Sources 
The data used in the R script was extracted on June 11, 2022, at 01:47 UTC (GMT) from the [Istat](https://www.istat.it/) website


## How to replicate
1) Clone the repository
```bash
git clone https://github.com/raffaeleav/crash-stat.git
```
2) Switch to the project directory
```bash
cd crash-stat
```
3) Run the script in RStudio
```bash
open -a Rstudio crash-stat.R
```
5) Alternatively, you can run the script using Rscript (the diagrams will be saved in the Rplots.pdf file)
```bash
Rscript crash-stat.R
```


## Built with
- [R](https://www.r-project.org/) - used for calculating statistical indices and visualizing the data through diagrams
