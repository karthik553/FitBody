// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Exercise.h instead.

#import <CoreData/CoreData.h>


extern const struct ExerciseAttributes {
	__unsafe_unretained NSString *equipment;
	__unsafe_unretained NSString *femalePhotos;
	__unsafe_unretained NSString *femaleVideo;
	__unsafe_unretained NSString *force;
	__unsafe_unretained NSString *guideImage;
	__unsafe_unretained NSString *identifier;
	__unsafe_unretained NSString *level;
	__unsafe_unretained NSString *mainMuscleWorked;
	__unsafe_unretained NSString *malePhotos;
	__unsafe_unretained NSString *maleVideo;
	__unsafe_unretained NSString *mechanicsType;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *photos;
	__unsafe_unretained NSString *rating;
	__unsafe_unretained NSString *sport;
	__unsafe_unretained NSString *type;
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





@property (nonatomic, strong) NSData* femalePhotos;



//- (BOOL)validateFemalePhotos:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* femaleVideo;



//- (BOOL)validateFemaleVideo:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* force;



//- (BOOL)validateForce:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* guideImage;



//- (BOOL)validateGuideImage:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* identifier;



@property int32_t identifierValue;
- (int32_t)identifierValue;
- (void)setIdentifierValue:(int32_t)value_;

//- (BOOL)validateIdentifier:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* level;



//- (BOOL)validateLevel:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* mainMuscleWorked;



//- (BOOL)validateMainMuscleWorked:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSData* malePhotos;



//- (BOOL)validateMalePhotos:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* maleVideo;



//- (BOOL)validateMaleVideo:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* mechanicsType;



//- (BOOL)validateMechanicsType:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSData* photos;



//- (BOOL)validatePhotos:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* rating;



//- (BOOL)validateRating:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* sport;



//- (BOOL)validateSport:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* type;



//- (BOOL)validateType:(id*)value_ error:(NSError**)error_;






@end

@interface _Exercise (CoreDataGeneratedAccessors)

@end

@interface _Exercise (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveEquipment;
- (void)setPrimitiveEquipment:(NSString*)value;




- (NSData*)primitiveFemalePhotos;
- (void)setPrimitiveFemalePhotos:(NSData*)value;




- (NSString*)primitiveFemaleVideo;
- (void)setPrimitiveFemaleVideo:(NSString*)value;




- (NSString*)primitiveForce;
- (void)setPrimitiveForce:(NSString*)value;




- (NSString*)primitiveGuideImage;
- (void)setPrimitiveGuideImage:(NSString*)value;




- (NSNumber*)primitiveIdentifier;
- (void)setPrimitiveIdentifier:(NSNumber*)value;

- (int32_t)primitiveIdentifierValue;
- (void)setPrimitiveIdentifierValue:(int32_t)value_;




- (NSString*)primitiveLevel;
- (void)setPrimitiveLevel:(NSString*)value;




- (NSString*)primitiveMainMuscleWorked;
- (void)setPrimitiveMainMuscleWorked:(NSString*)value;




- (NSData*)primitiveMalePhotos;
- (void)setPrimitiveMalePhotos:(NSData*)value;




- (NSString*)primitiveMaleVideo;
- (void)setPrimitiveMaleVideo:(NSString*)value;




- (NSString*)primitiveMechanicsType;
- (void)setPrimitiveMechanicsType:(NSString*)value;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSData*)primitivePhotos;
- (void)setPrimitivePhotos:(NSData*)value;




- (NSString*)primitiveRating;
- (void)setPrimitiveRating:(NSString*)value;




- (NSString*)primitiveSport;
- (void)setPrimitiveSport:(NSString*)value;




- (NSString*)primitiveType;
- (void)setPrimitiveType:(NSString*)value;




@end
