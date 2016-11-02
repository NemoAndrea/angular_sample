# angular_sample
A simple test repo for angular. I intend to use angular for some of my projects. This repo will also be shared with other users to briefly show some of  the core functionality of Angular

Notes before Using/Cloning Repo:
 - you may have to change the <base> tag in the index.html file depending on your IDE choice (for non webstorm/intelliJ you have to use '/' instead of '/angular_sample/web/' I believe.
 - the application is very simple; the focus is more on the comments in the file. The application uses concepts that one normally wouldnt use for an application of this type, but they are important topics that will benefit users as applications grow in complexity.
 
Notes On the structure:
- we have 4 angular components
  - app_component (our main component)
  - nodelist_component (our default routed component) 
  - hint_component (a very simple component)
  - node_detail_component (a component that can only be viewed through nodelist_component and takes more advanced routing parameters)
- we have 1 angular service 
  - node_service (a way too complex service for this application, but one that demonstrates how to make a service that is versatile)
  
Core concepts discussed in comments:
- Angular Components
- Routing
- Dart Async (not part of angular)
- Dependcy Injection
- Angular Components HTML and CSS styling
- Conventions in syntax and naming
 
 
