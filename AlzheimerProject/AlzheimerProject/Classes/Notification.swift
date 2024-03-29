//
//  Notification.swift
//  AlzheimerProject
//
//  Created by Guilherme Martins Dalosto de Oliveira on 16/08/19.
//  Copyright © 2019 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UserNotifications
import Foundation

class Notification { 
    
    func requestNotificationAuthorization(){
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge]) { (didAllow, error) in
            
        }
        
        
    }
    
    
    func notification(){
        
        let content = UNMutableNotificationContent()
        
        content.title = "Title"
        content.subtitle = "Subtitle"
        content.body = "Body"
        content.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request =  UNNotificationRequest(identifier: "Sample", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
    }
    
   
    
    
    
    
    
    
    
    
}
