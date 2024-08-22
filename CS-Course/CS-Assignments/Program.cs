using System;
using CS_Assignments.AssiOne;
using CS_Assignments.AssiTwo;

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

            Console.WriteLine("______________________________________________________________");
            //Assignment 1.2
            Person supervisor = new Person("John", 10000);
            Person employee = new Person("Alice", 5000);

            double supervisorBonus = supervisor.CalculateBonus();
            double employeeBonus = employee.CalculateBonus();

            string message = (supervisorBonus > employeeBonus)
                ? $"Supervisor's bonus is greater: {supervisorBonus}"
                : $"Employee's bonus is greater: {employeeBonus}";

            Console.WriteLine(message);

            Console.WriteLine("______________________________________________________________");
            //Assignment 2.1
            HourlyWorker[] hourly_workers = new HourlyWorker[]
            {
                new HourlyWorker("Aung", 30, 100.50),
                new HourlyWorker("Chi", 20, 90.80)
            };

            SalaryWorker[] salary_workers = new SalaryWorker[]
            {
                new SalaryWorker("Khant", 300000),
                new SalaryWorker("Kyaw", 250000)
            };

            Console.WriteLine("Pay Amount for Hourly Worker : ");
            for (int i = 0; i < hourly_workers.Length; i++)
            {
                Console.WriteLine($"{hourly_workers[i].empName} => {hourly_workers[i].calcPaidCheck()}");
            }

            Console.WriteLine("Pay Amount for Salary Worker : ");
            for (int i = 0; i < salary_workers.Length; i++)
            {
                Console.WriteLine($"{salary_workers[i].empName} => {salary_workers[i].calcPaidCheck()}");
            }

            Console.WriteLine("______________________________________________________________");

            //Assignment 2.2
            No_2 calculator = new No_2();

            int result_1 = calculator.Sum(3, 4);
            float result_2 = calculator.Sum(3.5f, 4.2f);
            int result_3 = calculator.Sum(3, 4, 5);

            Console.WriteLine($"Sum of Integers => {result_1}");
            Console.WriteLine($"Sum of Floats => {result_2}");
            Console.WriteLine($"Sum of Three Integers => {result_3}");
            Console.ReadLine();
        }
    }
}