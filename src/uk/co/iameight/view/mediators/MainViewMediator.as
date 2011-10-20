package uk.co.iameight.view.mediators
{
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Mediator;
	
	import uk.co.iameight.events.navigation.NavigationEvent;
	
	public class MainViewMediator extends Mediator
	{
		public function MainViewMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			eventMap.mapListener(eventDispatcher, NavigationEvent.HOME, navigateToHome);
			eventMap.mapListener(eventDispatcher, NavigationEvent.PORTFOLIO, navigateToPortfolio);
		}
		
		private function navigateToHome(event:NavigationEvent):void
		{
			Alert.show("Home button clicked");
		}
		
		private function navigateToPortfolio(event:NavigationEvent):void
		{
			Alert.show("Portfolio button clicked");
		}
	}
}