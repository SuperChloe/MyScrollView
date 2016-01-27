//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Chloe on 2016-01-25.
//  Copyright © 2016 Chloe Horgan. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panMethod:)];
        [self addGestureRecognizer:panGesture];
        
    }
    return self;
}

- (void)panMethod:(UIPanGestureRecognizer *)sender {
    CGPoint translation = [sender translationInView:self];
    CGFloat y = translation.y - self.lastLocation.y;

    if (self.frame.origin.y + y >= [[UIScreen mainScreen] bounds].size.height - self.frame.size.height && self.frame.origin.y + y <= 0) {
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y + y, 400, 750);
    }

    self.lastLocation = translation;
    
    if (sender.state == UIGestureRecognizerStateEnded) {
        self.lastLocation = CGPointMake(0, 0);
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
