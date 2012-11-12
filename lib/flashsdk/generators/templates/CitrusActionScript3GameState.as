package states
{
    import com.citrusengine.core.*;
    import com.citrusengine.physics.box2d.*;
    import com.citrusengine.objects.platformer.box2d.*;
    import com.citrusengine.math.*;
    import flash.display.*;
    
    public class GameState extends State
    {
         
        public function GameState()
        {
            super();
        }
        
        override public function initialize():void
        {
            super.initialize();
            
            var box2D:Box2D=new Box2D("box2d");
            add(box2D);
            box2D.visible=true;
            
            var hero:Hero=new Hero('hero');
                
            
            add(hero);
            hero.x=320;
            hero.y=200;
            
            view.setupCamera(hero, new MathVector(400,300));
            
            var platform:Platform=new Platform('platform',{width: 1000, height: 20});
            add(platform);
            platform.x=-100;
            platform.y=400;
           
        }
    }
}