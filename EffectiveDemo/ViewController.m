//
//  ViewController.m
//  EffectiveDemo
//
//  Created by ligui on 16/5/18.
//  Copyright © 2016年 ligui. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import "EOCAutoDictionary.h"

@interface ViewController ()<UIAlertViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    EOCAutoDictionary *dict = [EOCAutoDictionary new];
    dict.date = [NSDate dateWithTimeIntervalSinceNow:900];
    NSLog(@"date====%@",dict.date);
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)alertBtnClick:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"警告" message:@"是时候展现真正的实力啦" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"继续", nil];
    void (^block)(NSInteger) = ^(NSInteger buttonIndex){
        if (buttonIndex == 0) {
            [self doCancel];
        } else {
            [self doContinue];
        }
    };
    objc_setAssociatedObject(alert, @"EOCMyAlertViewKey", block, OBJC_ASSOCIATION_COPY);
    [alert show];
}
- (void)doCancel
{
    NSLog(@"cancel");
}
- (void)doContinue
{
    NSLog(@"continue");
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    void (^block)(NSInteger) = objc_getAssociatedObject(alertView, @"EOCMyAlertViewKey");
    block(buttonIndex);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
