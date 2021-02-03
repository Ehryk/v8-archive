#import <Foundation/Foundation.h>
#import "DRCTSObject.h"

/**
* directus.io
* API for directus.io
*
* OpenAPI spec version: 1.1
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/





@protocol DRCTSGetTableRowsMeta
@end

@interface DRCTSGetTableRowsMeta : DRCTSObject


@property(nonatomic) NSString* type;

@property(nonatomic) NSString* table;

@property(nonatomic) NSNumber* total;

@property(nonatomic) NSNumber* active;

@property(nonatomic) NSNumber* delete;

@property(nonatomic) NSNumber* draft;

@property(nonatomic) NSNumber* totalEntries;

@end