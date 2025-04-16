using System;

//TITV
namespace exercisePermutation
{

    class Program
    {
        static int n = 0;
        static int[] permutation = new int[20];
        static bool[] flag = new bool[20];

        static void SearchPermutation1(int begin)
        {
            for (int i = 1; i <= n; i++)
            {
                if (!flag[i])
                {
                    permutation[begin] = i;
                    if (begin == n)
                    {
                        PrintPermutation(permutation);
                    }
                    else
                    {
                        flag[i] = true;
                        SearchPermutation1(begin + 1);
                        flag[i] = false;
                    }
                }
            }
        }

        static void SearchPermutation2(int begin)
        {
            if (begin == n + 1)
            {
                PrintPermutation(permutation);
            }
            else
            {
                for (int i = 1; i <= n; i++)
                {
                    if (!flag[i])
                    {
                        permutation[begin] = i;
                        flag[i] = true;
                        SearchPermutation2(begin + 1);
                        flag[i] = false;
                    }
                }
            }
        }

        private static void PrintPermutation(int[] permutation)
        {
            for (int i = 1; i <= n; i++)
            {
                Console.Write(permutation[i] + " ");
            }
            Console.WriteLine();
        }

        static void Main(string[] args)
        {
            Console.ForegroundColor = ConsoleColor.Yellow;

            n = int.Parse(Console.ReadLine());

            SearchPermutation1(1);

            Console.ReadKey();
        }
    }
}