// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Exercise.m instead.

#import "_Exercise.h"

const struct ExerciseAttributes ExerciseAttributes = {
	.equipment = @"equipment",
	.force = @"force",
	.level = @"level",
	.mainMuscleWorked = @"mainMuscleWorked",
	.mechanicsType = @"mechanicsType",
	.name = @"name",
	.photos = @"photos",
	.sport = @"sport",
	.type = @"type",
	.videos = @"videos",
};

const struct ExerciseRelationships ExerciseRelationships = {
};

const struct ExerciseFetchedProperties ExerciseFetchedProperties = {
};

@implementation ExerciseID
@end

@implementation _Exercise

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Exercise" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Exercise";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Exercise" inManagedObjectContext:moc_];
}

- (ExerciseID*)objectID {
	return (ExerciseID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic equipment;






@dynamic force;






@dynamic level;






@dynamic mainMuscleWorked;






@dynamic mechanicsType;






@dynamic name;






@dynamic photos;






@dynamic sport;






@dynamic type;






@dynamic videos;











@end
