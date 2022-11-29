# limit-execution-once-per-time-interval

Limits execution of code to once every so often. Imagine a cron job that 
checks a for some threshold condition, say, hardrive capacity of 90%. While 
your script frees some space you want to prevent other instances spawning 
while the conditions are still true. 

Set the time interval in .settings
Set the location of the state file in .settings

Try it out:
https://replit.com/@rmbott/threshold-execution-limiter

-Ryan Bott



