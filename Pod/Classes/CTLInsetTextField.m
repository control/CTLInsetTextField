//
//  CTLInsetTextField.m
//  Control
//
//  Created by Charles Phillips on 2014-Oct-14.
//  Copyright 2014, MIT Licensed.
//

#import "CTLInsetTextField.h"

@implementation CTLInsetTextField


#pragma mark - Accessors

@synthesize insets = _insets;

- (void)setInsets:(UIEdgeInsets)insets {
	_insets = insets;
	[self setNeedsLayout];
}


#pragma mark - UIView

- (id)initWithCoder:(NSCoder *)aDecoder {
	if ((self = [super initWithCoder:aDecoder])) {
		[self initialize];
	}
	return self;
}

- (id)initWithFrame:(CGRect)aFrame {
	if ((self = [super initWithFrame:aFrame])) {
		[self initialize];
	}
	return self;
}


#pragma mark - UITextField

- (CGRect)textRectForBounds:(CGRect)bounds {
    return UIEdgeInsetsInsetRect(bounds, self.insets);
}

- (CGRect)editingRectForBounds:(CGRect)bounds {
    return [self textRectForBounds:bounds];
}


#pragma mark - Private

- (void)initialize {
	self.insets = UIEdgeInsetsZero;
}


@end
