//
//  ViewController.h
//  Obj C TableView
//
//  Created by Kevin Jimenez on 3/2/21.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,
UITableViewDelegate>
{

    IBOutlet UITableView *myTable;
    NSMutableArray *myArray;
}



@end

