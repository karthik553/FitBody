//
//  FBDataSource.m
//  FitBody
//
//  Created by Manikanta.Sanisetty on 11/7/13.
//  Copyright (c) 2013 SD. All rights reserved.
//

#import "FBDataSource.h"
#import "Exercise.h"
#import "FBConstants.h"
#import <RestKit/RestKit.h>

@implementation FBDataSource

+ (id)sharedManager {
    static FBDataSource *datasource = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        datasource = [[self alloc] init];
    });
    return datasource;
}

- (id)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (void)syncDataFromDropbox {
    [[RKObjectManager sharedManager] getObjectsAtPath:kFBWorkoutLibraryURL parameters:nil success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {

    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        [[[UIAlertView alloc] initWithTitle:@"Sync Error" message:@"Unable to sync" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        NSLog(@"Error: %@", error);
    }];
}

- (NSFetchedResultsController *)fetchUniqueMainMuscleWorkouts {
    NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:NSStringFromClass([Exercise class])];
    fetchRequest.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:kMainMuscleWorked ascending:YES]];
    fetchRequest.returnsDistinctResults = YES;
    fetchRequest.resultType = NSDictionaryResultType;
    fetchRequest.propertiesToFetch = [NSArray arrayWithObjects:kMainMuscleWorked, nil];
    NSFetchedResultsController *fetchedResultController = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:[RKManagedObjectStore defaultStore].mainQueueManagedObjectContext sectionNameKeyPath:nil cacheName:@"Library"];
    NSError *error = nil;
    [fetchedResultController performFetch:&error];
    NSLog(@"Unique Main Muscle Workouts: %@", [fetchedResultController fetchedObjects]);
    NSAssert(!error, @"Error performing fetch request: %@", error);
    return (fetchedResultController) ? fetchedResultController : nil;
}

- (NSFetchedResultsController *)fetchExerciseDetailsForKey:(NSString *)exerciseKey {
    NSString *exerciseClassName = NSStringFromClass([Exercise class]);
    NSManagedObjectContext *manageObjectContext = [RKManagedObjectStore defaultStore].mainQueueManagedObjectContext;
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"mainMuscleWorked MATCHES %@", exerciseKey];
    NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:exerciseClassName];
    fetchRequest.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:kName ascending:YES]];
    fetchRequest.predicate = predicate;
    
    NSFetchedResultsController *fetchedResultController = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:manageObjectContext sectionNameKeyPath:nil cacheName:@"ExerciseDetails"];
    NSError *error;
    [fetchedResultController performFetch:&error];
    NSLog(@"%@", [fetchedResultController fetchedObjects]);
    NSAssert(!error, @"Error performing exercise details fetch request: %@", error);
    return (fetchedResultController) ? fetchedResultController : nil;
}

@end
