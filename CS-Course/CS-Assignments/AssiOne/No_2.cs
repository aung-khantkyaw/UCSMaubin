namespace CS_Assignments.AssiOne
{
    public class Person
    {
        private string name;
        private double salary;

        public Person(string name, double salary)
        {
            this.name = name;
            this.salary = salary;
        }

        public double CalculateBonus()
        {
            double bonous = salary * 0.1;
            return bonous;
        }
    }
}