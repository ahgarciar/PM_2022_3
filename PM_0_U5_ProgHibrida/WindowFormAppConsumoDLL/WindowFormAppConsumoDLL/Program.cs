using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowFormAppConsumoDLL
{
    static class Program
    {
        /// <summary>
        /// Punto de entrada principal para la aplicación.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            //Application.Run(new Program_One());            
            //Application.Run(new P1_puedoVotar());
            //Application.Run(new P2_discriminante());
            //Application.Run(new SumaConsecutiva());
            //Application.Run(new P3_checarX());
            Application.Run(new FormVector());
            

        }
    }
}
