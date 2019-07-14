# Article App - BDD

### Author: Pedro Brás
#

#### Learning objectives :

- Learn about Ruby on Rails
- structure of a RoR application
- params
- routes (resources, members, etc)
- most common helpers
- migrations
- CRUD controller actions
- Learn about the Model-View-Controller pattern
- Learn to work with legacy code
- Learn about best practices in Rails: DRY, Convention Over Configuration
- Learn how to identify what gems provide a lot of functionality and how to read and use documentation
- Learn about how to use tests (High level acceptance tests and Low level unit tests) to drive the development process.
- Practice Team collaboration
- planning and assigning tasks
- git flow in teams

#

The objective for this challenge was to create an Article Publishing App using Ruby on Rails, implementing a Behaviour Driven Development (BDD) testing environment.

### The app consists in the following features:

- Create New Article
- Display Article List
- Display Individual Article
- Edit Article
- Delete Article
- Comment Article

## Visit the deployed app at: https://secure-cliffs-56160.herokuapp.com/

#
#
#

# Week 5 Challenge
### Adding User Authentication
#
##### As the weekend challenge of the 5th week of the Craft Academy coding bootcamp we are asked to add a User Authentication feature to our Article App.

### Additional features:

- Unregistered visitor can only see index page
- Visitor can sign up
- Visitor can log in
- Visitor can log out
- Articles now belong to a specific user, and when they are published we can see the author
- Users can only edit, update or delete their own articles

To see these features consult the user-authentication branch

PR Link: https://github.com/pedrocbras/rails_bdd/pull/1