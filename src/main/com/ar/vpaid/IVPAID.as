package com.ar.vpaid
{
	/**
	 * Interface for VPAID ads as defined by the VPAID 2.0 specification.
	 *
	 * More info: http://www.iab.net/vpaid
	 *
	 * @author Alan Ross
	 * @version 0.1
	 */
	public interface IVPAID
	{
		/**
		 *
		 */
		function handshakeVersion( playerVPAIDVersion:String ):String;

		/**
		 * After the ad is loaded and the player calls handshakeVersion,
		 * the player calls initAd to initialize the ad experience.
		 *
		 * @param viewWidth indicates the available ad display area width in pixels
		 * @param viewHeight indicates the available ad display area height in pixels
		 * @param viewMode indicates either “normal”, “thumbnail”, or “fullscreen”
		 * as the view mode for the video player as defined by the publisher. Default is “normal”.
		 * @param desiredBitrate indicates the desired bitrate as number for kilobits per second (kbps).
		 * The ad unit may use this information to select appropriate bitrate for any streaming content.
		 * @param creativeData (optional) used for additional initialization data. In a VAST context,
		 * the ad unit should pass the value for either the Linear or Nonlinear AdParameter element
		 * specified in the VAST document.
		 * @param environmentVars (optional) used for passing implementation-specific runtime variables.
		 * Refer to the language specific API description for more details.
		 */
		function initAd( viewWidth:Number, viewHeight:Number, viewMode:String, desiredBitrate:Number, creativeData:String = "", environmentVars:String = "" ):void;

		/**
		 * Called by the player to allow the ad to scale or reposition itself within its display area.
		 * The ad unit must resize itself to a width and height that is within the values provided.
		 * The video player must always provide width and height unless it is in fullscreen mode.
		 * In full screen mode, the ad unit can ignore width/height parameters and resize to any dimension.
		 *
		 * @param viewWidth The maximum display width allotted for the ad
		 * @param viewHeight The maximum display height allotted for the ad
		 * @param viewMode Can be one of “normal” “thumbnail” or “fullscreen” to
		 * indicate the mode to which the video player is resizing. Width and height are
		 * not required when view mode is fullscreen.
		 */
		function resizeAd( viewWidth:Number, viewHeight:Number, viewMode:String ):void;

		/**
		 * Called when the player wants the advertisement to start displaying.
		 */
		function startAd():void;

		/**
		 * Called when the player wants the advertisement to stop displaying.
		 */
		function stopAd():void;

		/**
		 * Called when the player wants the advertisement to pause.
		 */
		function pauseAd():void;

		/**
		 * Called to continue ad playback following a call to pauseAd.
		 */
		function resumeAd():void;

		/**
		 * Called by the player to request that the ad switch to its larger UI size.
		 */
		function expandAd():void;

		/**
		 * Called by the player to request that the ad return to its smallest UI size.
		 */
		function collapseAd():void;

		/**
		 * Called by the player to request that the ad skip the ad.
		 */
		function skipAd():void;

		/**
		 *
		 */
		function get adLinear():Boolean;

		/**
		 * Returns the width of the ad.
		 */
		function get adWidth():Number

		/**
		 * Returns the height of the ad.
		 */
		function get adHeight():Number

		/**
		 * Indicates whether the ad is in a state where it occupies more UI area than its smallest area.
		 */
		function get adExpanded():Boolean;

		/**
		 *
		 */
		function get adSkippableState():Boolean;

		/**
		 * The player may use the adRemainingTime property to update player UI during ad playback.
		 */
		function get adRemainingTime():Number;

		/**
		 *
		 */
		function get adDuration():Number;

		/**
		 * The player uses the adVolume property to attempt to set or get the ad volume.
		 */
		function get adVolume():Number;


		/**
		 *
		 */
		function get adCompanions():String;

		/**
		 *
		 */
		function get adIcons():Boolean;

		/**
		 * The player uses the adVolume property to attempt to set or get the ad volume.
		 *
		 * NOTE: VERSION 1.0
		 */
		function set adVolume( value:Number ):void;

		/**
		 * NOTE: VERSION 1.0
		 */
		function getVPAID():Object;
	}
}