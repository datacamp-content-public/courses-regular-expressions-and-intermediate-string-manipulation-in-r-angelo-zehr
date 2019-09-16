# courses-regular-expressions-and-intermediate-string-manipulation-in-r-angelo-zehr

## Brainstorming

### What problem(s) will students learn how to solve?

- How to find and extract relevant information from unstructured text sources.
- How to create human-friendly sentences from relevant data.
- How to match strings that are similar, but not identical.

### What are the learning objectives of the course?

…to understand why and how to use named groups withing regular expressions for extractions and replacements (in ICU, used by stringr/stringi)
…to apply the extract function from tidyr as an alternative to named capturing groups when working with strings in dataframes
…to understand what template strings are, where they come from, and why they are useful
…to use the different ways to pass data to the glue function to create meaningful sentences
…to understand the differences of the functions of the glue package (collapse, data, sql,…) and to apply them in different situations
…to understand the different methods of calculating string distances
…to use the Levenshtein distance as well as qgrams to compare different strings to each other
…to understand how fuzzy join works and to apply it to an example dataset.
…to create her/his own fuzzy join based on custom functions that she/he'll create for this use case
…using the knowledge gained in lesson 1 to extract numbers and strings from a bunch of text
…using string replacements to make one data source match a second one more closely
…to understand the concept of record linkage and to apply it to our example data set of movie titles
…to apply the knowledge from lesson 2 and create meaningful outputs from our current state of record linkage

### What technologies, packages, or functions will students use?

* stringr/stringi
* tidyr's extract
* glue
* fuzzyjoin/stringdist

Dplyr and magrittr should be present.

### What terms or jargon will you define?

- Regular Expressions, Capturing Groups, Patterns, Matching, Exctracting, Detecting, Locating
- String Distances, Levenshtein Distances, Ngrams, Join, Fuzzy
- Concatenating, Pasting, Strings

### What analogies or heuristics will you use?

- Regular Expressions are like Ctrl + F on steroids
- A fuzzy join is a mathematical version of what humans can see immediately: that e.g. Ma*rg*aret and Ma*gr*aret is the same
- Reading in clean, tabular data is a luxury that we don't always have
- The most interesting stuff is often hard to get at


### What mistakes or misconceptions do you expect?

- When coming from other programming languages, double escaping regular expressions can be tedious, especially when copied from other tools.
- Regular Expressions in general can look scary when you start learning them.
- Methods of string distances have different weaknessesses / strengths, it's not easy to know which one fits a use case best.

### What datasets will you use?

I could not find a dataset that is by default included in R (like iris etc.) that fits the things I want to exercise with the students. I could provide a dataset from my work (a list of movie titles and ticket sales per week).

A second dataset is one from kaggle with NYC Baby Names:
<https://www.kaggle.com/new-york-city/nyc-baby-names>

Furthermore I have another dataset form work that is no issue when it comes to privacy: politicians running for parliament (about 4600 entries).


## Personas

**Unaware Umberto**
When starting with data handling, regular expressions are a very key concept to master. While in an other course Rebus is used, I would like to explain the snytax of regular expressions to beginners.

**Starting Sindhu**
Regular Expressions and String distances are good skills to have when working with messy, real world data. They're not very hard to learn from a coding point of view (not many lines of code) but rather a concept worth knowing / understanding when and how to use.


## Course Outline

As a learning material I plan to use a real data analysis that I am currently working on: matching movie titles in a messy dataset with a canonical database/list.

### Chapter 1: Extracting data from tables and lists using regular expressions

#### Lesson 1.1: Capturing groups
* Learning Objective: A learner will be able… (omitted in the list below for the sake of brevity) …to apply capturing and replacing substrings in a list of strings
* Functions used: `str_match`, `str_replace`

#### Lesson 1.2: Named capturing groups
* Learning Objective: …to understand why and how to use named groups withing regular expressions for extractions and replacements (in ICU, used by stringr/stringi)
* Functions used: `str_match_all`

#### Lesson 1.3: tidyr's extract
* Learning Objective: …to apply the extract function from tidyr as an alternative to named capturing groups when working with strings in dataframes
* Functions used: `extract`

### Chapter 2: Creating strings with data

#### Lesson 2.1: Getting to know glue
* Learning Objective: …to understand what template strings are, where they come from, and why they are useful
* Functions used: `glue`, `glue_collapse`

#### Lesson 2.2: Using it in practice
* Learning Objective: …to use the different ways to pass data to the glue function to create meaningful sentences
* Functions used: `glue`, `glue_data`

#### Lesson 2.3: Gluing advanced data types
* Learning Objective: …to understand the differences of the functions of the glue package (collapse, data, sql,…) and to apply them in different situations
* Functions used: `glue_collapse`, `glue_sql`

### Chapter 3: Evaluating and using similiarities between strings

#### Lesson 3.1: Understanding string distance
* Learning Objective: …to understand the different methods of calculating string distances
* Functions used: `stringdist`

#### Lesson 3.2: Comparing methods of string distances
* Learning Objective: …to use the Levenshtein distance as well as qgrams to compare different strings to each other
* Functions used: `stringdist`

#### Lesson 3.3: Joining two data sources with fuzzy join
* Learning Objective: …to understand how fuzzy join works and to apply it to an example dataset.
* Functions used: `fuzzyjoin`

#### Lesson 3.4: Creating a custom fuzzy join
* Learning Objective: …to create her/his own fuzzy join based on custom functions that she/he'll create for this use case
* Functions used: `fuzzyjoin`

### Chapter 4: A real world example

#### Lesson 4.1: Extrating tabular data from a multiline string
* Learning Objective: …using the knowledge gained in lesson 1 to extract numbers and strings from a bunch of text
* Functions used: `extract`

#### Lesson 4.2: Using capturing groups to change the order of substrings
* Learning Objective: …using string replacements to make one data source match a second one more closely
* Functions used: `str_match_all`, `str_replace_all`

#### Lesson 4.3: Record linkage: what it is and how it's done
* Learning Objective: …to understand the concept of record linkage and to apply it to our example data set of movie titles

#### Lesson 4.4: Create meaningful reports to understand the progress of our linkage
* Learning Objective: …to apply the knowledge from lesson 2 and create meaningful outputs from our current state of record linkage
* Functions used: `glue`, `glue_collapse`

PS: Feel free to make adjustments and additions to this course outline. I would be very happy to include your suggestions.
