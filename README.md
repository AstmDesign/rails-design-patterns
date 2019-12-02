# README
This repo strives to outline all of the rails patterns with basic examples of each one.

### Service Objects
#### Naming:
* Name service objects so that they end in 'or' (i.e. AccountCreator, ProfileAuthenticator) or name them with commands/actions words (i.e. CompleteTask, CreateAccount, etc).

#### Structure:
* Your service objects should have one public method like `call`, `perform`, etc.
* Ideally, you should not instantiate your object directly, but have the `call` method be a static method that instantiates an instance of itself.
* Each service object's constructor should only set instance variables. Any other things should be handled by private methods.
* Each service object should only do one thing. If you need a service object to handle more than one responsibility, create two service objects.
* Have your service objects return values in a consistent way.
  * Return:
    * true / false
    * enum
    * an instance of itself
    * return a value
  * The error handling should be done in the calling method (i.e. controller).
* Consider using named parameters with your public method (i.e. `call`), to simplify the signature.

### Query Objects
* A query object is used when you want to interact with more than one relation and a scope is not appropriate.
* You should have one public method like `call`, similar to a service object.
* Consider namespacing it in a module.

### Wrappers/Clients

#### Wrapper (Facades)
* wraps a library that has a difficult to use interace. They can also be used to format the response from a libary into a more useful form.

* Usage:
  * When wrapping the focus is on simplifying the interface so choosing method names that have clear meanings and reasonable arguments is best.
  * End wrapper classes with the word: `Wrapper`.
  * Try to make the methods on this class static.
  * Feel free to change the response method return values and structure in a way that makes the methods easy to use and test.
  * Keep references to the main app outside of the wrapper to insure better dependabilty.

#### Client
* wraps an API calls or similar service and provides a simpler interface (i.e. wrapping RestClent or Net::HTTP).

* Usage:
  * If wrapping an API, the route being wrapped should be represented by a similar method name (i.e. an API call to `/studentgrades` would be wrapped by a method named: `student_grades`).
  * Structure the new method so it will accept all parameters that the original API call would accept (i.e. don't hide functionality with your new method). Of course, there may be some functionality that would never be used that is unnecessary to expose with your new wrapping method (use your best judgement here).
  * The response returned from your new method should return a result similar in structure to the original API call.
  * Any client that you build should be abstracted enough to be re-usable by another app. It should not have any knowledge of your app.

--


### Resources:
* https://www.toptal.com/ruby-on-rails/rails-service-objects-tutorial
* https://medium.com/selleo/essential-rubyonrails-patterns-part-1-service-objects-1af9f9573ca1