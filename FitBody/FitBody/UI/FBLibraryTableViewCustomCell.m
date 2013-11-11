//
//  FBLibraryCustomCell.m
//  FitBody
//
//  Created by Manikanta.Sanisetty on 11/9/13.
//  Copyright (c) 2013 SD. All rights reserved.
//

#import "FBLibraryTableViewCustomCell.h"

@interface FBLibraryTableViewCustomCell ()
@property (weak, nonatomic) IBOutlet UILabel *targetedMuscleNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *targetedMuscleImageView;

@end

@implementation FBLibraryTableViewCustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setTargetedMuscleName:(NSString *)targetedMuscleName {
    _targetedMuscleName = targetedMuscleName;
    [self.targetedMuscleNameLabel setText:targetedMuscleName];
    [self.targetedMuscleImageView setImage:[UIImage imageNamed:@"missing_image_na_large"]];
}

@end
