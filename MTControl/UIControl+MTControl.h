//
//  MTControl.h
//  MTControl
//
//  Created by Adam Kirk on 8/28/12.
//  Copyright (c) 2012 Mysterious Trousers. All rights reserved.
//

typedef void (^MTControlBlock)(UIEvent *event);

@interface UIControl (MTControl)
- (void)touchDown:(MTControlBlock)block;
- (void)touchDownRepeat:(MTControlBlock)block;
- (void)touchDragInside:(MTControlBlock)block;
- (void)touchDragOutside:(MTControlBlock)block;
- (void)touchDragEnter:(MTControlBlock)block;
- (void)touchDragExit:(MTControlBlock)block;
- (void)touchUpInside:(MTControlBlock)block;
- (void)touchUpOutside:(MTControlBlock)block;
- (void)touchCancel:(MTControlBlock)block;
- (void)valueChanged:(MTControlBlock)block;
- (void)editingDidBegin:(MTControlBlock)block;
- (void)editingChanged:(MTControlBlock)block;
- (void)editingDidEnd:(MTControlBlock)block;
- (void)editingDidEndOnExit:(MTControlBlock)block;
- (void)allTouchEvents:(MTControlBlock)block;
- (void)allEditingEvents:(MTControlBlock)block;
- (void)removeBlocksForControlEvents:(UIControlEvents)events;
@end
