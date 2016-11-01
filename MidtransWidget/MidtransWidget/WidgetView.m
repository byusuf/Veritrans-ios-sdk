//
//  WidgetView.m
//  MidtransWidget
//
//  Created by Arie on 10/31/16.
//  Copyright © 2016 Arie. All rights reserved.
//

#import "WidgetView.h"
#import "MidtransWidgetCustomTextField.h"
@interface WidgetView() <UITextFieldDelegate>

@end
@implementation WidgetView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self xibSetup];
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self xibSetup];
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self xibSetup];
    }
    return self;
}
- (void)xibSetup {
    NSString *frameworkBundleID = @"com.midtrans.MidtransWidget";
    NSBundle *frameworkBundle = [NSBundle bundleWithIdentifier:frameworkBundleID];
    UIView *view = [[frameworkBundle loadNibNamed:@"WidgetView" owner:self options:nil] firstObject];
    [self addSubview:view];
    view.translatesAutoresizingMaskIntoConstraints = false;

    NSDictionary *views = NSDictionaryOfVariableBindings(view);
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[view]|" options:NSLayoutFormatAlignAllBaseline metrics:nil views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:NSLayoutFormatAlignAllBaseline metrics:nil views:views]];

    self.backgroundColor = [UIColor whiteColor];
}
- (IBAction)payButtonDidTapped:(id)sender {
    self.cardNumberTextField.errorMessage = @"Kartu Salah";
    [self.cardNumberTextField showErrorMessage];

    self.cvvTextField.errorMessage = @"Kartu Salah";
    [self.cvvTextField showErrorMessage];

    self.expiredNumberTextField.errorMessage = @"Kartu Salah";
    [self.expiredNumberTextField showErrorMessage];

}
@end
