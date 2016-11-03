package com.ar.vpaid
{
	import com.ar.core.error.NullError;
	import com.ar.core.log.Context;
	import com.ar.core.log.Log;

	import flash.events.EventDispatcher;

	/**
	 * @author Alan Ross
	 * @version 0.1
	 */
	public final class VPAIDWrapper implements IVPAID
	{
		private var _adViewMode:String = VPAIDConstants.VIEWMODE_NORMAL;
		private var _adWidth:Number = 0.0;
		private var _adHeight:Number = 0.0;
		private var _adDuration:Number = 0.0;
		private var _adRemainingTime:Number = 0.0;
		private var _adVolume:Number = 0.0;
		private var _adLinear:Boolean = false;
		private var _adExpanded:Boolean = false;
		private var _adSkippableState:Boolean = false;
		private var _adCompanions:String = "";
		private var _adIcons:Boolean = false;

		private var _base:EventDispatcher;


		/**
		 * Creates a new instance of VPAIDWrapper.
		 */
		public function VPAIDWrapper( base:EventDispatcher )
		{
			if( base == null )
			{
				throw new NullError( "base can not be null." );
			}

			_base = base;
		}

		/**
		 * Dispatches a Loaded event.
		 */
		public function dispatchLoaded():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdLoaded ) );
		}

		/**
		 * Dispatches a Started event.
		 */
		public function dispatchStarted():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdStarted ) );
		}

		/**
		 * Dispatches a VideoStart event.
		 */
		public function dispatchVideoStart():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdVideoStart ) );
		}

		/**
		 * Dispatches a FirstQuartile event.
		 */
		public function dispatchVideoFirstQuartile():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdVideoFirstQuartile ) );
		}

		/**
		 * Dispatches a Midpoint event.
		 */
		public function dispatchVideoMidpoint():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdVideoMidpoint ) );
		}

		/**
		 * Dispatches a ThirdQuartile event.
		 */
		public function dispatchVideoThirdQuartile():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdVideoThirdQuartile ) );
		}

		/**
		 * Dispatches a Complete event.
		 */
		public function dispatchVideoComplete():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdVideoComplete ) );
		}

		/**
		 * Dispatches a Pause event.
		 */
		public function dispatchPause():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdPaused ) );
		}

		/**
		 * Dispatches a Resume event.
		 */
		public function dispatchResume():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdPlaying ) );
		}

		/**
		 * Dispatches a Close event.
		 */
		public function dispatchClose():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdUserClose ) );
		}

		/**
		 * Dispatches a Mute event.
		 */
		public function dispatchMute():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdVolumeChange ) );
		}

		/**
		 * Dispatches a Unmute event.
		 */
		public function dispatchUnmute():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdVolumeChange ) );
		}

		/**
		 * Dispatches a Error event.
		 */
		public function dispatchError( message:String ):void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdError ) );
		}

		/**
		 * Dispatches a Expand event.
		 */
		public function dispatchExpand():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdExpandedChange ) );
		}

		/**
		 * Dispatches a Collapse event.
		 */
		public function dispatchCollapse():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdExpandedChange ) );
		}

		/**
		 * Dispatches a Impression event.
		 */
		public function dispatchImpression():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdImpression ) );
		}

		/**
		 * Dispatches a VideoClick event.
		 */
		public function dispatchVideoClick():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdInteraction ) );
		}

		/**
		 * Dispatches a BrandClick event.
		 */
		public function dispatchBrandClick():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdInteraction ) );
		}

		/**
		 * Dispatches a VPAID AdStopped event.
		 */
		public function dispatchStopped():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdStopped ) );
		}

		/**
		 * Dispatches a VPAID AdSkipped event.
		 */
		public function dispatchSkipped():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdSkipped ) );
		}

		/**
		 * Dispatches a VPAID AdLinearChange event.
		 */
		public function dispatchLinearChange():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdLinearChange ) );
		}

		/**
		 * Dispatches a VPAID AdSizeChange event.
		 */
		public function dispatchSizeChange():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdSizeChange ) );
		}

		/**
		 * Dispatches a VPAID AdSkippableStateChange event.
		 */
		public function dispatchSkippableStateChange():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdSkippableStateChange ) );
		}

		/**
		 * Dispatches a VPAID AdRemainingTimeChange event.
		 */
		public function dispatchRemainingTimeChange():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdRemainingTimeChange ) );
		}

		/**
		 * Dispatches a VPAID AdDurationChange event.
		 */
		public function dispatchDurationChange():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdDurationChange ) );
		}

		/**
		 * Dispatches a VPAID AdClickThru event.
		 */
		public function dispatchClickThru():void
		{
			var data:Object = { "playerHandles":true };

			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdClickThru, data ) );
		}

		/**
		 *
		 */
		public function dispatchUserAcceptInvitation():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdUserAcceptInvitation ) );
		}

		/**
		 * Dispatches a VPAID AdUserMinimize event.
		 */
		public function dispatchUserMinimize():void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdUserMinimize ) );
		}

		/**
		 * Dispatches a VPAID AdLog event, passing the text parameter to the VPAID player holding this swf.
		 */
		public function dispatchLog( text:String ):void
		{
			_base.dispatchEvent( new VPAIDEvent( VPAIDEvent.AdLog, {message:text} ) );
		}

		/**
		 * @inheritDoc
		 */
		public function handshakeVersion( playerVPAIDVersion:String ):String
		{
			Log.trace( Context.DEFAULT, this, "HandshakeVersion Player:" + playerVPAIDVersion + ", Ad:" + VPAIDConstants.VPAID_VERSION_2_0 );

			return VPAIDConstants.VPAID_VERSION_2_0;
		}

		/**
		 * @inheritDoc
		 */
		public function initAd( viewWidth:Number, viewHeight:Number, viewMode:String, desiredBitrate:Number, creativeData:String = "", environmentVars:String = "" ):void
		{
			Log.trace( Context.DEFAULT, this, "Init " + viewWidth + "," + viewHeight + ",'" + viewMode + "'," + desiredBitrate + ",'" + creativeData + "','" + environmentVars );

			var parser:VPAIDVarParser = new VPAIDVarParser( creativeData );
			var playerId:String = parser.getValue( "playerId" );

			resizeAd( viewWidth, viewHeight, viewMode );

			dispatchLoaded();
		}

		/**
		 * @inheritDoc
		 */
		public function resizeAd( viewWidth:Number, viewHeight:Number, viewMode:String ):void
		{
			Log.trace( Context.DEFAULT, this, "resizeAd:" + viewWidth + "," + viewHeight + ",'" + viewMode );

			_adWidth = viewWidth;
			_adHeight = viewHeight;
			_adViewMode = viewMode;
		}

		/**
		 * @inheritDoc
		 */
		public function startAd():void
		{
			Log.trace( Context.DEFAULT, this, "startAd." );

			dispatchVideoStart();
			dispatchImpression();
		}

		/**
		 * @inheritDoc
		 */
		public function stopAd():void
		{
			Log.trace( Context.DEFAULT, this, "stopAd." );

			dispatchStopped();
		}

		/**
		 * @inheritDoc
		 */
		public function pauseAd():void
		{
			Log.trace( Context.DEFAULT, this, "pauseAd." );

			dispatchPause();
		}

		/**
		 * @inheritDoc
		 */
		public function resumeAd():void
		{
			Log.trace( Context.DEFAULT, this, "resumeAd." );

			dispatchResume();
		}

		/**
		 * @inheritDoc
		 */
		public function expandAd():void
		{
			Log.trace( Context.DEFAULT, this, "expandAd." );

			dispatchExpand();
		}

		/**
		 * @inheritDoc
		 */
		public function collapseAd():void
		{
			Log.trace( Context.DEFAULT, this, "collapseAd." );

			dispatchCollapse();
		}

		/**
		 * @inheritDoc
		 */
		public function skipAd():void
		{
			Log.trace( Context.DEFAULT, this, "skipAd." );

			 dispatchSkipped();
		}

		/**
		 * @inheritDoc
		 */
		public function get adLinear():Boolean
		{
			return _adLinear;
		}

		/**
		 * @inheritDoc
		 */
		public function get adWidth():Number
		{
			return _adWidth;
		}

		/**
		 * @inheritDoc
		 */
		public function get adHeight():Number
		{
			return _adHeight;
		}

		/**
		 * @inheritDoc
		 */
		public function get adExpanded():Boolean
		{
			return _adExpanded;
		}

		/**
		 * @inheritDoc
		 */
		public function get adSkippableState():Boolean
		{
			return _adSkippableState;
		}

		/**
		 * @inheritDoc
		 */
		public function get adRemainingTime():Number
		{
			return _adRemainingTime;
		}

		/**
		 * @inheritDoc
		 */
		public function get adDuration():Number
		{
			return _adDuration;
		}

		/**
		 * @inheritDoc
		 */
		public function get adVolume():Number
		{
			return _adVolume;
		}

		/**
		 * @inheritDoc
		 */
		public function get adCompanions():String
		{
			return _adCompanions;
		}

		/**
		 * @inheritDoc
		 */
		public function get adIcons():Boolean
		{
			return _adIcons;
		}

		/**
		 * @inheritDoc
		 */
		public function set adVolume( value:Number ):void
		{
			Log.trace( Context.DEFAULT, this, "set adVolume:", value );

			if( _adVolume != value )
			{
				_adVolume = value;
			}
		}

		/**
		 * @inheritDoc
		 */
		public function getVPAID():Object
		{
			return _base;
		}

		/**
		 * Creates and returns a string representation of the VPAIDWrapper object.
		 */
		public function toString():String
		{
			return "[VPAIDWrapper]";
		}
	}
}