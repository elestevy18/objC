//
//  ToDoViewModel.m
//  ToDoApp
//
//  Created by Alok Upadhyay on 08/03/21.
//

#import "ToDoViewModel.h"

#import "APIHandler.h"

@interface ToDoViewModel ()
@property (nonatomic, strong) NSArray *array;
@property (nonatomic, strong) NSError *error;
//typedef void (^Completion)();

@end

@implementation ToDoViewModel
- (void)getData:(NSString *)userName
     completion:(void (^)(void))completionBlock{
    [[APIHandler sharedInstance] getDataWithCompletionHandler:^(NSArray * _Nullable array, NSError * _Nullable error) {
        self.array = array;
        self.error = error;
        completionBlock();
    }];
}

-(NSArray *)returnArray {
  
    if (self.array != nil){
        return self.array;
    }
    return self.array;
}

-(NSString *)returnTitle {
    return [self.array[1] title];
}
@end
