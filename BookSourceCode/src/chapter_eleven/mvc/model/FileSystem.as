package chapter_eleven.mvc.model
{
	/**
	 * @author Ben Smith
	 */
	public class FileSystem extends AbstractModel
	{
		private var volume : XML = <system>
									<volume>
										<Users>
											<account>FeZEC</account>
										<Desktop>
												<folders>
													<file name="folder" yposition="0" xposition="0"/>
												</folders>
												<files>
													<file name="document" extension="txt" yposition="0" xposition="0"/>
												</files>
										</Desktop>
										</Users>
									</volume>
								</system>

		public function FileSystem()
		{
			super()
		}

		public function rename() : void
		{
		}
	}
}
