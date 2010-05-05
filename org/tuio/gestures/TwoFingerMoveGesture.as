package org.tuio.gestures {
	
	import flash.display.DisplayObject;
	import flash.utils.getTimer;
	import org.tuio.TuioContainer;
	import org.tuio.TuioEvent;
	import org.tuio.TouchEvent;
	
	public class TwoFingerMoveGesture extends Gesture {
		
		public function TwoFingerMoveGesture() {
			this.addStep(new GestureStep(TouchEvent.TOUCH_MOVE, {tuioContainerAlias:"A", frameIDAlias:"!A"}));
			this.addStep(new GestureStep(TouchEvent.TOUCH_MOVE, { tuioContainerAlias:"B", frameIDAlias:"A"} ));
			this.addStep(new GestureStep(TouchEvent.TOUCH_MOVE, { die:true } ));
			this.addStep(new GestureStep(TuioEvent.NEW_FRAME, {goto:1} ));
		}
		
		public override function dispatchGestureEvent(target:DisplayObject, gsg:GestureStepGroup):void {
			trace("two finger move" + getTimer());
		}
		
	}
	
}