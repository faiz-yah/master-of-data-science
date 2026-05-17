# WQD 7013 Statistics for Data Science
## Topics
1. Role of Statistics in Data Science Workflow
    - The 3 core pillars of data science
    - Danger of anectodal evidence
    - The data matrix
    - Independent and dependent variables
2. Sampling, Observational vs Experimental Study
    - Populations(Parameter) vs Samples (Statistics)
    - Bias (Sampling, Convenience, Non-response, Response, Representative)
    - Sampling (Simple Random Sample, Stratified Sampling, Cluster, Multistage)
    - Obsevational vs Experimental Study
        - Confounding variable
        - Placebo and control group
        - Single-blind, double-blind study 
        - Causation and correlation
3. Exploratory Data Analysis (EDA)
    - Goal and workflow of EDA
    - Tidy tabular thinking
    - Categorical data
        - Frequence table 
        - Bar charts
    - Summary of one variable
        - Central tendency (Median, mean, mode)
        - Spread (Variance, standard deviation, IQR, percentiles)
    - Describe a distribution (Center, spread, outliers, shape)
    - Visualising data
        - Histogram 
            - Area principle and density scale
            - Bimodality (Two distincy subgroups)
    - Visualising spread
        - Boxplots
    - Discovering relationships
        - Numerical: Scatter plot 
        - Catgeorical: Contingency/pivot table
    - Comparing group visually
        - Overlaid histogram, scatter plot
        - Side by side boxplot 
4. Probability Intuition and Simulation
    - Law of Large Numbers
    - The addition rule (disjoint outcomes)
    - The multiplicative rule (independent outcomes)
    - Conditional probability (non-independent)
    - Bayes's Theorem
        - Updating prior belief based on new information/observation
    - Expected value
    - Probability distribution functions
        - Probability Mass Function (PMF)
        - Probability Density Function (PDF)
        - Cumulative Distribution Function (CDF)
    - The Class Size Paradox
    - The 4-steps Simulation Approach
        1. Use a loop to collect result
        2. Decide frequency of simulation
        3. Write a function for a single trial
        4. State clearly objective of simulation
5. Theoretical Models
    - Normal (Gaussian) Distribution
    - Standardising Variables (Z-scores)
        - Standard normal curve
        - The emprical rules (68% within ±1σ, 95% within ±2σ, 99.73% within ±3σ)
    - Q-Q Plot (Normal probability plot)
        - Compares empirical againts theoretical normal quantiles
    - Discrete Models
        - Binomial Distribution (To model counts of distinct binary)
        - Poisson Distribution (To model count of events occuring)
    - The Square Root Law
    - The Central Limit Theorem (CLT)
        - Purpose: Hypothesis testing, compute p-values
        - Limitation: When data is correlated and have infinite variance
    - Analytical vs computational methods
6. Estimation and Confidence Intervals:
    - Estimator
        - Bias and variance
        - The bias-variance trade off 
    - Method of Moments (MOM)
        - Set the theoretical moments equal to the sample moments and solve for the unknown parameters.
    - Maximum Likelihood
        - Find the parameter θ̂ MLE that maximizes the likelihood function.
        - Maximising the log-likelihood
    - Confidence Intervals
        - Point estimates are imperfect because there are sampling error
        - A range of plausible values where we are likely to find the true population parameter.
    - Small samples and t-distribution
    - The bootstrap method (for CI)
        - When we want to calculate CI for median and not mean
        - When sample is small and highly skewed
7. Hypothesis Testing
    - Null and alternative hypothesis
    - p-value, significance level
    - One sample test
        - Analytical (t-test, z-test)
        - Simulation (Bootstrap)
    - Two samples test
        - Analytical (Welch's test)
        - Simulation (A/B testing, permutation test)
    - Multiple groups (>2 samples)
        - Analytical (Chi-square, ANOVA)
        - Simulation (Total Variation Distance)
    - Error probabilities
        - Type I Error
            - False Positive
            - α
        - Type II Error
            - False Negative
            - β
    - Data snooping and p-hacking
    - Power analysis
