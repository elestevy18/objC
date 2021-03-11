//
//  ToDo.h
//  ToDoApp
//
//  Created by Alok Upadhyay on 08/03/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ToDo : NSObject
@property (nonatomic, assign) NSInteger userId;
@property (nonatomic, assign) NSInteger ID;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, assign) BOOL completed;

+(NSArray *)getParsedData:(NSArray *)responseArray;

@end

NS_ASSUME_NONNULL_END
