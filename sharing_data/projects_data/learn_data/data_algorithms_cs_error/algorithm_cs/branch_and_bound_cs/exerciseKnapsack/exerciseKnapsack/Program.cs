using System;

namespace exerciseKnapsack
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var amountItems = 4;
            var maxWeight = 6;
            var dpTable = new int[amountItems + 1, maxWeight + 1];
            var weightItems = new int[] { 0, 2, 1, 4, 3 };
            var valueItems = new int[] { 0, 3, 3, 4, 2 };

            DynamicProgramming(amountItems, maxWeight, dpTable, weightItems, valueItems);
            PrintLogic(dpTable, amountItems, maxWeight);

            var result = dpTable[amountItems, maxWeight];
            Console.WriteLine($"\nResult: {result}");
        }

        private static void DynamicProgramming(int amountItems, int maxWeight, int[,] dpTable, int[] weightItems, int[] valueItems)
        {
            for (int i = 1; i <= amountItems; i++)
            {
                for (int j = 1; j <= maxWeight; j++)
                {
                    dpTable[i, j] = dpTable[i - 1, j];

                    if (j >= weightItems[i])
                    {
                        dpTable[i, j] = Math.Max(dpTable[i, j], dpTable[i - 1, j - weightItems[i]] + valueItems[i]);
                    }
                }
            }
        }

        private static void PrintLogic(int[,] dpTable, int amountItems, int maxWeight)
        {
            for (int i = 1; i <= amountItems; i++)
            {
                for (int j = 1; j <= maxWeight; j++)
                {
                    Console.Write(dpTable[i, j] + " ");
                }
                Console.WriteLine();
            }
        }
    }
}
