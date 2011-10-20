package uk.co.iameight.view.mediators
{
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	import uk.co.iameight.events.navigation.NavigationEvent;
	import uk.co.iameight.view.components.mainView.NavigationTree;

	public class NavigationTreeMediator extends Mediator
	{
		[Inject]
		public var view:NavigationTree;
		
		public function NavigationTreeMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			eventMap.mapListener(view.homeBtn, MouseEvent.CLICK, homeButtonClicked);
			eventMap.mapListener(view.portfolioBtn, MouseEvent.CLICK, portfolioButtonClicked);
		}
		
		private function homeButtonClicked(event:MouseEvent):void
		{
			dispatch(new NavigationEvent(NavigationEvent.HOME));
		}
		
		private function portfolioButtonClicked(event:MouseEvent):void
		{
			dispatch(new NavigationEvent(NavigationEvent.PORTFOLIO));	
		}
	}
}