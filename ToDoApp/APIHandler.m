//
//  APIHandler.m
//  ToDoApp
//
//  Created by Alok Upadhyay on 08/03/21.
//

#import "APIHandler.h"
#import "ToDo.h"

@implementation APIHandler

+ (instancetype)sharedInstance
{
    static dispatch_once_t once;
    static id sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [self new];
    });
    return sharedInstance;
}

//block syntax 1 void (^) (NSInteger count, NSStrint *name)
//=>Swift
//(void)->(Int, String)


//block syntax 2 void (^) ()
//block syntax 3 void (^) (void)
//block syntax 4 (NSString *) (^) (void)
//block syntax 5 (NSString *) (^) (NSInteger)

//=>Swift
//(void)->()




-(void)getDataWithCompletionHandler:(void (^)(NSArray * _Nullable array, NSError * _Nullable error))completionHandler {
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURL *url = [[NSURL alloc] initWithString:@"https://jsonplaceholder.typicode.com/todos/"];
    
    [[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        //status code is 200 and < 300
        if (error == nil && data != nil) {
            
            //parse data now
            
            NSArray *resp = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
            NSArray *arrOfTodoObject = [ToDo getParsedData:resp];
            completionHandler(arrOfTodoObject, error);
        } else {
            
        }
                
        }] resume];
    
}


@end
