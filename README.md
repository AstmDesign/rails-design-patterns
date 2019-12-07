# README
This repo strives to outline all of the rails patterns with basic examples of each one.

### Service Objects
#### Naming:
* Name service objects so that they end in 'or' (i.e. AccountCreator, ProfileAuthenticator) or name them with commands/actions words (i.e. CompleteTask, CreateAccount, etc).

#### Structure:
* Your service objects should have one public method like `call`, `perform`, etc.
* Ideally, you should not instantiate your object directly, but have a static `call` method that instantiates an instance of itself.
* Each service object's constructor should only set instance variables. All other actions should be handled by private methods.
* Each service object should only do one thing. If you need a service object to handle more than one responsibility, create two service objects.
* Have your service objects return values in a consistent way.
  * Return:
    * true / false
    * an enum
    * an instance of itself
    * a value
  * The error handling should be done in the calling method (i.e. controller).
* Consider using named parameters with your public method (i.e. `call(user:, verified:)`), to simplify the signature.

### Query Objects
* A query object is used when you want to interact with more than one relation and a scope is not appropriate.
* You should have one public method like `call`, similar to a service object.
* Consider namespacing it in a module.

### Wrappers/Clients

#### Wrapper (Facades)
* wraps a library that has a difficult to use interace. They can also be used to format the response from a libary into a more useful form.

* Usage:
  * When using a wrapper the focus is on simplifying the interface so you have clearer method names and reasonable arguments.
  * End wrapper classes with the word: `Wrapper`.
  * Try to make the methods on this class static.
  * Feel free to change the response method return values and structure in a way that makes the methods easy to use and test.
  * Keep references to the main app outside of the wrapper to insure better dependability.

#### Client
* wraps an API call or similar service (i.e. RestClent or Net::HTTP) and provides a simpler interface.

* Usage:
  * If wrapping an API, the route being wrapped should be represented by a similar method name (i.e. an API call to `/studentgrades` would be wrapped by a method named: `student_grades`).
  * Structure the client method so it will accept all parameters that the original API call would accept (i.e. don't hide functionality with your method). Of course, there may be some functionality that would never be used that is unnecessary to expose with your new client method (use your best judgement here).
  * The response returned from your new method should return a result similar in structure to the original API call.
  * Any client that you build should be abstracted enough to be re-usable by another app. It should not have any knowledge of your app.

#### Form Objects:
* Used when you need to offload some functionality into a class than handles validation from form input. At lot of times these are combinations of two models, although a form object can also be use for a form that is not backed by a model.

* Usage:
  * Append the word: `Form` after each
  * Have the form object's interface conform (as much as possible) to a model (i.e. have a `save` method).
    * The method on the form that stores data should be names either `save` or `save!`.
  * If beneficial, include validations on your form object.
    * Have a test for `valid?` before `save` returns `true`, for instance.


#### View Object
A class that wraps data from the model to provide output more useful for the view layer. Typically the object would include methods that may have conditionals and add strings to the output. This way our view can just call these methods (i.e. `myview.status`) instead of having logic or extra formatting in the view.

##### Types
###### Presentor
The presenter pattern is a basic way to accompish this. You can create a class that inherits from `SimpleDelegator` that adds additional methods. Wrapping your model in this class will give you controller access to these methods. This way your controller can just call a single method for its output instead of having to have a lot of conditionals and logic in private methods to format data for your view. Typical pattern: `my_presenter = MyPresenter.new(MyModel.new)`.

###### Decorator
Usually you will use a decorator to add additional functionality to a model. Things like more complicated calculations and are not related to the model's data source could be moved to a decorator. This way your controller can call on this decorated object and have access to the methods. Without the decorator, these calculation methods would have to reside in either the controller (as private methods) or in your model. Either way it would lead to a larger controller/model.

###### ActionView::Component
Allows you to add components that have a class backing them to encase chunks of HTML that can be unit tested. These are simliar to React components.

--

Left Off Here:
https://medium.com/selleo/essential-rubyonrails-patterns-form-objects-b199aada6ec9

### Resources:
* https://www.toptal.com/ruby-on-rails/rails-service-objects-tutorial
* https://medium.com/selleo/essential-rubyonrails-patterns-part-1-service-objects-1af9f9573ca1
