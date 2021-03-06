/*
	GView.m
	
	
	Created by Cristiano Coutinho Caldas on 6/19/11.
	Copyright 2011 Cristiano Coutinho Caldas. All rights reserved.
*/

#import "GView.h"

@implementation UIView(Extension)
//@synthesize dispatcher;

-(float)x		{ return self.frame.origin.x; }
-(float)y		{ return self.frame.origin.y; }
-(float)width	{ return self.frame.size.width; }
-(float)height	{ return self.frame.size.height; }

-(void)setX:(float)x			{ [ViewUtil move:self x:x]; }
-(void)setY:(float)y			{ [ViewUtil move:self y:y]; }
-(void)setWidth:(float)width	{ [ViewUtil resize:self width:width]; }
-(void)setHeight:(float)height	{ [ViewUtil resize:self height:height]; }

-(BOOL)visible					{ return !self.hidden; }
-(void)setVisible:(BOOL)visible { self.hidden = !visible; }

-(void)move:(float)x y:(float)y					{ [ViewUtil move:self x:x y:y]; }
-(void)resize:(float)width height:(float)height { [ViewUtil resize:self width:width height:height]; }

@end


