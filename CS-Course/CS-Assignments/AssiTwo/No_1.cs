using System;

namespace CS_Assignments.AssiTwo
{
    abstract class Employee
    {
        public string empName;
        public abstract double calcPaidCheck();
    }

    class HourlyWorker:Employee
    {
        protected int work_hour;
        protected double rate;

        public HourlyWorker(string empName, int work_hour ,double rate)
        {
            base.empName = empName;
            this.work_hour = work_hour;
            this.rate = rate;
        }

        public override double calcPaidCheck() 
        {
            double pay_amount = this.rate * this.work_hour;
            return pay_amount;
        }
    }

    class SalaryWorker:Employee
    {
        protected double annual_salary;

        public SalaryWorker(string  empName, double annual_salary)
        {
            base.empName= empName;
            this.annual_salary = annual_salary;
        }

        public override double calcPaidCheck() 
        { 
            double pay_amount = this.annual_salary * this.annual_salary;
            return pay_amount;
        }
    }
}
