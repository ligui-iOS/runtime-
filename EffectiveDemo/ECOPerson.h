//
//  ECOPerson.h
//  EffectiveDemo
//
//  Created by ligui on 16/5/18.
//  Copyright © 2016年 ligui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ECOPerson : NSObject
@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, assign) NSUInteger *age;
- (NSString *)fullName;
- (void)setFullName:(NSString *)fullName;
@end
