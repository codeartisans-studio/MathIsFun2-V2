//
//  Game.m
//  AppScaffold
//
//  Created by Daniel Sperl on 14.01.10.
//  Copyright 2010 Incognitek. All rights reserved.
//

#import "Game.h" 
#import "Engine.h"

@implementation Game

- (id)initWithWidth:(float)width height:(float)height
{
    if (self = [super initWithWidth:width height:height])
    {
        // this is where the code of your game will start. 
        // in this sample, we add just a simple quad to see if it works.
        /*
        SPQuad *quad = [SPQuad quadWithWidth:100 height:100];
        quad.color = 0xff0000;
        quad.x = 50;
        quad.y = 50;
        [self addChild:quad];
        */
        // Per default, this project compiles as an iPhone application. To change that, enter the 
        // project info screen, and in the "Build"-tab, find the setting "Targeted device family".
        //
        // Now Choose:  
        //   * iPhone      -> iPhone only App
        //   * iPad        -> iPad only App
        //   * iPhone/iPad -> Universal App  
        // 
        // If you want to support the iPad, you have to change the "iOS deployment target" setting
        // to "iOS 3.2" (or "iOS 4.2", if it is available.)
		Engine *e=[[Engine alloc] initialise];
		[self addChild:e];
		[e release];
		
    }
    return self;
}
@end
