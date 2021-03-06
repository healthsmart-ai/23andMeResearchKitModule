/*
 Copyright (c) 2016, 23andMe, Inc. All rights reserved.
 
 Redistribution and use in source and binary forms, with or without modification,
 are permitted provided that the following conditions are met:
 
 1.  Redistributions of source code must retain the above copyright notice, this
 list of conditions and the following disclaimer.
 
 2.  Redistributions in binary form must reproduce the above copyright notice,
 this list of conditions and the following disclaimer in the documentation and/or
 other materials provided with the distribution.
 
 3.  Neither the name of the copyright holder(s) nor the names of any contributors
 may be used to endorse or promote products derived from this software without
 specific prior written permission. No license is granted to the trademarks of
 the copyright holders even if such marks are included in this software.
 
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
 FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#import "UILabel+T23.h"

@implementation UILabel (T23)

+ (UILabel *)t23HeaderLabelWithText:(NSString *)text
{
    UILabel *label = [[UILabel alloc] init];
    if( [UIFont instancesRespondToSelector:@selector(systemFontOfSize:weight:)] ) {
        label.font = [UIFont systemFontOfSize:22.0 weight:UIFontWeightSemibold];
    }
    else {
        label.font = [UIFont boldSystemFontOfSize:22.0];
    }
    label.numberOfLines = 1;
    label.textColor = [UIColor colorWithRed:51.0/255.0 green:52.0/255.0 blue:53.0/255.0 alpha:1.0];
    label.text = text;
    label.textAlignment = NSTextAlignmentCenter;
    return label;
}

+ (UILabel *)t23SubheaderLabelWithText:(NSString *)text
{
    UILabel *label = [[UILabel alloc] init];
    if( [UIFont instancesRespondToSelector:@selector(systemFontOfSize:weight:)] ) {
        label.font = [UIFont systemFontOfSize:16.0 weight:UIFontWeightSemibold];
    }
    else {
        label.font = [UIFont boldSystemFontOfSize:16.0];
    }
    label.numberOfLines = 1;
    label.textColor = [UIColor colorWithRed:51.0/255.0 green:52.0/255.0 blue:53.0/255.0 alpha:1.0];
    label.text = text;
    label.textAlignment = NSTextAlignmentLeft;
    return label;
}

+ (UILabel *)t23BodyLabelWithText:(NSString *)text
{
    UILabel *label = [[UILabel alloc] init];
    label.font = [UIFont systemFontOfSize:16.0];
    label.numberOfLines = 0;
    label.textColor = [UIColor colorWithRed:51.0/255.0 green:52.0/255.0 blue:53.0/255.0 alpha:1.0];
    label.text = text;
    label.textAlignment = NSTextAlignmentLeft;
    return label;
}

@end
