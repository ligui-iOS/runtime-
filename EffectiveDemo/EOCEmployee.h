//
//  EOCEmployee.h
//  EffectiveDemo
//
//  Created by ligui on 16/5/18.
//  Copyright © 2016年 ligui. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSUInteger, EOCEmployeeType){
    EOCEmployeeTypeDeveloper,
    EOCEmployeeTypeDesigner,
    EOCEmployeeTypeFinance,
};
@interface EOCEmployee : NSObject
@property (copy) NSString *name;
@property NSUInteger salary;
+ (EOCEmployee *)employeeWithType:(EOCEmployeeType)type;
- (void)doADaysWork;
@end
@interface EOCEmployeeDeveloper : EOCEmployee

@end
@interface EOCEmployeeDesigner : EOCEmployee

@end
@interface EOCEmployeeFinance : EOCEmployee

@end

