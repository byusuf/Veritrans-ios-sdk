//
//  WidgetViewController.m
//  VTDirectDemo
//
//  Created by Arie on 10/28/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import "WidgetViewController.h"
#import <MidtransWidget/MidtransWidget.h>
@interface WidgetViewController ()

@end

@implementation WidgetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MidtransWidgetViewController *masjidHomeVC = [[MidtransWidgetViewController alloc] init];
    [self.widgetView addSubview:masjidHomeVC.view];
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
