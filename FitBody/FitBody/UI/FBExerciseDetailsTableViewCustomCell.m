//
//  FBExerciseDetailsTableViewCustomCell.m
//  FitBody
//
//  Created by Manikanta.Sanisetty on 11/11/13.
//  Copyright (c) 2013 SD. All rights reserved.
//

#import "FBExerciseDetailsTableViewCustomCell.h"
#import "UIImageView+WebCache.h"

@interface FBExerciseDetailsTableViewCustomCell ()
@property (weak, nonatomic) IBOutlet UILabel *ratingLabel;
@property (weak, nonatomic) IBOutlet UIImageView *exerciseImageView1;
@property (weak, nonatomic) IBOutlet UIImageView *exerciseImageView2;
@property (weak, nonatomic) IBOutlet UILabel *exerciseNameLabel;

@end

@implementation FBExerciseDetailsTableViewCustomCell

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

- (void)setExerciseDetails:(Exercise *)exerciseDetails {
    _exerciseDetails = exerciseDetails;
    [self.exerciseNameLabel setText:exerciseDetails.name];
    [self.ratingLabel setText:exerciseDetails.rating];
    NSArray* array = [NSKeyedUnarchiver unarchiveObjectWithData:exerciseDetails.photos];
    [self.exerciseImageView1 setImageWithURL:[NSURL URLWithString:[array objectAtIndex:0]] placeholderImage:[UIImage imageNamed:@"missing_image_na_large"]];
    [self.exerciseImageView2 setImageWithURL:[NSURL URLWithString:[array objectAtIndex:1]] placeholderImage:[UIImage imageNamed:@"missing_image_na_large"]];
}

@end
