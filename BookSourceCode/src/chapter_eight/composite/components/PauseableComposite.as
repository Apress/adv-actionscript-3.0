package chapter_eight.composite.components
{
   import chapter_seven.iterator_pattern.collections.concretes.ArrayCollection;
   import chapter_seven.iterator_pattern.interfaces.IIterator;

	/**
	 * @author Ben Smith
	 */
	public class PauseableComposite extends PauseableComponent
	{
		protected var _arCollection : ArrayCollection;

		public function PauseableComposite()
		{
			super();
		}

		public function addComponent( pauseable : PauseableComponent ) : void
		{
			doVerifyCollection()
			_arCollection.append( pauseable )
		}

		public function removeComponent( pauseable : PauseableComponent ) : void
		{
		}

		override protected function doResume() : void
		{
			var it : IIterator = _arCollection.createIterator()
			while (it.hasNext())
			{
				var cnent : PauseableComponent = it.currentElement() as PauseableComponent
            trace(cnent)
			
				cnent.resume()
            	it.next();
			}
		}

		override protected function doPause() : void
		{
			var it : IIterator = _arCollection.createIterator()
			while (it.hasNext())
			{
				var cnent : PauseableComponent = it.currentElement() as PauseableComponent
            trace(cnent)
				
				cnent.pause();
            it.next();
			}
		}

		private function doVerifyCollection() : void
		{
			if (!_arCollection)
				_arCollection = new ArrayCollection()
		}
	}
}
