using System;
using CS_Assignments.AssiOne;

namespace Assi_One
{
    internal class Program
    {
        public static void Main(string[] args)
        {
            //Assignment 1.1
            Door door = new Door(10, 10);
            
            Console.WriteLine($"Width \t: {door.Width} m");
            Console.WriteLine($"Height \t: {door.Height} m");
            Console.WriteLine($"Area \t: {door.CalculateArea()} m^2");
            Console.WriteLine($"Cost \t: {door.CalculateCost()} $");
            
            //Assignment 1.2
            Person supervisor = new Person("John", 10000);
            Person employee = new Person("Alice", 5000);
            
            double supervisorBonus = supervisor.CalculateBonus();
            double employeeBonus = employee.CalculateBonus();
            
            string message = (supervisorBonus > employeeBonus)
                ? $"Supervisor's bonus is greater: {supervisorBonus}"
                : $"Employee's bonus is greater: {employeeBonus}";
            
            Console.WriteLine(message);
            
            Console.ReadLine();
        }
    }
}