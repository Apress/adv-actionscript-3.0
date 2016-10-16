package chapter_seven.the_observer_pattern.subjects
{
   import chapter_seven.the_observer_pattern.abstractions.TwitterUser;
   import chapter_seven.the_observer_pattern.interfaces.IObserve;
   import chapter_seven.the_observer_pattern.interfaces.ISubject;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.utils.getTimer;

	/**
	 * @author Ben Smith
	 */
	public class Subject extends TwitterUser implements ISubject
	{
		static const LoremIspum : String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi condimentum leo sit amet augue pulvinar non dictum neque vehicula. Morbi feugiat diam consectetur sapien porta mattis. Donec eget felis eget risus pharetra tincidunt. Cras risus tellus, commodo quis tincidunt eget, vulputate et ipsum. Integer nunc felis, vestibulum sed faucibus sit amet, vulputate non lorem. Suspendisse tincidunt accumsan dignissim. Ut felis felis, mollis ac vehicula a, convallis quis nibh. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam vitae dui non tellus laoreet fermentum. Pellentesque porttitor felis id nisi mollis viverra dapibus mauris malesuada. Sed turpis mauris, commodo quis laoreet non, pulvinar tincidunt elit.\n\nEtiam semper vestibulum nulla ut sollicitudin. Vestibulum eget sapien non justo facilisis tempus quis vel est. Aenean pretium risus sit amet lacus eleifend quis rutrum lacus imperdiet. Mauris eget erat mi, in pellentesque orci. Praesent euismod, erat vitae blandit varius, metus neque dignissim massa, sit amet molestie massa magna et libero. Ut consectetur, urna a tempor venenatis, dui augue interdum lorem, vel venenatis tellus risus congue tortor. Aenean id est leo, id fringilla neque. Ut porta, enim non sodales convallis, nunc diam pulvinar tortor, et sollicitudin ante odio a lectus. Cras quam mauris, vulputate at cursus id, vehicula a purus. Aliquam quis lacinia augue. Integer volutpat ullamcorper dolor, ac dignissim erat feugiat vitae. Vestibulum enim nulla, laoreet ut gravida et, pharetra ac lorem. Etiam eget metus at tellus faucibus molestie. Aliquam laoreet scelerisque nisl ac sollicitudin. Sed vitae turpis in elit semper lacinia."
		static const LoremIpsumAr : Array = LoremIspum.split( " " )
		protected var _dict : Dictionary
		private var timer : Timer

		public function Subject( userName : String )
		{
			super( userName )
			_dict = new Dictionary( false )
			timer = new Timer( 550 )
			timer.repeatCount = 1
			timer.addEventListener( TimerEvent.TIMER_COMPLETE , onComplete )
			timer.start()
		}

		public function removeObserver( observer : IObserve ) : Boolean
		{
			_dict[observer] = null
			delete  _dict[observer]
			return true
		}

		public function addObserver( observer : IObserve , aspect : Function ) : Boolean
		{
			_dict[observer] = getTimer()
			return true
		}

		protected function notifyObservers( Enum : String ) : void
		{
			for (var observer:* in _dict)
			{
				observer.notify( Enum )
			}
		}

		private function onComplete( event : TimerEvent ) : void
		{
			timer.stop()
			timer.delay = Math.random() * 1000
			timer.reset()
			var startIndex : int
			var endIndex : int
			startIndex = Math.random() * LoremIpsumAr.length
			var pool : int = LoremIpsumAr.length - startIndex
			endIndex = Math.random() * ((pool < 140) ? pool : 140)
			var status : String = ""
			var totalIndex:int=startIndex+endIndex
			while (startIndex < totalIndex)
			{
				status += LoremIpsumAr[startIndex] + " "
				startIndex++
			}

			notifyObservers( status )
			timer.start()
		}
	}
}
