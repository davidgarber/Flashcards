require('./lib/question.rb')
require('./lib/answer.rb')

Question.create({"question" => "What is Rails and why use it?"})
Answer.create({"answer" => "Rails is a model–view–controller (MVC) framework, providing default structures for a database, a web service, and web pages"})

Question.create({"question" => "Name every database association relationship."})
Answer.create({"answer" => "One to One Relationships, One to Many, Many to One Relationships, Many to Many Relationships, Self Referencing Relationships"})

Question.create({"question" => "What is an ORM?"})
Answer.create({"answer" => "An ORM (Object-Relational Mapping) is a tool that lets you query and manipulate data from a database using an object paradigm."})

Question.create({"question" => "What is a migration?"})
Answer.create({"answer" => "Migrations are a feature of Active Record that allows you to evolve your database schema over time. Each migration modifies the database by adding, removing or altering tables, columns, or entries."})

Question.create({"question" => "What is a router?"})
Answer.create({"answer" => "The Rails router recognizes URLs and dispatches them to a controller's action. It can also generate paths and URLs, avoiding the need to hardcode strings in your views."})

Question.create({"question" => "What is the difference between POST request and a GET request?"})
Answer.create({"answer" => "GET: Requests data from a specified resource; POST: Submits data to be processed to a specified resource."})

Question.create({"question" => "What is Git and why would you use it?"})
Answer.create({"answer" => "Git is a distributed Version Control System, or Source Code Management tool. The purpose is to track the development of source code through time, with useful side information: Who did it? When? Why?"})

Question.create({"question" => "What happens when a user logs into a website?"})
Answer.create({"answer" => "The user browser makes a GET request to the server. The server sends back the appropriate html document and its contents."})

Question.create({"question" => "What is a class?"})
Answer.create({"answer" => "Classes are first-class objects---each is an instance of class Class."})

Question.create({"question" => "What is an object?"})
Answer.create({"answer" => "Everything in Ruby is an object. All objects have an identity; they can also hold state and manifest behavior through method calls."})

Question.create({"question" => "What is a module? How’s it differ from a class?"})
Answer.create({"answer" => "Modules are a way of grouping together methods, classes, and constants."})

Question.create({"question" => "What is a module? How’s it differ from a class?"})
Answer.create({"answer" => "Modules are a way of grouping together methods, classes, and constants."})

Question.create({"question" => "Why use a module?"})
Answer.create({"answer" => "Modules give you two major benefits: 1. Modules provide a namespace and prevent name clashes. 2. Modules implement the mixin facility."})

Question.create({"question" => "What does self mean?"})
Answer.create({"answer" => "Self is the receiver object of the current method."})

Question.create({"question" => "Give an example of recursion."})
Answer.create({"answer" => "A recursive method calls itself. This can continue forever until stack space is exhausted. "})

Question.create({"question" => "What is unit testing?"})
Answer.create({"answer" => "A unit test is an automated piece of code that invokes a unit of work in the system and then checks a single assumption about the behavior of that unit of work."})

Question.create({"question" => "What is integration testing?"})
Answer.create({"answer" => "It tests communication paths between different parts of the module to show that all modules work correctly together."})

Question.create({"question" => "What are gems?"})
Answer.create({"answer" => "A gem is a module/Library that you can install and use in every project on your server."})

Question.create({"question" => "How do redirect and render differ?"})
Answer.create({"answer" => "Render will tell Rails what view it should use (with the same parameters you may have already sent) but redirect sends a new request to the browser."})

Question.create({"question" => "What happens when a user types in a URL?"})
Answer.create({"answer" => "The user browser makes a GET request to the server. The server sends back the appropriate html document and its contents."})

Question.create({"question" => "Explain what has_many is and what happens when it is run."})
Answer.create({"answer" => "A has_many association indicates one-to-many connection with another model. "})

Question.create({"question" => "What does the . in git add . mean?"})
Answer.create({"answer" => "all files (used for untracked files)"})

Question.create({"question" => "What is string interpolation?"})
Answer.create({"answer" => "String interpolation is evaluating a string containing one or more placeholders, yielding a result in which the placeholders are replaced with their corresponding values"})

Question.create({"question" => "How do local and instance variables differ?"})
Answer.create({"answer" => "Local variables are only available for one method called on an object, while instance variables are available to any method called on an object."})

Question.create({"question" => "What is a foreign key?"})
Answer.create({"answer" => "A foreign key is a field(s) in one table that uniquely identifies a row of another table."})

Question.create({"question" => "What is a callback in active record?"})
Answer.create({"answer" => "Callbacks are methods that get called at certain points of an object's life cycle, such as before it is saved, or after it is deleted."})

Question.create({"question" => "When would you use has_many :through?"})
Answer.create({"answer" => "When you are setting up a many to many connection with another model."})

Question.create({"question" => "What is a polymorphic relationship?"})
Answer.create({"answer" => "A model can belong to more than one other model on a single association."})

Question.create({"question" => "What is nil?"})
Answer.create({"answer" => "Nil is a pre-defined global constant that is Ruby’s concept of nothingness."})

Question.create({"question" => "How does false differ from nil?"})
Answer.create({"answer" => "False can be a value while Nil can not. False is a boolean data type while nil is an object for NilClass."})

Question.create({"question" => "What is REST?"})
Answer.create({"answer" => "Representational State Transfer is a software architecture style consisting of guidelines and best practices for creating scalable web services."})

Question.create({"question" => "What is a partial?"})
Answer.create({"answer" => "Partial templates - usually just called 'partials' - are another device for breaking the rendering process into more manageable chunks. With a partial, you can move the code for rendering a particular piece of a response to its own file."})

Question.create({"question" => "What does rake do?"})
Answer.create({"answer" => "Rake is a gem that manipulates migrations and your schema."})

Question.create({"question" => "What is a bundler?"})
Answer.create({"answer" => "Bundler provides a consistent environment for Ruby projects by tracking and installing the exact gems and versions that are needed."})

Question.create({"question" => "Explain polymorphism"})
Answer.create({"answer" => "Polymorphism is the provision of a single interface to entities of different types."})

Question.create({"question" => "How would you parse a JSON string?"})
Answer.create({"answer" => "The JSON.parse() method parses a string as JSON, optionally transforming the value produced by parsing."})

Question.create({"question" => "Describe a class and an object"})
Answer.create({"answer" => "A class is the blueprint from which individual objects are created and objects are instances of the class. "})

Question.create({"question" => "What happens in a GET, POST, and PATCH request?"})
Answer.create({"answer" => "GET: Requests data from a specified resource; POST: Submits data to be processed to a specified resource. PATCH: Updates data"})

Question.create({"question" => "I want to update something. What type of request would that be?"})
Answer.create({"answer" => "PATCH"})

Question.create({"question" => "What is HTTP and why do we use it?"})
Answer.create({"answer" => "HTTP (Hypertext Transfer Protocol) is the set of rules for transferring files (text, graphic images, sound, video, and other multimedia files) on the World Wide Web. As soon as a Web user opens their Web browser, the user is indirectly making use of HTTP."})

Question.create({"question" => "What is the difference between a private and public method?"})
Answer.create({"answer" => "In a public method the type or member can be accessed by any other code in the same assembly or another assembly that references it. In a private method the type or member can only be accessed by code in the same class or struct. "})

Question.create({"question" => "Describe a callback function."})
Answer.create({"answer" => "Callbacks are code hooks that are run at key points in an object's life cycle."})

Question.create({"question" => "What is an array?"})
Answer.create({"answer" => "Arrays are ordered, integer-indexed collections of any object."})

Question.create({"question" => "Explain MVC"})
Answer.create({"answer" => "model-view-controller (MVC) is the name of a methodology or design pattern for successfully and efficiently relating the user interface to underlying data models."})

Question.create({"question" => "What is a join table in SQL?"})
Answer.create({"answer" => "The SQL Joins clause is used to combine records from two or more tables in a database. A JOIN is a means for combining fields from two tables by using values common to each."})

Question.create({"question" => "Explain why you should escape user input into SQL statements."})
Answer.create({"answer" => "To protect against SQL injection (a technique that exploits a security vulnerability), user input must not directly be embedded in SQL statements."})

Question.create({"question" => "Describe Ruby's object inheritance."})
Answer.create({"answer" => "Inheritance is a relation between two classes. In Ruby, a class can only inherit from a single other class."})

Question.create({"question" => "What is floating in CSS?"})
Answer.create({"answer" => "Float is a CSS positioning property. With CSS float, an element can be pushed to the left or right, allowing other elements to wrap around it."})

Question.create({"question" => "What are media queries and how do you use them?"})
Answer.create({"answer" => "Media queries detect browsing devices based on their attributes. You can target stylesheets directly with media queries for a device’s capabilities. CSS rules will be customized to that screen size, serving smaller images and making text clearer."})

Question.create({"question" => "How do you make images usable for blind people who are using a screen reader?"})
Answer.create({"answer" => "Make sure all your images have ALT tags."})

Question.create({"question" => "What's the difference between =, ==, and === in JavaScript?"})
Answer.create({"answer" => "'=' is a simple assignment operator. The other are strict comparison operators: '==' means equals, whereas '===' means identically equal."})

Question.create({"question" => "What's the difference between an undefined and undeclared variable in JavaScript?"})
Answer.create({"answer" => "Undefined variables are declared but defined in the program. Undeclared variables are those not declared in the program. "})

Question.create({"question" => "What's in your .bash_profile?"})
Answer.create({"answer" => "The personal initialization file, executed for login shells."})

Question.create({"question" => "What's your favorite language and why?"})
Answer.create({"answer" => "Yep, that’s correct!"})
