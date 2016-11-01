//
//  WidgetView.h
//  MidtransWidget
//
//  Created by Arie on 10/31/16.
//  Copyright © 2016 Arie. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MidtransWidgetCustomTextField;
@interface WidgetView : UIView
@property (weak, nonatomic) IBOutlet MidtransWidgetCustomTextField *cardNumberTextField;
@property (weak, nonatomic) IBOutlet UIButton *payNowButton;
@property (weak, nonatomic) IBOutlet MidtransWidgetCustomTextField *expiredNumberTextField;
@property (weak, nonatomic) IBOutlet MidtransWidgetCustomTextField *cvvTextField;
@end
