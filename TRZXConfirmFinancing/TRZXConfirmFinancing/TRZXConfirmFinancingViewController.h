//
//  TRZXConfirmFinancingViewController.h
//  TRZXConfirmFinancing
//
//  Created by N年後 on 2017/1/21.
//  Copyright © 2017年 TRZX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TRZXConfirmFinancingViewController : UIViewController
@property (nonatomic, copy) NSString *projectId;
@property (nonatomic, copy) NSString *projectTitle;
@property (nonatomic, copy) dispatch_block_t confirmComplete;

@end
