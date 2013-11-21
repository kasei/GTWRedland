#import <Foundation/Foundation.h>
#import <GTWSWBase/GTWTriple.h>
#include <redland.h>

@interface GTWRedlandTripleStore : NSObject<GTWTripleStore, GTWMutableTripleStore>

@property librdf_model* model;

+ (NSSet*) implementedProtocols;
- (GTWRedlandTripleStore*) initWithName: (NSString*) name redlandPtr: (librdf_world*) librdf_world_ptr;
- (GTWRedlandTripleStore*) initWithStore: (librdf_storage*) store redlandPtr: (librdf_world*) librdf_world_ptr;

@end
