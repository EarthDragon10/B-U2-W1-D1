using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace B_U2_W1_D1
{
    public class Dipendente
    {
        public int ID_Dipendente { get; set; }
        public string Nome { get; set; }
        public string Cognome { get; set; }
        public string Indirizzo { get; set; }
        public string CodiceFiscale { get; set; }
        public decimal Stipendio { get; set; }  
        public bool Coniugato { get; set; }
        public int NumFigliCarico { get; set; }
        public string Mansione { get; set; }
        public static List<Dipendente> ListaDipendenti = new List<Dipendente>();
        public static List<Dipendente> ListaDettaglioDipendente = new List<Dipendente>();
    }
}