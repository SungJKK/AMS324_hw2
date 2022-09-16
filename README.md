# AMS 325 - Homework 2 
Repository for homework 2, AMS 325

### Files
- `compute_for.m` file contains a function that estimates pi using [Monte Carlo
  method](https://www.google.com/search?client=firefox-b-1-d&q=monte+carlo+estimation) and for loops. The file has
  2 versions:
    - First version takes `N_tot` (total number of points) as an argument, and returns `pi_est` (estimation of pi).
    - Second version takes `N_tot` (total number of points) and `vid` (video object to record plotting animation) as an argument, and returns `pi_est` (estimation of pi).
- `main1.m` is the main script calling the first version of `compute_for.m` file. 
- `main3.m` is the main script calling the second version of `compute_for.m` file.  
<br>


- `compute_while.m` file contains a function that estimates pi using infinite series (more info about Euler's pi and the [Basel problem](https://en.wikipedia.org/wiki/Basel_problem)) and while loop.
  It takes `tol` as an argument, then calculates the estimation of pi by summating the series with a
  while loop, and returns `pi_est` (estimation of pi) and `n` (total number of iterations of while loop).
- `main2.m` is the main script calling `compute_while.m` file. 

### How to run
Pull the repository to an empty folder 
```bash
$ mkdir hw2 && cd hw2 
$ git init .
$ git pull git@github.com:SungJKK/MonteCarlo_Estimation.git
```

---
For problem 1, because `compute_for.m` file has been modified for problem 3, you must checkout a previous commit.
```bash
$ git checkout 44660ed
$ matlab
```
Then, run `main1.m` file in matlab editor. 

---
For problem 2 and 3, checkout the most recent commit and run on matlab editor. 
```bash
$ git checkout main
$ matlab
```
Run `main2.m` file for problem 2.  
Run `main3.m` file for problem 3.

### Author
Sung Joong Kim


