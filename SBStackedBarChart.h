//
// SBStackedBarChart.h
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

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface SBBarSegment : NSObject {
    float value;
    UIColor *color;
}

@property (nonatomic, assign) float value;
@property (nonatomic, retain) UIColor *color;
+ (id)barComponentWithValue:(float)_value;
@end

@interface SBBarChart : UIView {
    NSMutableArray *segments;
}
@property (nonatomic, retain) NSMutableArray *segments;
@property (nonatomic, assign) BOOL horizontal;
@end
