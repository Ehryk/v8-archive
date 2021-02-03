

#import "DRCTSGetTableRowManagedObjectBuilder.h"

/**
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen
* Do not edit the class manually.
*/

@implementation DRCTSGetTableRowManagedObjectBuilder

-(instancetype)init {
    self = [super init];
    if (self != nil) {
       _metaBuilder = [[DRCTSGetTablesMetaManagedObjectBuilder alloc] init];
       _dataBuilder = [[DRCTSGetTableRowsDataManagedObjectBuilder alloc] init];
    }
    return self;
}

-(DRCTSGetTableRowManagedObject*)createNewDRCTSGetTableRowManagedObjectInContext:(NSManagedObjectContext*)context {
    DRCTSGetTableRowManagedObject *managedObject = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass([DRCTSGetTableRowManagedObject class]) inManagedObjectContext:context];
    return managedObject;
}

-(DRCTSGetTableRowManagedObject*)DRCTSGetTableRowManagedObjectFromDRCTSGetTableRow:(DRCTSGetTableRow*)object context:(NSManagedObjectContext*)context {
    DRCTSGetTableRowManagedObject* newDRCTSGetTableRow = [self createNewDRCTSGetTableRowManagedObjectInContext:context];
    [self updateDRCTSGetTableRowManagedObject:newDRCTSGetTableRow withDRCTSGetTableRow:object];
    return newDRCTSGetTableRow;
}

-(void)updateDRCTSGetTableRowManagedObject:(DRCTSGetTableRowManagedObject*)managedObject withDRCTSGetTableRow:(DRCTSGetTableRow*)object {
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
        managedObject.data = [self.dataBuilder DRCTSGetTableRowsDataManagedObjectFromDRCTSGetTableRowsData:object.data context:managedObject.managedObjectContext];
    } else {
        [self.dataBuilder updateDRCTSGetTableRowsDataManagedObject:managedObject.data withDRCTSGetTableRowsData:object.data];
    }

}

-(DRCTSGetTableRow*)DRCTSGetTableRowFromDRCTSGetTableRowManagedObject:(DRCTSGetTableRowManagedObject*)obj {
    if(!obj) {
        return nil;
    }
    DRCTSGetTableRow* newDRCTSGetTableRow = [[DRCTSGetTableRow alloc] init];
    [self updateDRCTSGetTableRow:newDRCTSGetTableRow withDRCTSGetTableRowManagedObject:obj];
    return newDRCTSGetTableRow;
}

-(void)updateDRCTSGetTableRow:(DRCTSGetTableRow*)newDRCTSGetTableRow withDRCTSGetTableRowManagedObject:(DRCTSGetTableRowManagedObject*)obj {
    newDRCTSGetTableRow.meta = [self.metaBuilder DRCTSGetTablesMetaFromDRCTSGetTablesMetaManagedObject:obj.meta];
    newDRCTSGetTableRow.data = [self.dataBuilder DRCTSGetTableRowsDataFromDRCTSGetTableRowsDataManagedObject:obj.data];
}

@end