//
// SBStackedBarChart.m
//
// Created by Scott Bossak on 12/26/2011
// Copyright (C) 2011 Scott Bossak
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy of
// this software and associated documentation files (the "Software"), to deal in
// the Software without restriction, including without limitation the rights to
// use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
// of the Software, and to permit persons to whom the Software is furnished to do
// so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE. 


#import "SBStackedBarChart.h"

@implementation SBBarSegment
@synthesize value, color;

- (id)initWithValue:(float)_value {
    self = [super init];
    if (self) {
        self.value = _value;
    }
    return self;
}

+ (id)barComponentWithValue:(float)_value {
    return [[[super alloc] initWithValue:_value] autorelease];
}

@end

@implementation SBBarChart
@synthesize segments;
@synthesize horizontal;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
         
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    
    float total = 0;
    
    for (SBBarSegment *segment in segments) {
        total += segment.value;
    }
    
    float offset = 0;
    
    for (SBBarSegment *segment in segments) {
        
        float dimension = ((horizontal ? self.frame.size.width : self.frame.size.height) * segment.value) / total;
        
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(horizontal ? offset : 0, 
                                                                horizontal ? 0 : offset, 
                                                                horizontal ? dimension : self.frame.size.width, 
                                                                horizontal ? self.frame.size.height : dimension)];
        view.backgroundColor = segment.color;

        [self addSubview:view];
        offset += horizontal ? view.frame.size.width : view.frame.size.height;
        
        [view release];
        
    }
    
}

@end
