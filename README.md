## Smart Pension tech test in Ruby
### <i> Dora Kemeny </i>

### The task:
Provided a webserver.log file, the code has to return:
- list of webpages with pageviews, in descending order
- list of webpages with on unique views, in descending order

#### To collaborate: 
``
git clone https://github.com/dory1318/smart_pension_tech_test
``
#### to install dependencies:
 ``bundle install
``
#### to run the test:

<i> Test coverage is 100%, all functions are tested, except fot the Printing class as its duty is nothing more than printing the result on the screen </i> 

``rspec
``

#### To run from command line:
 <i> webserver.log is initially passed to the app, if different file needs to be passed, it has to be changed in the report.rb or can be loaded using the app in IRB 
 
 if no file is passed as argument, it automatically loads webserver.log </i> 

``ruby report.rb
``

#### Comments
- For start, I planned to have 3 classes, one to read&parse the file, one to deal with pageview and another to deal with unique view. As I was progressing, I had realised that the last 2 classes had commun functionalities, so I decided to make changes and refactor my code in order to keep it DRY (don't repeat yourself).
- From the description wasn't clear if webserver.log should be hard-coded or not, so I decided to pass it as an optional argument. When you run the file it is being loaded automatically, but if needed, it can be changed easily (well, kind of 'semi-hardcoded' I would say)
- I tried my best to follow the Single responsibility principle, and making the methods as short and clear as possible (from certain point of view Summarize class can be an exception, but I decided to keep that 2 funcionality in 1 class as those are commun functionalities for both pageview and uniqueview. And the data needs to be collected in a proper format in order to summarise it, it didn't seem useful to separete that 2 functions.)
