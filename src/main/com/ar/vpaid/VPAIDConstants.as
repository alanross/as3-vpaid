package com.ar.vpaid
{
	/**
	 * Collection of constants used by the VPAID 2.0 specification
	 *
	 * More info: http://www.iab.net/vpaid
	 *
	 * @author Alan Ross
	 * @version 0.1
	 */
	public final class VPAIDConstants
	{
		public static var VPAID_VERSION_1_0:String = "1.0";
		public static var VPAID_VERSION_1_1:String = "1.1";
		public static var VPAID_VERSION_2_0:String = "2.0";

		public static var VIEWMODE_NORMAL:String = "normal";
		public static var VIEWMODE_THUMBNAIL:String = "thumbnail";
		public static var VIEWMODE_FULLSCREEN:String = "fullscreen";

		/**
		 * VPAIDConstants class is static container only.
		 */
		public function VPAIDConstants()
		{
			throw new Error( "VPAIDConstants class is static container only." );
		}

		/**
		 * Creates and returns a string representation of the VPAIDConstants object.
		 */
		public function toString():String
		{
			return "[VPAIDConstants]";
		}
	}
}