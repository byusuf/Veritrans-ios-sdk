//
//  MidtransWidgetLabel.m
//  MidtransWidget
//
//  Created by Arie on 11/1/16.
//  Copyright © 2016 Arie. All rights reserved.
//

#import "MidtransWidgetLabel.h"

@implementation MidtransWidgetLabel

- (instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _rightPadding = 15.0f;
        _topPadding = 0.0f;
        _leftPadding = 15.0f;
        _bottomPadding = 0.0f;
    }
    return self;
}

- (void)drawTextInRect:(CGRect)rect {
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, UIEdgeInsetsMake(self.topPadding, self.leftPadding, self.bottomPadding, self.rightPadding))];
}

- (void)setLeftPadding:(NSUInteger)leftPadding {
    _leftPadding = leftPadding;
    [self setNeedsDisplay];
}

- (void)setRightPadding:(NSUInteger)rightPadding {
    _rightPadding = rightPadding;
    [self setNeedsDisplay];
}

- (void)setTopPadding:(NSUInteger)topPadding {
    _topPadding = topPadding;
    [self setNeedsDisplay];
}

- (void)setBottomPadding:(NSUInteger)bottomPadding {
    _bottomPadding = bottomPadding;
    [self setNeedsDisplay];
}

@end
