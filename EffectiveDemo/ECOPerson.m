//
//  ECOPerson.m
//  EffectiveDemo
//
//  Created by ligui on 16/5/18.
//  Copyright © 2016年 ligui. All rights reserved.
//

#import "ECOPerson.h"

@implementation ECOPerson
-(NSString *)fullName
{
    return [NSString stringWithFormat:@"%@ %@",self.firstName,self.lastName];
}
- (void)setFullName:(NSString *)fullName
{
    NSArray *components = [fullName componentsSeparatedByString:@" "];
    self.firstName = [components objectAtIndex:0];
    self.lastName = [components objectAtIndex:1];
}
- (BOOL)isEqual:(id)object
{
    if (self == object) {
        return YES;
    }
    if ([self class] != [object class]) {
        return NO;
    }
    ECOPerson *otherPerson = (ECOPerson *)object;
    if (![_firstName isEqualToString:otherPerson.firstName]) {
        return NO;
    }
    if (![_lastName isEqualToString:otherPerson.lastName]) {
        return NO;
    }
    if (_age != otherPerson.age) {
        return NO;
    }
    return YES;
}
@end
