//
//  ToDoViewModel.h
//  ToDoApp
//
//  Created by Alok Upadhyay on 08/03/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ToDoViewModel : NSObject
-(void)getData:(NSString *)userName
    completion:(void (^)(void))completionBlock;
-(NSArray *)returnArray;
-(NSString *)returnTitle;
@end

NS_ASSUME_NONNULL_END
