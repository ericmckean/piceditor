// Copyright 2011 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS-IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
package controls {
	import mx.controls.ToolTip;
	import flash.text.TextFormat;
	import flash.events.TextEvent;
	import skins.ToolTipBorderPlus;

	import util.smartresize.ISmartResizeComponent;

	public class ResizingErrorTip extends ErrorTip implements ISmartResizeComponent {

		public function ResizingErrorTip(): void {
			_srh = new SmartResizeHelper(this) // smart resize code
			super();
		}
			
 	    include "../util/smartresize/ResizeHelperInc.as";
	    include "../util/smartresize/ResizeHelperTextInc.as";
	    include "../util/smartresize/ResizeHelperFontSizeInc.as";
	}
}
