//
//  AppDelegate.h
//  Obj C TableView
//
//  Created by Kevin Jimenez on 3/2/21.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

