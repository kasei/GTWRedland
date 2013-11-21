//
//  GTWRedlandPlugin.m
//  GTWRedland
//
//  Created by Gregory Williams on 11/20/13.
//  Copyright (c) 2013 Gregory Todd Williams. All rights reserved.
//

#import "GTWRedlandPlugin.h"
#import "GTWRedlandTripleStore.h"
#import "GTWRedlandParser.h"
#include <redland.h>

librdf_world* librdf_world_ptr;
raptor_world* raptor_world_ptr;

@implementation GTWRedlandPlugin

+ (unsigned)interfaceVersion {
    return 0;
}

+ (NSSet*) implementedProtocols {
    return [NSSet set];
}

+ (NSDictionary*) classesImplementingProtocols {
    NSSet* storeSet     = [GTWRedlandTripleStore implementedProtocols];
    NSSet* parserSet    = [GTWRedlandParser implementedProtocols];
    return @{
             (id)[GTWRedlandTripleStore class]: storeSet,
             (id)[GTWRedlandParser class]: parserSet
             };
}

+ (void)load {
	librdf_world_ptr	= librdf_new_world();
    raptor_world_ptr    = raptor_new_world();
}

- (void)dealloc {
    librdf_free_world(librdf_world_ptr);
    raptor_free_world(raptor_world_ptr);
}

@end
