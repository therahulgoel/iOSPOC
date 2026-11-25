//
//  LocalNotifications.swift
//  iOSPOC
//
//  Created by Rahul Goel on 19/06/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import UserNotifications

final class LocalNotificationsManager: @unchecked Sendable {
    
    static let shared: LocalNotificationsManager = LocalNotificationsManager()
    
    var center:UNUserNotificationCenter = UNUserNotificationCenter.current()
    let options: UNAuthorizationOptions = [.alert, .sound, .badge]
    
    private init(){
    }
    
    final func requestAuthorization(){
        center.requestAuthorization(options: options) { (didAllow, error) in
            if !didAllow{
                print("User has declined notifications")
            }
        }
    }
    
    final func getNotificationSettings(){
        center.getNotificationSettings { (settings) in
            if settings.authorizationStatus != .authorized{
                //Notifications not allowed
            }
        }
    }
}

extension LocalNotificationsManager{
    final func createNotification(type:String)->UNMutableNotificationContent{
        let content = UNMutableNotificationContent()
        content.title = type
        content.body = "This is Sample Local Notification "
        content.sound = UNNotificationSound.default
        return content
    }
    
    final func scheduleByCalender(){
        
    }
    
    final func scheduleByLocation(){
        
    }
    
    final func scheduleByTime(){
        
    }
}

extension LocalNotificationsManager{
    
    final func userNotificationWithAction(){
        
    }
}
