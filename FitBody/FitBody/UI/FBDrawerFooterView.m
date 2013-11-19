//
//  FBDrawerFooterView.m
//  FitBody
//
//  Created by Manikanta.Sanisetty on 11/15/13.
//  Copyright (c) 2013 SD. All rights reserved.
//

#import "FBDrawerFooterView.h"
#import "FBDataSource.h"

@implementation FBDrawerFooterView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:[[[NSBundle mainBundle] loadNibNamed:@"FBDrawerFooterView" owner:self options:nil] objectAtIndex:0]];
    }
    return self;
}

- (IBAction)syncButtonTapped:(id)sender {
    [[FBDataSource sharedManager] syncDataFromDropbox];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
