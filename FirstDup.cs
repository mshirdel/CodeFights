using System;
using System.Linq;
using System.Collections.Generic;

namespace CodeFight
{
    public class Programm 
    {
        public static void Main(string[] args)
        {
            int[] a = {2, 3, 3, 1, 5, 2};
            Console.WriteLine(firstDuplicate(a).ToString());
        }

        public static int firstDuplicate(int[] a) 
        {
            List<int> temp = new List<int>();
            List<int> duplicates = new List<int>();
            foreach (int n in a)
            {
                if(temp.Contains(n))
                    duplicates.Add(n);
                else
                    temp.Add(n);
            }
            if(duplicates.Count == 0)
                return -1;
            else
                return duplicates.First();
        }
    }

    
}
