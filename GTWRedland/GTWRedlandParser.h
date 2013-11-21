#import <Foundation/Foundation.h>
#import <GTWSWBase/GTWSWBase.h>
#import <GTWSWBase/GTWIRI.h>
#include <raptor2.h>

@interface GTWRedlandParser : NSObject<GTWPlugin, GTWRDFParser>

@property raptor_world* raptor_world_ptr;
@property raptor_parser* parser;
@property (retain) NSData* data;
@property (retain) NSFileHandle* fh;
@property (retain, readwrite) GTWIRI* baseURI;
@property (copy) NSString* format;
@property dispatch_queue_t raptor_queue;

- (id<GTWParser>) initWithData: (NSData*) data base: (id<GTWIRI>) base;

@end
