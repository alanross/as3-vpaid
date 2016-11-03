package com.ar.vpaid
{
	import flash.events.Event;

	/**
	 * The event and event types for VPAID ads as defined by the VPAID 2.0 specification.
	 *
	 * More info: http://www.iab.net/vpaid
	 *
	 * @author Alan Ross
	 * @version 0.1
	 */
	public final class VPAIDEvent extends Event
	{
		/**
		 * Dispatched by the ad to notify the player that the ad has finished any loading of assets and is ready for display.
		 */
		public static const AdLoaded:String = "AdLoaded";

		/**
		 * Dispatched by the ad to notify the player that the ad is displaying.
		 */
		public static const AdStarted:String = "AdStarted";

		/**
		 * Dispatched by the ad to notify the player that the ad has stopped displaying, and all ad resources have been cleaned up.
		 */
		public static const AdStopped:String = "AdStopped";

		/**
		 *
		 */
		public static const AdSkipped:String = "AdSkipped";

		/**
		 * Dispatched by the ad to notify the player that the ad has changed playback mode.
		 */
		public static const AdLinearChange:String = "AdLinearChange";

		/**
		 *
		 */
		public static const AdSizeChange:String = "AdSizeChange";

		/**
		 * Dispatched by the ad to notify the player that the ad’s expanded state has changed.
		 */
		public static const AdExpandedChange:String = "AdExpandedChange";

		/**
		 *
		 */
		public static const AdSkippableStateChange:String = "AdSkippableStateChange";

		/**
		 * Dispatched by the ad to notify the player that the ad’s remaining playback time has changed.
		 */
		public static const AdRemainingTimeChange:String = "AdRemainingTimeChange";

		/**
		 *
		 */
		public static const AdDurationChange:String = "AdDurationChange";

		/**
		 * Dispatched by the ad to notify the player that the ad has changed its volume, if the ad supports volume.
		 */
		public static const AdVolumeChange:String = "AdVolumeChange";

		/**
		 *
		 */
		public static const AdImpression:String = "AdImpression";

		/**
		 * Dispatched by the ad to notify the player of ad’s video progress. Video started.
		 */
		public static const AdVideoStart:String = "AdVideoStart";

		/**
		 * Dispatched by the ad to notify the player of ad’s video progress. Played first quartile.
		 */
		public static const AdVideoFirstQuartile:String = "AdVideoFirstQuartile";

		/**
		 * Dispatched by the ad to notify the player of ad’s video progress. Played till midpoint.
		 */
		public static const AdVideoMidpoint:String = "AdVideoMidpoint";

		/**
		 * Dispatched by the ad to notify the player of ad’s video progress. Played third quartile.
		 */
		public static const AdVideoThirdQuartile:String = "AdVideoThirdQuartile";

		/**
		 * Dispatched by the ad to notify the player of ad’s video progress. Playing complete.
		 */
		public static const AdVideoComplete:String = "AdVideoComplete";

		/**
		 *
		 */
		public static const AdClickThru:String = "AdClickThru";

		/**
		 *
		 */
		public static const AdInteraction:String = "AdInteraction";

		/**
		 * Dispatched by the ad to notify the player that the user interacted with the ad unit.
		 * This should only be fired a maximum of one time per ad impression.
		 */
		public static const AdUserAcceptInvitation:String = "AdUserAcceptInvitation";

		/**
		 * Dispatched by the ad to notify the player that the user minimized the ad unit.
		 */
		public static const AdUserMinimize:String = "AdUserMinimize";

		/**
		 * Dispatched by the ad to notify the player that the user closed the ad unit.
		 */
		public static const AdUserClose:String = "AdUserClose";

		/**
		 * Dispatched in response to method calls to pauseAd and resumeAd, respectively, to indicate the action has taken effect.
		 */
		public static const AdPaused:String = "AdPaused";

		/**
		 * Dispatched in response to method calls to pauseAd and resumeAd, respectively, to indicate the action has taken effect.
		 */
		public static const AdPlaying:String = "AdPlaying";

		/**
		 * Dispatched by the ad to the player to relay debugging information, in a parameter String message.
		 */
		public static const AdLog:String = "AdLog";

		/**
		 * Dispatched when the ad has experienced a fatal error.
		 */
		public static const AdError:String = "AdError";


		private var _data:Object = null;

		/**
		 * Creates a new instance of VPAIDEvent.
		 */
		public function VPAIDEvent( type:String, data:Object = null, bubbles:Boolean = false, cancelable:Boolean = false )
		{
			super( type, bubbles, cancelable );

			if( data is String )
			{
				_data = { message:data };
			}
			else
			{
				_data = data;
			}
		}

		/**
		 * Event payload data
		 */
		public function get data():Object
		{
			return _data;
		}

		/**
		 * Clone the event
		 */
		override public function clone():Event
		{
			return new VPAIDEvent( type, data, bubbles, cancelable );
		}

		/**
		 * Generates and returns the string representation of the VPAIDEvent object.
		 */
		override public function toString():String
		{
			return "[VPAIDEvent]";
		}
	}
}