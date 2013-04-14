package <%= package_name %>
{
    import citrus.core.*;
    import states.*;

    [SWF(width='800', height='600')]
    public class <%= class_name %> extends CitrusEngine
    {
        public function <%= class_name %>()
        {
            super();
            state=new GameState();
        }
    }
}

