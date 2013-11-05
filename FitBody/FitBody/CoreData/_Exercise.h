// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Exercise.h instead.

#import <CoreData/CoreData.h>


extern const struct ExerciseAttributes {
	__unsafe_unretained NSString *equipment;
	__unsafe_unretained NSString *force;
	__unsafe_unretained NSString *level;
	__unsafe_unretained NSString *mainMuscleWorked;
	__unsafe_unretained NSString *mechanicsType;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *photos;
	__unsafe_unretained NSString *sport;
	__unsafe_unretained NSString *type;
	__unsafe_unretained NSString *videos;
} ExerciseAttributes;

extern const struct ExerciseRelationships {
} ExerciseRelationships;

extern const struct ExerciseFetchedProperties {
} ExerciseFetchedProperties;













@interface ExerciseID : NSManagedObjectID {}
@end

@interface _Exercise : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (ExerciseID*)objectID;





@property (nonatomic, strong) NSString* equipment;



//- (BOOL)validateEquipment:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* force;



//- (BOOL)validateForce:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* level;



//- (BOOL)validateLevel:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* mainMuscleWorked;



//- (BOOL)validateMainMuscleWorked:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* mechanicsType;



//- (BOOL)validateMechanicsType:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSData* photos;



//- (BOOL)validatePhotos:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* sport;



//- (BOOL)validateSport:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* type;



//- (BOOL)validateType:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSData* videos;



//- (BOOL)validateVideos:(id*)value_ error:(NSError**)error_;






@end

@interface _Exercise (CoreDataGeneratedAccessors)

@end

@interface _Exercise (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveEquipment;
- (void)setPrimitiveEquipment:(NSString*)value;




- (NSString*)primitiveForce;
- (void)setPrimitiveForce:(NSString*)value;




- (NSString*)primitiveLevel;
- (void)setPrimitiveLevel:(NSString*)value;




- (NSString*)primitiveMainMuscleWorked;
- (void)setPrimitiveMainMuscleWorked:(NSString*)value;




- (NSString*)primitiveMechanicsType;
- (void)setPrimitiveMechanicsType:(NSString*)value;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSData*)primitivePhotos;
- (void)setPrimitivePhotos:(NSData*)value;




- (NSString*)primitiveSport;
- (void)setPrimitiveSport:(NSString*)value;




- (NSString*)primitiveType;
- (void)setPrimitiveType:(NSString*)value;




- (NSData*)primitiveVideos;
- (void)setPrimitiveVideos:(NSData*)value;




@end
