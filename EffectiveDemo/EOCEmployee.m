//
//  EOCEmployee.m
//  EffectiveDemo
//
//  Created by ligui on 16/5/18.
//  Copyright © 2016年 ligui. All rights reserved.
//

#import "EOCEmployee.h"

@implementation EOCEmployee
+ (EOCEmployee *)employeeWithType:(EOCEmployeeType)type
{
    switch (type) {
        case EOCEmployeeTypeDeveloper:
            return [EOCEmployeeDeveloper new];
            break;
        case EOCEmployeeTypeDesigner:
            return [EOCEmployeeDesigner new];
            break;
        case EOCEmployeeTypeFinance:
            return [EOCEmployeeFinance new];
            break;
    }
}
- (void)doADaysWork
{
    
}
@end
@implementation EOCEmployeeDeveloper

@end
@implementation EOCEmployeeDesigner

@end
@implementation EOCEmployeeFinance

@end