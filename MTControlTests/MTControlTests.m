//
//  MTControlTests.m
//  MTControlTests
//
//  Created by Adam Kirk on 8/28/12.
//  Copyright (c) 2012 Mysterious Trousers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MTControlTests.h"
#import "UIControl+MTControl.h"



@interface MTControlTests ()
@property (strong, nonatomic) UIButton *button;
@end


@implementation MTControlTests

- (void)setUp
{
	_button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [super setUp];
}




- (void)test_touchDown
{
	__block BOOL passed = NO;

	[_button touchDown:^(UIEvent *event) {
		passed = YES;
	}];

	[_button sendActionsForControlEvents:UIControlEventTouchDown];
	STAssertTrue(passed, nil);
}

- (void)test_touchDownRepeat
{
	__block BOOL passed = NO;

	[_button touchDownRepeat:^(UIEvent *event) {
		passed = YES;
	}];

	[_button sendActionsForControlEvents:UIControlEventTouchDownRepeat];
	STAssertTrue(passed, nil);
}

- (void)test_touchDragInside
{
	__block BOOL passed = NO;

	[_button touchDragInside:^(UIEvent *event) {
		passed = YES;
	}];

	[_button sendActionsForControlEvents:UIControlEventTouchDragInside];
	STAssertTrue(passed, nil);
}

- (void)test_touchDragOutside
{
	__block BOOL passed = NO;

	[_button touchDragOutside:^(UIEvent *event) {
		passed = YES;
	}];

	[_button sendActionsForControlEvents:UIControlEventTouchDragOutside];
	STAssertTrue(passed, nil);
}

- (void)test_touchDragEnter
{
	__block BOOL passed = NO;

	[_button touchDragEnter:^(UIEvent *event) {
		passed = YES;
	}];

	[_button sendActionsForControlEvents:UIControlEventTouchDragEnter];
	STAssertTrue(passed, nil);
}

- (void)test_touchDragExit
{
	__block BOOL passed = NO;

	[_button touchDragExit:^(UIEvent *event) {
		passed = YES;
	}];

	[_button sendActionsForControlEvents:UIControlEventTouchDragExit];
	STAssertTrue(passed, nil);
}

- (void)test_touchUpInside
{
	__block BOOL passed = NO;

	[_button touchUpInside:^(UIEvent *event) {
		passed = YES;
	}];

	[_button sendActionsForControlEvents:UIControlEventTouchUpInside];
	STAssertTrue(passed, nil);
}

- (void)test_touchUpOutside
{
	__block BOOL passed = NO;

	[_button touchUpOutside:^(UIEvent *event) {
		passed = YES;
	}];

	[_button sendActionsForControlEvents:UIControlEventTouchUpOutside];
	STAssertTrue(passed, nil);
}

- (void)test_touchCancel
{
	__block BOOL passed = NO;

	[_button touchCancel:^(UIEvent *event) {
		passed = YES;
	}];

	[_button sendActionsForControlEvents:UIControlEventTouchCancel];
	STAssertTrue(passed, nil);
}

- (void)test_valueChanged
{
	__block BOOL passed = NO;

	[_button valueChanged:^(UIEvent *event) {
		passed = YES;
	}];

	[_button sendActionsForControlEvents:UIControlEventValueChanged];
	STAssertTrue(passed, nil);
}

- (void)test_editingDidBegin
{
	__block BOOL passed = NO;

	[_button editingDidBegin:^(UIEvent *event) {
		passed = YES;
	}];

	[_button sendActionsForControlEvents:UIControlEventEditingDidBegin];
	STAssertTrue(passed, nil);
}

- (void)test_editingChanged
{
	__block BOOL passed = NO;

	[_button editingChanged:^(UIEvent *event) {
		passed = YES;
	}];

	[_button sendActionsForControlEvents:UIControlEventEditingChanged];
	STAssertTrue(passed, nil);
}

- (void)test_editingDidEnd
{
	__block BOOL passed = NO;

	[_button editingDidEnd:^(UIEvent *event) {
		passed = YES;
	}];

	[_button sendActionsForControlEvents:UIControlEventEditingDidEnd];
	STAssertTrue(passed, nil);
}

- (void)test_editingDidEndOnExit
{
	__block BOOL passed = NO;

	[_button editingDidEndOnExit:^(UIEvent *event) {
		passed = YES;
	}];

	[_button sendActionsForControlEvents:UIControlEventEditingDidEndOnExit];
	STAssertTrue(passed, nil);
}

- (void)test_allTouchEvents
{
	__block BOOL passed = NO;

	[_button allTouchEvents:^(UIEvent *event) {
		passed = YES;
	}];

	[_button sendActionsForControlEvents:UIControlEventAllTouchEvents];
	STAssertTrue(passed, nil);
}

- (void)test_allEditingEvents
{
	__block BOOL passed = NO;

	[_button allEditingEvents:^(UIEvent *event) {
		passed = YES;
	}];

	[_button sendActionsForControlEvents:UIControlEventAllEditingEvents];
	STAssertTrue(passed, nil);
}

- (void)test_unbind
{
	__block BOOL passed = NO;

	[_button touchDown:^(UIEvent *event) {
		passed = YES;
	}];

	[_button sendActionsForControlEvents:UIControlEventTouchDown];
	STAssertTrue(passed, nil);

	[_button removeBlocksForControlEvents:UIControlEventTouchDown];

	passed = NO;

	[_button sendActionsForControlEvents:UIControlEventTouchDown];

	STAssertFalse(passed, nil);
}



@end
