package chapter_eleven.mvc.view
{
   import chapter_eleven.mvc.model.ConfigModel;
   import chapter_seven.iterator_pattern.collections.concretes.ArrayCollection;


	/**
	 * @author Ben Smith
	 */
	public class UIComposite extends OSComponent implements IComposite
	{
		protected var _arCollection : ArrayCollection

		public function UIComposite( mdl : ConfigModel )
		{
			super( mdl );
		}

		public function addComponent( cmpt : OSComponent ) : void
		{
			verifyCollection()
			_arCollection.append(cmpt)
			cmpt.mdl=this._mdl
		}

		public function removeComponent( cmpt : OSComponent ) : void
		{
			
		}

		protected function verifyCollection() : void
		{
			if (!_arCollection)
				_arCollection = new ArrayCollection()
		}
	}
}
