//
//  TRZXConfirmFinancingViewController.m
//  TRZXConfirmFinancing
//
//  Created by N年後 on 2017/1/21.
//  Copyright © 2017年 TRZX. All rights reserved.
//

#import "TRZXConfirmFinancingViewController.h"
#import "TRZXNetwork.h"
@interface TRZXConfirmFinancingViewController ()
@property (strong, nonatomic)  UIButton *sureButton;

@end

@implementation TRZXConfirmFinancingViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.navigationItem.title = [NSString stringWithFormat:@"确认申请购买(%@)",self.projectTitle];

    [self.view addSubview:self.sureButton];



    // Do any additional setup after loading the view.
}
- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    self.sureButton.frame = CGRectMake(0, 0, 100, 100);
    self.sureButton.center = self.view.center;

}

- (void)didClickSureButton:(UIButton *)button
{
    if (self.navigationController) {
        [self.navigationController popViewControllerAnimated:YES];
    }else{

      



        [TRZXNetwork requestWithUrl:@"/api/map/city/findAllList/" params:nil method:GET callbackBlock:^(id response, NSError *error) {

            [self dismissViewControllerAnimated:YES completion:^{
                if (self.confirmComplete) {
                    self.confirmComplete(@"购买成功");
                }
            }];

            
        }];



    }
}

#pragma mark - getters
- (UIButton *)sureButton
{
    if (_sureButton == nil) {
        _sureButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_sureButton setTitle:@"立即下单" forState:UIControlStateNormal];
        [_sureButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _sureButton.backgroundColor = [UIColor redColor];
        [_sureButton addTarget:self action:@selector(didClickSureButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _sureButton;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
