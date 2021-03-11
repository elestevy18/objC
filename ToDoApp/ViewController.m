//
//  ViewController.m
//  ToDoApp
//
//  Created by Alok Upadhyay on 08/03/21.
//

#import "ViewController.h"
#import "ToDoViewModel.h"
#import "UpdateText.h"
//#import "ToDoViewModel.m"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) ToDoViewModel *vm;
@property (nonatomic, strong) NSArray *dataArray;
@property (nonatomic, strong) NSString *titleString;

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated{
    // Do any additional setup after loading the view.
}

- (void)viewDidLoad {
    [super viewDidLoad];
 
    self.vm = [ToDoViewModel new];
    [self.vm getData:@"Bob" completion:^{
        NSLog(@"completion handler");
        self.dataArray =  [self.vm returnArray];
        self.titleString = [self.dataArray[0] title];
        self.tableView.reloadData;
    }];
    

}

- (void)viewDidAppear:(BOOL)animated{
   
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  [self.dataArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [self.dataArray[indexPath.row] title];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UpdateText *uT = [self.storyboard instantiateViewControllerWithIdentifier:@"TextUpdate"];
    [uT setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    [self presentViewController:uT animated:YES completion:nil];
}

@end
