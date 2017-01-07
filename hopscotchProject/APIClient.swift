//
//  APIClient.swift
//  Hopscotch-iOS-Test
//
//  Created by Jacqueline Minneman on 1/6/17.
//  Copyright © 2017 Samantha John. All rights reserved.
//

import Foundation

class APIClient {
    
    class func getProjects(with completion: @escaping ([[String : Any]])-> Void) {
        
        let urlString = "https://hopscotch-ios-test.herokuapp.com/projects"
        
        let url = URL(string: urlString)
        
        if let unwrappedURL = url {
            
            let session = URLSession.shared
            
            let task = session.dataTask(with: unwrappedURL) { (data, response, error) in
                
                if let unwrappedData = data {
                    
                    do {
                        
                        let responseJSON = try JSONSerialization.jsonObject(with: unwrappedData, options: []) as! [String: Any]
                        let projectsArray = responseJSON["projects"]
                        
                        completion(projectsArray as! [[String : Any]])
                        
                    } catch {
                        
                        print(error)
                    }
                }
                
            }
            
            task.resume()
        }
    }
    
    /*
     ["projects": <__NSArrayI 0x608000182150>(
     {
     author = "_Dancing_Cupcake_";
     "created_at" = "2015-01-12T21:57:47.856Z";
     "hearts_count" = 3;
     id = 81;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/nw0lbjn.png";
     title = "Turkey Day ";
     "updated_at" = "2016-12-16T20:37:58.676Z";
     },
     {
     author = Axolotl;
     "created_at" = "2015-01-12T21:57:47.844Z";
     "hearts_count" = 260;
     id = 80;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/v6h50fr.png";
     title = "Surf's Up!oh yeah";
     "updated_at" = "2016-12-16T20:37:58.671Z";
     },
     {
     author = Brastin3;
     "created_at" = "2015-01-12T21:57:47.818Z";
     "hearts_count" = 24;
     id = 79;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/i18cf2f.png";
     title = "BrastinOS 2.0";
     "updated_at" = "2016-12-16T20:37:58.666Z";
     },
     {
     author = "Kitty Meow";
     "created_at" = "2015-01-12T21:57:47.735Z";
     "hearts_count" = 257;
     id = 78;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/urhwc6r.png";
     title = "iPawed 3";
     "updated_at" = "2016-12-16T20:37:58.660Z";
     },
     {
     author = ChicagoPD;
     "created_at" = "2015-01-12T21:57:47.726Z";
     "hearts_count" = 188;
     id = 77;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/dmwstcs.png";
     title = "Dj game";
     "updated_at" = "2016-12-16T20:37:58.654Z";
     },
     {
     author = "Mumul ";
     "created_at" = "2015-01-12T21:57:47.715Z";
     "hearts_count" = 7;
     id = 76;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/awd4eol.png";
     title = "Arrow and bow... With raccoon!!!";
     "updated_at" = "2016-12-16T20:37:58.648Z";
     },
     {
     author = "Nickname Time";
     "created_at" = "2015-01-12T21:57:47.636Z";
     "hearts_count" = 22;
     id = 75;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/3ew093s.png";
     title = "Pocket Climber";
     "updated_at" = "2016-12-16T20:37:58.642Z";
     },
     {
     author = "2015 SonicQueenMMOs ";
     "created_at" = "2015-01-12T21:57:47.627Z";
     "hearts_count" = 249;
     id = 74;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/raf5wqh.png";
     title = "How to be Awesome";
     "updated_at" = "2016-12-16T20:37:58.635Z";
     },
     {
     author = "The Hopscotch Team";
     "created_at" = "2015-01-12T21:57:47.617Z";
     "hearts_count" = 161;
     id = 73;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/eewfi6r.png";
     title = "Level 21: Graffiti Glory";
     "updated_at" = "2016-12-16T20:37:58.629Z";
     },
     {
     author = GummyWorm;
     "created_at" = "2015-01-12T21:57:47.606Z";
     "hearts_count" = 22;
     id = 72;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/kgtu4bg.png";
     title = "Let's Go For a Drive";
     "updated_at" = "2016-12-16T20:37:58.622Z";
     },
     {
     author = Axolotl;
     "created_at" = "2015-01-12T21:57:47.590Z";
     "hearts_count" = 210;
     id = 71;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/lba3-fn.png";
     title = "The Path";
     "updated_at" = "2016-12-16T20:37:58.616Z";
     },
     {
     author = "The Hopscotch Team";
     "created_at" = "2015-01-12T21:57:47.574Z";
     "hearts_count" = 197;
     id = 70;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/a9fd-x-.png";
     title = "Level 21: Graffiti Glory (Girly edition)";
     "updated_at" = "2016-12-16T20:37:58.610Z";
     },
     {
     author = "\Ud83c\Udf89CourtneyCovet\Ud83c\Udf89";
     "created_at" = "2015-01-12T21:57:47.561Z";
     "hearts_count" = 94;
     id = 69;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/t-idb7c.png";
     title = "Square Pattern";
     "updated_at" = "2016-12-16T20:37:58.604Z";
     },
     {
     author = "Hippolover \Ud83d\Udc18";
     "created_at" = "2015-01-12T21:57:47.545Z";
     "hearts_count" = 202;
     id = 68;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/wonxagj.png";
     title = "Fruit Basket";
     "updated_at" = "2016-12-16T20:37:58.598Z";
     },
     {
     author = "\Ud83c\Udf31\U26ce\U24c2\U24c2\Ud83c\Udf31 \U24c2\U26ce\Ud83c\Udf8f\Ud83c\Udf8f\Ud83d\Udccd\Ud83c\Udfb5";
     "created_at" = "2015-01-12T21:57:47.526Z";
     "hearts_count" = 17;
     id = 67;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/m7ur8yg.png";
     title = "Art: Kandinsky Circles";
     "updated_at" = "2016-12-16T20:37:58.592Z";
     },
     {
     author = "\U2606Epic\Ud83d\Udc4aDragon\Ud83d\Udc32Master\U2600\Ufe0e";
     "created_at" = "2015-01-12T21:57:47.514Z";
     "hearts_count" = 37;
     id = 66;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/cnyvmlr.png";
     title = "Episode 1: No Fishing";
     "updated_at" = "2016-12-16T20:37:58.586Z";
     },
     {
     author = "Computer Girl";
     "created_at" = "2015-01-12T21:57:47.503Z";
     "hearts_count" = 14;
     id = 65;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/shd9rfs.png";
     title = "The Baseball Joke";
     "updated_at" = "2016-12-16T20:37:58.581Z";
     },
     {
     author = t1;
     "created_at" = "2015-01-12T21:57:47.488Z";
     "hearts_count" = 56;
     id = 64;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/bd-5dky.png";
     title = "Level 21: Graffiti Glory done! +spray can colours";
     "updated_at" = "2016-12-16T20:37:58.575Z";
     },
     {
     author = TheWeirdFreewPop;
     "created_at" = "2015-01-12T21:57:47.455Z";
     "hearts_count" = 28;
     id = 63;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/cledxyn.png";
     title = "3D Snowboarder";
     "updated_at" = "2016-12-16T20:37:58.569Z";
     },
     {
     author = "The GameMaker 2";
     "created_at" = "2015-01-12T21:57:47.430Z";
     "hearts_count" = 27;
     id = 62;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/qavg-8v.png";
     title = "Scuba simulator";
     "updated_at" = "2016-12-16T20:37:58.563Z";
     },
     {
     author = DewBerryMe;
     "created_at" = "2015-01-12T21:57:47.417Z";
     "hearts_count" = 7;
     id = 61;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/mqrtadj.png";
     title = "War of the Bugs";
     "updated_at" = "2016-12-16T20:37:58.557Z";
     },
     {
     author = "$uper Cash";
     "created_at" = "2015-01-12T21:57:47.393Z";
     "hearts_count" = 41;
     id = 60;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/gkwy7dv.png";
     title = "Interactive Buddy 1.0.2";
     "updated_at" = "2016-12-16T20:37:58.551Z";
     },
     {
     author = "Cupcake awesomeness\Ud83c\Udf82";
     "created_at" = "2015-01-12T21:57:47.368Z";
     "hearts_count" = 13;
     id = 59;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/x7qim8g.png";
     title = "Save the earth";
     "updated_at" = "2016-12-16T20:37:58.545Z";
     },
     {
     author = "The Hopscotch Team";
     "created_at" = "2015-01-12T21:57:47.351Z";
     "hearts_count" = 29;
     id = 58;
     "screenshot_url" = "http://screenshots.gethopscotch.com/production/mb5movz.png";
     title = "How to be Awesome: REHOP!";
     "updated_at" = "2016-12-16T20:37:58.538Z";
     }
     )
     ]
     */
    
}
