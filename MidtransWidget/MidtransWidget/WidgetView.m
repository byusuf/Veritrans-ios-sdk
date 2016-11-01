//
//  WidgetView.m
//  MidtransWidget
//
//  Created by Arie on 10/31/16.
//  Copyright © 2016 Arie. All rights reserved.
//

#import "WidgetView.h"

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
    UIView *view = [[frameworkBundle loadNibNamed:@"WidgetView" owner:nil options:nil] firstObject];
    [self addSubview:view];
}
@end
