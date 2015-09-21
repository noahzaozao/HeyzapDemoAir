package
{
    import com.heyzap.sdk.HeyzapEvent;
    import com.heyzap.sdk.ads.HeyzapAds;
    import com.heyzap.sdk.ads.IncentivizedAd;
    import com.heyzap.sdk.ads.VideoAd;
    
    import flash.display.Sprite;
    import flash.display.StageAlign;
    import flash.display.StageScaleMode;
    import flash.events.MouseEvent;
    
    public class HeyzapDemo extends Sprite
    {
        public function HeyzapDemo()
        {
            super();
            
            // support autoOrients
            stage.align = StageAlign.TOP_LEFT;
            stage.scaleMode = StageScaleMode.NO_SCALE;
            
            // Your Publisher ID is: 78a1f195d49dd1fb055962b88a3c912d
            HeyzapAds.getInstance().start("78a1f195d49dd1fb055962b88a3c912d", HeyzapAds.FLAG_NONE);
            HeyzapAds.getInstance().showMediationTestSuite();
            
            var sp:Sprite = new Sprite();
            sp.graphics.beginFill(0x0);
            sp.graphics.drawRect(0,0,100,100);
            sp.graphics.endFill();
            addChild(sp)
            sp.addEventListener(MouseEvent.MOUSE_UP, onclick);
        }
        
        private function onclick(e:MouseEvent):void
        {
//            if(VideoAd.getInstance().isAvailable())
//            {
//                VideoAd.getInstance().show();
//            }
//            else
//            {
//                VideoAd.getInstance().fetch();
//            }
            
            if(IncentivizedAd.getInstance().isAvailable())
            {
                IncentivizedAd.getInstance().show();
            }
            else
            {
                IncentivizedAd.getInstance().fetch();
            }
        }
    }
}