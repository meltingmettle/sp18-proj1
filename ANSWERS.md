# Q0: Why is this error being thrown?
The controller for Pokemon doesn't exist yet.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
capture_path is calling the capture from the routes and passing in the ID of the pokemon.  

# Question 3: What would you name your own Pokemon?
Ganw Nosliw

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
We would need to pass in the name.  


# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
