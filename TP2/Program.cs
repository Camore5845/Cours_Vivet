namespace TP2
{

 public class Program
    {

        public static void Main(string[] args) 
        {

            Exercice14();
            
            Console.ReadLine();
        }

   static void exercicetableau()
        {
            int[] l_TabEntier={10,20,30,40};
            int l_NombreElements=5;
            l_TabEntier[2]=300;
            l_TabEntier[4]=l_TabEntier[2]*3;
            for(int i=0;i<5;i++)
            {
                l_TabEntier[i]=i*4;

            }
        }
    

        static double[] RempliTableau()
        {
            double[]  l_TabARemplir=new double[20];
            Random l_Rnd=new Random();
            for(int i=0;i<l_TabARemplir.Length;i++)
            {
                l_TabARemplir[i]=l_Rnd.NextDouble() * 20;
            }
            return l_TabARemplir;
        }

        
        static double TrouveMin(double[] pTabNotes)
        {
            double l_Min =pTabNotes[0];
            for(int i=0; i<pTabNotes.Length; i++)
            {
                if(pTabNotes[i] < l_Min)
                {
                    l_Min=pTabNotes[i];
                }
            }
            return l_Min;
        }

        static void Exercie15(double[] pTabNotes)
        {
           for(int i=0;i<pTabNotes.Length;i++)
            {
                Console.WriteLine( pTabNotes[i]);
            }            
        }

        static void Exercice13()
        {
            double[] l_tabNotes=new double[4];
            for(int i=0;i<l_tabNotes.Length;i++)
            {
                l_tabNotes[i]=-1;
            }

        }
    
        static void Exercice14()
        {
            double[] l_tabNotes=new double [4];
            int a=0;
            int b=0;
            int c=0;
            int d=0;
            Console.WriteLine("Donnez la première note");
            a=Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Donnez la seconde note");
            b=Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Donnez la troisième note");
            c=Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Donnez la quatrième note");
            d=Convert.ToInt32(Console.ReadLine());

        }

            static void Exercice17(double[] pTab)
        {
            for (int i = 0; i < 5 ; i++)
            {
                Console.WriteLine("Entrer le nombre " + i);
                pTab[i] = Convert.ToDouble(Console.ReadLine());
            }
            double l_Rep = (pTab[0] + pTab[1] + pTab[2] + pTab[3] + pTab[4]) / 5;
            Console.WriteLine();
            Console.WriteLine("La moyenne est " + l_Rep);
            Console.WriteLine();
        }

        static void Exercice18(double[] pTab)
        {
            for (int y = 0; y < 5 ; y++)
            {
                Console.WriteLine("Entre le nombre " + y);
                pTab[y] = Convert.ToDouble(Console.ReadLine());
            }
            double val_min;
            int i;
            val_min = pTab[0];
            for (i=0; i<pTab.Length; i++)
            {
                if (pTab[i] < val_min)
                {
                    val_min = pTab[i];
                }
            }    
            Console.WriteLine("La valeur min est : " + val_min);
            Console.WriteLine();
        }

        static void Exercice19(double[] pTab)
        {
            for (int y = 0; y < 5 ; y++)
            {
                Console.WriteLine("Entre le nombre " + y);
                pTab[y] = Convert.ToDouble(Console.ReadLine());
            }
            double val_max;
            int i;
            val_max = pTab[0];
            for (i=0; i<pTab.Length; i++)
            {
                if (pTab[i] > val_max)
                {
                    val_max = pTab[i];
                }
            }    
            Console.WriteLine("La valeur max est : " + val_max);
            Console.WriteLine();
        }

        static void Exercice20(double[] pTab)
        {
            Console.WriteLine("Entre le nombre à chercher");
            double val_voul = Convert.ToDouble(Console.ReadLine());
            int i;
            double val_rech = pTab[0];

            for (i=0; i<pTab.Length; i++)
            {
                if (pTab[i] == val_voul)
                {
                    val_rech = i;
                    i = pTab.Length;
                }
                else
                {
                    val_rech = -1;
                }
            }    
            Console.WriteLine("L'indice est " + val_rech + " de la valeur "+ val_voul);
            Console.WriteLine();
        }

        static void Exercice21(double [] pTab)
        {
            for (int i = 0; i < 5 ; i++)
            {
                Console.WriteLine("Entre le nombre " + i);
                pTab[i] = Convert.ToDouble(Console.ReadLine());
            }
            int I,J;
            for(I = pTab.Length - 2;I >= 0; I--) 
            {
                for(J = 0; J <= I; J++) 
                {
                    if(pTab[J + 1] < pTab[J]) 
                    {
                        double t = pTab[J + 1];
                        pTab[J + 1] = pTab[J];
                        pTab[J] = t;
                    }
                }
            }
            Console.WriteLine("");
            Console.WriteLine("Tableau trie :");
            Console.WriteLine("---------------");
            for (int y=0; y < pTab.Length; y++)
            {
                Console.WriteLine("n°"+ y + " | " + pTab[y]);
            }
            Console.WriteLine("---------------");
            Console.ReadLine();
        }
}

