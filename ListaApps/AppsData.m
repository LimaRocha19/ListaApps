//
//  AppsData.m
//  ListaApps
//
//  Created by Gustavo Tiago on 25/02/15.
//  Copyright (c) 2015 Isaías Lima. All rights reserved.
//

#import "AppsData.h"

@implementation AppsData
@synthesize nomeApps, categoriaApps, imagemApps;

static AppsData * instance = nil;

+(AppsData *) instance{
    
    if (instance == nil){
        instance = [[AppsData alloc] init];
    }
    return instance;
    
}
-(id)init {
    if (self) {
        nomeApps = [[NSMutableArray alloc]init];
        categoriaApps = [[NSMutableArray alloc]init];
        imagemApps = [[NSMutableArray alloc]init];
        
        [nomeApps addObject:@"Waze"];
        [nomeApps addObject:@"Google maps"];
        [nomeApps addObject:@"Facebook"];
        [nomeApps addObject:@"Whatsapp"];
        [nomeApps addObject:@"eBay"];
        [nomeApps addObject:@"Ingresso"];
        
        [categoriaApps addObject:@"Navegação"];
        [categoriaApps addObject:@"Navegação"];
        [categoriaApps addObject:@"Social"];
        [categoriaApps addObject:@"Social"];
        [categoriaApps addObject:@"Negócios"];
        [categoriaApps addObject:@"Negócios"];
        
        [imagemApps addObject:@"Waze"];
        [imagemApps addObject:@"Google_maps"];
        [imagemApps addObject:@"Facebook"];
        [imagemApps addObject:@"Whatsapp"];
        [imagemApps addObject:@"eBay"];
        [imagemApps addObject:@"Ingresso"];
    }
    return self;
}
@end
