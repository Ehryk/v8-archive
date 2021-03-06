

#import "DRCTSGetPreferencesManagedObjectBuilder.h"

/**
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen
* Do not edit the class manually.
*/

@implementation DRCTSGetPreferencesManagedObjectBuilder

-(instancetype)init {
    self = [super init];
    if (self != nil) {
       _metaBuilder = [[DRCTSGetTablesMetaManagedObjectBuilder alloc] init];
       _dataBuilder = [[DRCTSGetPreferencesDataManagedObjectBuilder alloc] init];
    }
    return self;
}

-(DRCTSGetPreferencesManagedObject*)createNewDRCTSGetPreferencesManagedObjectInContext:(NSManagedObjectContext*)context {
    DRCTSGetPreferencesManagedObject *managedObject = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass([DRCTSGetPreferencesManagedObject class]) inManagedObjectContext:context];
    return managedObject;
}

-(DRCTSGetPreferencesManagedObject*)DRCTSGetPreferencesManagedObjectFromDRCTSGetPreferences:(DRCTSGetPreferences*)object context:(NSManagedObjectContext*)context {
    DRCTSGetPreferencesManagedObject* newDRCTSGetPreferences = [self createNewDRCTSGetPreferencesManagedObjectInContext:context];
    [self updateDRCTSGetPreferencesManagedObject:newDRCTSGetPreferences withDRCTSGetPreferences:object];
    return newDRCTSGetPreferences;
}

-(void)updateDRCTSGetPreferencesManagedObject:(DRCTSGetPreferencesManagedObject*)managedObject withDRCTSGetPreferences:(DRCTSGetPreferences*)object {
    if(!managedObject || !object) {
        return;
    }
    NSManagedObjectContext* context = managedObject.managedObjectContext;

    if(!managedObject.meta) {
        managedObject.meta = [self.metaBuilder DRCTSGetTablesMetaManagedObjectFromDRCTSGetTablesMeta:object.meta context:managedObject.managedObjectContext];
    } else {
        [self.metaBuilder updateDRCTSGetTablesMetaManagedObject:managedObject.meta withDRCTSGetTablesMeta:object.meta];
    }

    if(!managedObject.data) {
        managedObject.data = [self.dataBuilder DRCTSGetPreferencesDataManagedObjectFromDRCTSGetPreferencesData:object.data context:managedObject.managedObjectContext];
    } else {
        [self.dataBuilder updateDRCTSGetPreferencesDataManagedObject:managedObject.data withDRCTSGetPreferencesData:object.data];
    }

}

-(DRCTSGetPreferences*)DRCTSGetPreferencesFromDRCTSGetPreferencesManagedObject:(DRCTSGetPreferencesManagedObject*)obj {
    if(!obj) {
        return nil;
    }
    DRCTSGetPreferences* newDRCTSGetPreferences = [[DRCTSGetPreferences alloc] init];
    [self updateDRCTSGetPreferences:newDRCTSGetPreferences withDRCTSGetPreferencesManagedObject:obj];
    return newDRCTSGetPreferences;
}

-(void)updateDRCTSGetPreferences:(DRCTSGetPreferences*)newDRCTSGetPreferences withDRCTSGetPreferencesManagedObject:(DRCTSGetPreferencesManagedObject*)obj {
    newDRCTSGetPreferences.meta = [self.metaBuilder DRCTSGetTablesMetaFromDRCTSGetTablesMetaManagedObject:obj.meta];
    newDRCTSGetPreferences.data = [self.dataBuilder DRCTSGetPreferencesDataFromDRCTSGetPreferencesDataManagedObject:obj.data];
}

@end
