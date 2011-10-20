package uk.co.iameight.events.navigation
{
	import flash.events.Event;
	
	public class NavigationEvent extends Event
	{
		public static const HOME:String="home";
		public static const PORTFOLIO:String="portfolio";
		public static const CONTACT:String="contact";
		
		public function NavigationEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event
		{
			return new NavigationEvent(type, bubbles, cancelable);
		}
	}
}