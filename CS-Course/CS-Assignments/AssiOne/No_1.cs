namespace CS_Assignments.AssiOne
{
    public class Rectangle
    {
        private double width;
        private double height;
        private double area;

        public Rectangle(double width, double height)
        {
            this.width = width;
            this.height = height;
        }

        public double CalculateArea()
        {
            return area = width * height;
        }
        
        public double Width
        {
            get => width;
            set => width = value;
        }

        public double Height
        {
            get => height;
            set => height = value;
        }
        
        public double Area
        {
            get => area;
            set => area = value;
        }
    }
    
    public class Door:Rectangle
    {
        private double cost;

        public Door(double width, double height) : base(width, height){}

        public double CalculateCost()
        {
            return cost = Area * 70;
        }
    }
}