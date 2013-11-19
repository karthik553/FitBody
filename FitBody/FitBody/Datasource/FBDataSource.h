//
//  FBDataSource.h
//  FitBody
//
//  Created by Manikanta.Sanisetty on 11/7/13.
//  Copyright (c) 2013 SD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FBDataSource : NSObject
+ (id)sharedManager;
- (void)syncDataFromDropbox;
- (NSFetchedResultsController *)fetchUniqueMainMuscleWorkouts;
- (NSFetchedResultsController *)fetchExerciseDetailsForKey:(NSString *)exerciseKey;
@end
