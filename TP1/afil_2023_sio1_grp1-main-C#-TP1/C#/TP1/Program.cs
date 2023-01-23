namespace TP1
{
    public class Program
    {

        public static void Main(string[] args) 
        {

            Exercice12();
            
            Console.ReadLine();
        }


        static void Exercice12()
        {
            Console.WriteLine("Choisissez un nombre de départ");
            int l_nombresaisi = Convert.ToInt32(Console.ReadLine());
            for(int i=1;i<11;i++)
            {
              Console.WriteLine("{0} * {1} = {2}", param, i, param * i);
            }
        }

        static void Exercice11()
        {
            Console.WriteLine("Veuillez saisir un nombre entier");
            string l_ChaineSaisie;
            l_ChaineSaisie = Console.ReadLine();
            int l_NombreSaisi = Convert.ToInt32(l_ChaineSaisie);
            for(int i=1;i<11;i++)
            {
                Console.WriteLine(l_NombreSaisi + i);
            }
        }

        public static void Exercice6() 
        {
            Console.WriteLine("Veuillez sasisir un nombre entier");
            string l_ChaineSaisie;
            l_ChaineSaisie = Console.ReadLine();
            int l_NombreSaisi;
            l_NombreSaisi = Convert.ToInt32(l_ChaineSaisie);
            if(l_NombreSaisi > 0)
            {
                Console.WriteLine("Le nombre est positif");
            }
            else
            {
                if(l_NombreSaisi<0)
                {
                    Console.WriteLine("Le nombre est négatif");
                }
                else
                {
                    Console.WriteLine("Le nombre est nul");
                }
            }
        }


        public static void Exercice3()
        {
            Console.WriteLine("Veuillez sasisir un nombre entier");
            string l_ChaineSaisie;
            l_ChaineSaisie = Console.ReadLine();
            int l_NombreSaisi;
            l_NombreSaisi = Convert.ToInt32(l_ChaineSaisie);
            int l_Carre = l_NombreSaisi * l_NombreSaisi;
            Console.WriteLine("Le carré de " + l_NombreSaisi + " est " + l_Carre);

        
        }
        public static void Exercice1()
        {
            int l_Variable1;
            l_Variable1 = 3;
            int l_Variable2;
            l_Variable2=l_Variable1+5;
            Console.WriteLine("Le contenu de la variable l_MonEntier2 est " + l_Variable2);
        }



    }


}