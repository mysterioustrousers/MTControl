MTControl
=========

Attach block handlers to UIControl objects jQuery style!

### Installation

In your Podfile, add this line:

    pod "MTControl"

pod? => https://github.com/CocoaPods/CocoaPods/

NOTE: You may need to add `-all_load` to "Other Linker Flags" in your targets build settings if the pods library only contains categories.

### Example Usage

A simple touch down event:

	UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
	
	[button touchDown:^(UIEvent *event) {
		[_spinner start];
		[_model fetchFromServer:@"http://mysterioustrousers.com" success:^(BOOL success){
			[_spinner stop];
		}];
	}];

See? Just like jQuery! Works with any subclass of UIControl.

Let's try another:

	UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 300, 40)];
	
	[textField editingDidBegin:^(UIEvent *event) {
		textField.text = @"";
	}];

And to remove the block (unbind):

	[button removeBlocksForControlEvents:UIControlEventTouchDown];

### Control Event Binding Methods:

	touchDown
	touchDownRepeat
	touchDragInside
	touchDragOutside
	touchDragEnter
	touchDragExit
	touchUpInside
	touchUpOutside
	touchCancel
	valueChanged
	editingDidBegin
	editingChanged
	editingDidEnd
	editingDidEndOnExit
	allTouchEvents
	allEditingEvents