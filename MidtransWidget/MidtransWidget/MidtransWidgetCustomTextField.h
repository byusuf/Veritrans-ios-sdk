//
//  MidtransWidgetCustomTextField.h
//  MidtransWidget
//
//  Created by Arie on 11/1/16.
//  Copyright © 2016 Arie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MidtransWidgetCustomTextField : UITextField
@property (strong, nonatomic) NSString *errorMessage;
@property (assign, nonatomic) BOOL errorShown;
@property (assign, nonatomic) IBInspectable BOOL noBottomLine;
@property (assign, nonatomic) IBInspectable NSInteger floatingFontSize;
@property (assign, nonatomic) IBInspectable UIColor *placeholderLabelColor;
- (void)showErrorMessage;
@end
