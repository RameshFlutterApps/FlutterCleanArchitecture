
# Folder structure for Flutter with clean architecture. I am doing the following way to main tain the large project.


Organizing files and folders in large projects can be challenging, but it's essential for effective management. To avoid overwhelming ourselves with large numbers of files, we should aim to keep files small and manageable, preventing hundreds of lines of code in one file. This reduces complexity and helps maintain mental clarity. To further improve the organization, we should minimize tight coupling between components and focus on the Single Responsibility Principle (SRP), ensuring each part of the project has one clear purpose. By following these practices, we can create a more manageable and scalable system.

# Working with Clean Architecture

Got it! When you mention using "Clean Arch" in your project, you're specifically referring to Flutterando's Architecture Proposal. This approach provides a structured way to organize Flutter projects by separating the code into layers that follow the principles of Clean Architecture, but with adjustments for Flutter's specific needs.

# Folder structure
* assets
  * icon
  * image
  * font
* config
* core
   * constant
   * theme
   * widget
* data
  * db
  * service
  * model
  * shared
* i18n
* mixing
* screen
  * auth
  * splash
  * home
* utils

##### Assets ( It having the following folder i.image ii.icon iii.font)
###### All assets, such as images, icons, and fonts, are placed in a dedicated folder within the project. This centralizes the management of these resources, making it easy to access and organize them throughout the app. By keeping them in one location, you improve maintainability and ensure consistency across the project.

##### config
###### All server configuration details, such as API endpoints, authentication keys, and environment settings, are stored in a dedicated configuration file or folder. This centralizes server-related information, making it easier to manage and update across the application.

##### Core 
###### All common code is place here so we can easily access from any where in application

##### data
###### This section contains all the app's data-related information, including API calls, local database management, shared preferences, and model classes for API responses. It centralizes the handling of data, ensuring easy access and consistency across the app while managing how data is fetched, stored, and shared.

##### i18n
###### This section includes multiple files to manage localization within the application. It organizes translations and language-specific resources, allowing for easy support of multiple languages and ensuring a consistent user experience across different regions.

##### Mixins
###### The util folder is used to store utility functions that enhance the app's functionality, such as image processing, data formatting, or other common tasks. It helps keep the code organized by centralizing reusable logic that can be accessed throughout the app.

##### screen
###### This section contains all UI-related logic and functions that focus on user experience, including screens, widgets, and interaction handling. It manages how the app looks and behaves, collecting information from the end user and providing a seamless interface for interactions
      
