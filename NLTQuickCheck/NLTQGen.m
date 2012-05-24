//
//  NLTQGen.m
//  NLTQuickCheck
//
//  Created by KAZUMA Ukyo on 12/05/23.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NLTQGen.h"

@implementation NLTQGen {
    
    __generateBlock _block;
}

- (id)initWithGenerateBlock:(__generateBlock)block {
    
    self = [super init];
    if(self) {
        _block = block;
    }
    return self;
}

+ (id)genWithGenerateBlock:(__generateBlock)block {
    
    return [[self alloc] initWithGenerateBlock:block];
}

- (id)valueWithProgress:(double)progress {
    
    return _block(progress);
}
@end
