//
//  ViewController.h
//  ToDoApp
//
//  Created by Alok Upadhyay on 08/03/21.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController  <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) NSArray *titles;


@end

