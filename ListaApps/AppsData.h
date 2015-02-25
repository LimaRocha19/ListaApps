//
//  AppsData.h
//  ListaApps
//
//  Created by Gustavo Tiago on 25/02/15.
//  Copyright (c) 2015 Isaías Lima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppsData : NSObject
{
     NSMutableArray *nomeApps;
     NSMutableArray *categoriaApps;
     NSMutableArray *imagemApps;

}
@property NSMutableArray *nomeApps;
@property NSMutableArray *categoriaApps;
@property NSMutableArray *imagemApps;

+(AppsData *) instance;
-(id)init;
@end
