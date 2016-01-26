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
        
        _currentY = 0;
    }
    return self;
}

- (void)panMethod:(UIPanGestureRecognizer *)sender {
    CGPoint translation = [sender translationInView:self];
    self.bounds = CGRectMake(0, -translation.y, CGRectGetWidth(self.bounds), CGRectGetHeight(self.bounds));

}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
