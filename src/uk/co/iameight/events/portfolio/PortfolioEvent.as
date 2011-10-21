package uk.co.iameight.events.portfolio
{
	import flash.events.Event;

	public class PortfolioEvent extends Event
	{
		public static const LOAD:String="load";

		public function PortfolioEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}

		override public function clone():Event
		{
			return new PortfolioEvent(type, bubbles, cancelable);
		}
	}
}