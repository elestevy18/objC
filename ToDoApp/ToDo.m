//
//  ToDo.m
//  ToDoApp
//
//  Created by Alok Upadhyay on 08/03/21.
//

#import "ToDo.h"

@implementation ToDo

+(NSArray *)getParsedData:(NSArray *)responseArray {
    
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    
    for (NSDictionary *dictionary in responseArray) {
        
        NSInteger ID = [[dictionary objectForKey:@"id"] integerValue];
        NSInteger userId = [[dictionary objectForKey: @"userId"] integerValue];
        NSString *title = [dictionary objectForKey:@"title"];
        BOOL completed = [dictionary objectForKey:@"completed"];
        
        ToDo *todo = [[ToDo alloc] init];
        todo.completed = completed;
        todo.ID = ID;
        todo.title = title;
        todo.userId = userId;
        [arr addObject:todo];
   
    }
    
  
    return  [NSArray arrayWithArray:arr];
    

}
@end
