using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowFormAppConsumoDLL
{
    public partial class FormVector : Form
    {
        //[DllImport(@"D:\FI_Cloud\OneDrive - Universidad Autonoma de Tamaulipas\5_ArchivosCompartidos\PM_2021_1\PM_0_U5_ProgHibrida\DLL_AppHibrida_ASM_C\Debug\DLL_AppHibrida_ASM_C.dll")]

        [DllImport(@"D:\FI_Cloud\OneDrive - Universidad Autonoma de Tamaulipas\5_ArchivosCompartidos\PM_2021_1\PM_0_U5_ProgHibrida\DLL_AppHibrida_ASM_C\Debug\DLL_AppHibrida_ASM_C.dll")]
        public static extern IntPtr enviar_arreglo();

        [DllImport(@"D:\FI_Cloud\OneDrive - Universidad Autonoma de Tamaulipas\5_ArchivosCompartidos\PM_2021_1\PM_0_U5_ProgHibrida\DLL_AppHibrida_ASM_C\Debug\DLL_AppHibrida_ASM_C.dll")]
        public static extern int LiberarMemoria(IntPtr ptr);

        [DllImport(@"D:\FI_Cloud\OneDrive - Universidad Autonoma de Tamaulipas\5_ArchivosCompartidos\PM_2021_1\PM_0_U5_ProgHibrida\DLL_AppHibrida_ASM_C\Debug\DLL_AppHibrida_ASM_C.dll")]
        public static extern double promedio(int[] arreglo);

        [DllImport(@"D:\FI_Cloud\OneDrive - Universidad Autonoma de Tamaulipas\5_ArchivosCompartidos\PM_2021_1\PM_0_U5_ProgHibrida\DLL_AppHibrida_ASM_C\Debug\DLL_AppHibrida_ASM_C.dll")]
        public static extern IntPtr asm_prueba(int[] arreglo);


        public FormVector()
        {
            InitializeComponent();
        }

        private void FormVector_Load(object sender, EventArgs e)
        {
            //10.25   ->   1025
            /*

            IntPtr ptr = enviar_arreglo();
            int arrayLength = Marshal.ReadInt32(ptr);
            
            // points to arr[1], which is first value
            IntPtr start = IntPtr.Add(ptr, 4);
            int[] result = new int[arrayLength];
            Marshal.Copy(start, result, 0, arrayLength);

            LiberarMemoria(ptr);

            
            for (int i = 0; i < result.Length; i++)
            {
                MessageBox.Show(result[i].ToString());
            }
            */

            /*
            int[] arregloNums = new int[4];
            arregloNums[0] = 7;
            arregloNums[1] = 6;
            arregloNums[2] = 8;
            arregloNums[3] = 10;

            double val = promedio(arregloNums);
            MessageBox.Show(val.ToString());
          */

            /*
             * PRACTICA/EJERCICIO:
             * 
             * REALIZAR UN PROGRAMA QUE RETORNE EN UN ARREGLO 
             * LOS PRIMEROS N NUMEROS DE LA SUENCIA FIBONACCI
             * 
             * N SERA INGRESADO POR EL USUARIO
             * 
             * EJEMPLO= 
             * 
             *  FIBONNACI(5)
             * 
             * RESULTADO:
             *      x = [0 1 1 2 3]
             */

            int[] arregloNums = new int[2];
            arregloNums[0] = 1; // cantidad de elementos que tiene el arreglo
            arregloNums[1] = 6;

            IntPtr ptr = asm_prueba(arregloNums);
            int arrayLength = Marshal.ReadInt32(ptr);

            // points to arr[1], which is first value
            IntPtr start = IntPtr.Add(ptr, 4);
            int[] result = new int[arrayLength];
            Marshal.Copy(start, result, 0, arrayLength);

            MessageBox.Show(result[0].ToString());

        }
    }
}
