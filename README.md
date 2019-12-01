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

### Resources:
* https://www.toptal.com/ruby-on-rails/rails-service-objects-tutorial
* https://medium.com/selleo/essential-rubyonrails-patterns-part-1-service-objects-1af9f9573ca1