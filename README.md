# Hopscotch iOS Test Project

## Instructions:
In this project you will be creating a simplified version of the Hopscotch projects feed.This app should pull data from our server at `https://hopscotch-ios-test.herokuapp.com/projects` and display it in a view that scrolls.

We included Cocoapods in the project if you need to import and external libraries but this is not required. 

The design for the feed is included in the file `Hopscotch-iOS-Test.pdf`. All the measurements/colors/fonts are included in the project folder entitled `UI Helpers`.

Bonus points for loading data and images asynchronously. 

Please document any assumptions you make. 

Jacqueline Schweiger Assumptions:

- PDF shows iPad Pro (9.7 in) in horizontal view
- Scrolls vertically
- Assume screenshot_url, author, title, created_at, and updated_at values will always be of type String; assume hearts_count and id values will always be of type Int
- Assume Hopscotch logo used for placeholder screenshot_url image
- Assume if any one of screenshot, author, or title values is missing from API results, do not display that associated Project object in the HopscotchCollectionView
- Asynchronous loading of data and images; images loaded with SDWebImage pod
