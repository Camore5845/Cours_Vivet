namespace TP2
{
    public class Program
    {

        public static void Main(string[] args)
        {

            exercicebase();

            Console.ReadLine();
        }

        static void exercicebase()
        {
            int[] l_TabEntier={10, 20, 30, 40};
            int l_NombreElements=5;
            l_TabEntier=new int[l_NombreElements];
            l_TabEntier[2]=300;
            l_TabEntier[4]=l_TabEntier[2]*3;
            for (int i = 0; i < 5; i++)
            {
                l_TabEntier[i]= i*4;

            }
        }

    }
}