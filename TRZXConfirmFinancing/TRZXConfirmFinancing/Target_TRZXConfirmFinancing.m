//
//  Target_TRZXConfirmFinancing.m
//  TRZXConfirmFinancing
//
//  Created by N年後 on 2017/1/21.
//  Copyright © 2017年 TRZX. All rights reserved.
//

#import "Target_TRZXConfirmFinancing.h"
#import "TRZXConfirmFinancingViewController.h"

@implementation Target_TRZXConfirmFinancing

- (UIViewController *)Action_ConfirmFinancingViewController:(NSDictionary *)params
{
    TRZXConfirmFinancingViewController *confirmFinancingVC = [[TRZXConfirmFinancingViewController alloc] init];
    confirmFinancingVC.projectId = params[@"projectId"];
    confirmFinancingVC.projectTitle = params[@"projectTitle"];
    return confirmFinancingVC;
}

@end
