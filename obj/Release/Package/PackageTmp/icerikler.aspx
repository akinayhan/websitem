<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="icerikler.aspx.cs" Inherits="websitem.icerikler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    Float: 4 byte lık ondalıklı değişken üründür. Ondalıklı bir sayının sonuna küçük f veya büyük f getirilirse float anlamına gelir veya float türde işleme girer.

Double: 8 byte lık ondalıklı veri türüdür. Bir sayının sonuna herhangi bir şey getirmezsek veya “d” veya “D” koyarsak double türde işleme girer.

Decimal: 16 byte lık ondalıklı veri türüdür. Ondalıklı bir sayının sonuna küçük m veya büyük m koyarsak decimal türde işleme girer.

 

    float a = 3.65f; //

    float b = 3.65; //hatalıdır. double türdeki bir sayıyı float türündeki bir değişkene bu şekilde atayamayız.

    double c = 3.65f; //bu satırda sıkıntı yoktur. Çünkü küçük türde olan float büyük türden olan double a atanabilir.

Küçük tür büyük türe atanabilir ancak büyük tür küçük türe bu şekilde atanamaz.

İki byte türden değişken ile işlem yapıp bir byte türden değişkene atamaya izin verilmemiş.

Byte türden bir değişkenin alabileceği değerler küçük değerler olduğundan işlem yapılıp byte türden bir değişkene atama yapılacağı zaman sınırların aşılabileceği düşünülmüştür.

 

Bool Veri Türü : Mantıksal değişken türüdür. Alabileceği değerler true veya false dir.

Char Veri Türü : 16 bit uzunluğunda evrensel bir karakter kod olan unicode standartlarındaki karakterleri temsil etmek için kullanılır.

 

            char a = 'A';

            char b = (char)45;

            char c = '\u0061';

            label1.Text=b.ToString();

 

Referans tipler

 

String veri türü : Unicode karakterlerin bir dizisi olarak düşünülebilir. String türde bir değişken şu şekilde tanımlanabilir.

string x="ali;"

                char y='a';

 

bir string de özel karakter kullanmadığımızı belirtmek için @ veya \\ kullanılır.

string d = @"c:\okul\ornek.doc";

string d = "c:\\nokul\\ornek.doc";

 

Object veri türü : C# ta bütün veri türlerinin gizli olarak türediği veri türüdür. Her nesne bir object olduğu için bütün değerler ve nesneler object türünden bir değişkene atanabilir. Nesnelerin object türüne dönüştürülmesine boxing denir.

object a;

            a = 1;

            a = 4.8;

Tür Dönüşümü : Bazı durumlarda tanımladığımız değişkenlerin farklı bir türdenmiş gibi davranmasını isteyebiliriz. Büyük projelerde çok fazla değişken vardır ve bu değişkenlerin zaman zaman ortak iş yapması istenebilir.

Örneğin short türden bir değişken ile long türden bir değişken toplanmak istenebilir. Normal şartlarda farklı türlerde nesnelerin herhangi bir aritmetik işleme sokulması çok özel durumlar dışında mümkün değildir. Bu yüzden farklı türden iki değişken toplanırken veya çarpılırken geçici olarak tür dönüşümünden faydalanılır. Genelde küçük türlerin büyük türlere dönüştürülmesinde sıkıntı yoktur fakat büyük türlerin küçük türlere dönüştürülmesi her zaman mümkün değildir.

 

Tür dönüşümü bilinçli ve bilinçsiz olmak üzere ikiye ayrılır.

 

Bilinçsiz Tür dönüşümü

 

Bir türün başka bir türe bilinçsizce dönüştürülmesidir. Bu işlem bilinçsiz yapıldığından küçük türün büyük türe dönüşümüne izin verilir, fakat büyük türün küçük türe bilinçsizce dönüştürülmesine izin verilmez. Bunun sebebi veri kaybını engellemektir.

 

      int a = 5;

      byte c=6;

c = a;  // yanlıştır. Çünkü büyük tür küçük türe bu şekilde dönüştürülemez.

a = c;  // doğrudur. çünkü küçük tür büyük türe bu şekilde bilinçsizce dönüştürülebilir.

 

Bilinçli Tür Dönüşümü

 

Genellikle derleyicinin izin vermediği durumlarda kullanılır. Programın anlaşılabilirliğini arttırmak için tüm tür dönüşümlerinden bilinçli tür dönüşümü kullanılabilir. Bilinçli tür dönüşümü operatörü “ () “ ile yapılır.

 

Bilinçli tür dönüşümü

 byte a = 45;

 int b = (int)a; //burada byte olan a değişkenini geçici olarak int e dönüştürüp int olan b değişkenine atanmıştır

label1.Text = b.ToString();

 

// bu işlemi bilinçsiz olarakta yapabilirdik

Bilinçsiz tür dönüşümü

byte a = 45;

 int b =a;

label1.Text = b.ToString();

 

   byte a = 34;

   int b = 12;

   a = b;

   //hatalı kullanım vardır.burada büyük tür küçük türe dönüştürülemez.

   //fakat şu şekilde bilinçli olarak yapabiliriz.

   byte a = 34;

   int b = 12;

   a = (byte)b; //burada int türde olan b değişkeni geçici olarak byte türe dönüştürülüp byte olan a değişkenine atanmıştır. Bu işlem bilinçli olarak yapıldığı için derleyici veri kaybı olsa bile bizi uyarmayacaktır.

 

Bilinçli tür dönüşümünde veri kaybı olsa bile derleyici bizi uyarmadığından dikkatli olmamız gerekir.

Veri kaybına bir örnek şu şekilde verebiliriz.

 

    int a = 256;

    byte b = (byte)a;

    label1.Text = b.ToString();

 

İnt türden değişkenin bellekte gösterimi

 

xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx

 

 

Byte türden değişkenin bellekte gösterimi

 

xxxxxxxx

 

256

 

00000000 00000000 00000000 00000000

 

 

Checked - unchecked

 

Bilinçli tür dönüşümünde derleyici veri kaybı olsa bile bizi uyarmamaktadır. Bunun sebebi dönüşümü bilerek yaptığımızı düşünmesinden kaynaklanmaktadır. Bu yüzden bilinçli tür dönüşümü yaparken eğer veri kaybı olacak ise derleyicinin bizi uyarması için bu tür dönüşümü “checked” bloğu içinde yazılır. Checked bloğu içinde bazı  tür dönüşümleri için yine bizi uyarmasını istemiyorsak checked bloğu içinde unchecked bloğu kullanırız.

 

    int a = 258;

    byte b;

    byte c;

    checked

    {

    b=(byte)a;

    unchecked

    {

       c = (byte)a;

    }

    }

    label1.Text = b.ToString();

 

 

 

label1.Text = b.ToString();

label1.Text = Convert.ToString(b);

 

İKİ SATIR DA AYNI

 

 

int abc = int.Parse(textBox1.Text);

int ab = Convert.ToInt32(textBox1.Text);

 

İKİ SATIR DA AYNI

 

OPERATÖRLER

 

//int a = 3, b = 8;

            //int c = a % b;

            //textBox1.Text = c.ToString();

            //textBox1.Text = (a++).ToString();

            //c = 1 + 2 * 3 - 4/4 * (3 + (9 - 8));

            //textBox1.Text = c.ToString();

            // ==

            // =

            // && ve

            // || veya

            //textBox1.Text = Math.Pow(3,2).ToString(); // üs alma

            //   ?:

            // koşul?doğru_değer?yanlış_değer

            //int sayi = 1;

            //string sonuc = sayi == 2 ? "mat" : "bil";

            //

 

 

AKIŞ KONTROL MEKANİZMALARI

 

Koşul İfadeleri

 

C# dilinde koşula bağlı olarak işlem yapan iki deyim vardır. Bunlar if ve switch tir.

 

Herhangi bir koşul sağlandığında işlem yapmak istiyorsak if veya switch deyimlerini kullanabiliriz. İf ile yapılabilen bir programı switch kullanarakta yapabiliriz. Programın anlaşılabilirliğini arttırabilmek için karmaşık koşullu ifadelerde switch ifade edilebilir.

 

İf Deyimi

 

İf (koşul)

Yapılacak işlem

Örnek:

 

            int s=3;

            if (s > 5)

                textBox1.Text = "KOŞUL SAĞLANDI";

            else

            textBox1.Text = "KOŞUL SAĞLANMADI";

 

Örnek

            int s=3;

            if (s > 5)

                textBox1.Text = "sayı 5 ten büyük";

            else if(s==5)

            textBox1.Text = "sayı 5";

            else

                textBox1.Text = "sayı 5 ten büyük";

Örnek ikinci dereceden bir denklemin köklerini bulan bir visual c# programı yazınız.

 

            double x1,x2;

            int a, b, c;

            a=Convert.ToInt32(textBox1.Text);

            b=Convert.ToInt32(textBox2.Text);

            c=Convert.ToInt32(textBox3.Text);

            int d=b*b-4*a*c;

            if (d > 0)

            {

                x1 = (-b + Math.Sqrt(d)) / (2 * a);

                x2 = (+b + Math.Sqrt(d)) / (2 * a);

                label4.Text = "x1=" + x1 + ",   x2=" + x2;

            }

            else if (d == 0)

            {

                x1 = -b / (2 * a);

                label4.Text = "x1=" + x1;

            }

            else

                label4.Text = "Reel kök yoktur";

 

 

Switch deyimi

 

Switch deyimi genellikle kompleks if else bloklarının yerine tercih edilir. Bir switch yapısında “break case , switch , goto” anahtar sözcüklerini kullanabiliriz.

 

Switch yapısını şöyle kullanabiliriz.

 

Switch (ifade)

{

Case sabit1:

Deyim1;

Break;

Case sabit2:

Deyim2;

Break;

…

Default:

Deyim2;

Break;

 

İfade sabit 1 e eşit ise deyim 1 yapılır ve break ten dolayı switch yapısından çıkılır

İfade sabit 1 e eşit değil ise sabit 2 ye bakılır. İfade eğer 2 ye eşit ise breakten dolayı switch yapısından çıkılır.

 

Bu şekilde tüm durumlara bakılır. İfade durumlardan herhangi birine eşit değil ise default kısmı yapılır.

Switch yapısında default kullanmak durumunda değiliz ayrıca default kullanıyorsak en sonda olması gerekmez.

 

 

 

Örnek:

            int sayi = 3;

            switch (sayi)

            {

                case 1:

                label4.Text = "sayi 1 dir";

                break; //eğer bu break olmaz ise bir durumdan diğer duruma geçtiğimizi düşünüp derleyici hata verecektir. Dolayısı ile case lerde break kullanmak zorundayız. Bir case yapısından diğer case yapısına geçmek istiyorsak bunu goto ile yapabiliriz.

                case 2:

                label4.Text = "sayi 2 dir";

                break;

                case 4:

                label4.Text = "sayi 3 dür";

                break;

                default:

                label4.Text = "sayi 1,2,4 değildir";

                break;

            }

 

 

 

            int sayi = 3;

            switch (sayi)

            {

                case 1: //

                case 2: //

                label4.Text = "sayi 1 ve ya 2 dir";

                break;

                case 4:

                label4.Text = "sayi 3 dür";

                break;

                default:

                label4.Text = "sayi 1,2,4 değildir";

                break;

            }

 

Örnek: Girilen bir x için aşağıdaki fonksiyonu hesaplayan bir visual c# programı yazınız. F(x) =

 

X+1  x<0

Cosx  x=0

Kökx  x>0

 

            double f;

            int x = Convert.ToInt32(textBox4.Text);

            if (x < 0)

                f = x + 1;

            else if (x == 0)

                f = Math.Cos(x);

            else

                f = Math.Sqrt(x);

            label4.Text = "fonksiyonun sonucu=" + f; // f ten sonra .ToString() ile hata durumu ortadan kaldırılabilir.

 

Örnek: Bir öğrencinin ortalaması girildiğinde ortalaması 80 üzeri ise aa, 60-79 arasında ise ba, 50-59 arasında ise cc 35-49 arasında ise dc, diğer durumlarda ff olduğunu ekrana yazan bir visual c# programı yazınız.

 

            int ort = int.Parse(textBox4.Text);

            if (ort>100 || ort<0)

                label4.Text="hatalı ortalama girdiniz.";

            else if (ort>=80)

                label4.Text="AA aldınız.";

            else if (ort >= 60)

                label4.Text="BA aldınız.";

            else if (ort >= 50)

                label4.Text="CC aldınız.";

            else if (ort >= 35)

                label4.Text = "DC aldınız.";

            else

                label4.Text = "FF aldınız.";

 

 

double boy = double.Parse(textBox4.Text);

            double kilo = double.Parse(textBox5.Text);

            double sonuc = kilo / (boy * boy);

            if (sonuc>0 && sonuc<18.4)

                label4.Text="ZAYIF";

            else if (sonuc<=24.9)

                label4.Text="NORMAL";

            else if (sonuc<=29.4)

                label4.Text="KİLOLU";

            else if (sonuc<=34.9)

                label4.Text="1. DERECE OBEZ";

            else if (sonuc<=44.9)

                label4.Text = "2. DERECE OBEZ";

            else

                label4.Text = "AŞIRI OBEZ";

 

 

ÖRNEK1: n*n lik bir matrisin 2. Satırı ile 3. Sütununun toplamını bulan bir visual c# programı yazınız.

 

ÖRNEK2:n*n lik bir matrisin köşegen ve ters köşegen üzerindeki elemanların toplamını bulan bir visual c# programı yazınız.

 

ÖRNEK3: mxn lik bir matrisin indisleri toplamı tek olanların toplamını bulan bir visual c# programı yazınız.

 

ÖRNEK4: nxn lik bir matrisin transpozunu bulan bir visual c# programı yazınız.

 

ÖRNEK5: nxn lik iki matrisin toplamını bulan bir visual c# programı yazınız.

 

ÖRNEK6: nxm lik ve mxr lik iki matrisin çarpımını bulan bir visual c# programı yazınız.

 

ÖRNEK7: nxn lik bir matrisin determinantını bulan bir visual c# programı yazınız.

 

 

 

int n = Convert.ToInt32(textBox1.Text);

            int[,] a = new int[n + 1, n + 1];

            int i,j,toplam=0;

            string satir="";

            for (i = 1; i <= n; i++)

            {

                for (j = 1; j <= n; i++)

                {

                    a[i, j] = Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox("a["+i+","+j+"] i giriniz:","A matrisi",100,100;

                    satir+=a[i,j]+"";

                    if (i==2 || j==3)

                toplam+=a[i,j];

        }

                listBox1.Items.Add(satir);

                satir="";

            }

            label2.Text="2.satır ile 3. sütun toplamı="+toplam;

 

 

            int n = Convert.ToInt32(textBox1.Text);

            int[,] a = new int[n + 1, n + 1];

            int i, j, toplam = 0;

            string satir = "";

            for (i = 1; i <= n; i++)

            {

                for (j = 1; j <= n; i++)

                {

                    a[i, j] = Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox("a[" + i + "," + j + "] i giriniz:", "A matrisi", 100, 100));

                    satir += a[i, j] + "";

                    if (i == j || i + j == n + 1)

                        toplam += a[i, j];

                }

                listBox1.Items.Add(satir);

                satir = "";

            }

            label2.Text = "köşegen+ters köşegen toplamı=" + toplam;

 

 

   int n = Convert.ToInt32(textBox1.Text);

            int[,] a = new int[n + 1, n + 1];

            int i, j, toplam = 0;

            string satir = "";

            for (i = 1; i <= n; i++)

            {

                for (j = 1; j <= n; i++)

                {

                    a[i, j] = Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox("a[" + i + "," + j + "] i giriniz:", "A matrisi", 100, 100));

                    satir += a[i, j] + "";

                    if (i+j%2!=0 )

                        toplam += a[i, j];

                }

                listBox1.Items.Add(satir);

                satir = "";

            }

            label2.Text = "İndis toplamı tek olanların toplamı=" + toplam;

 

 

using System;

using System.Collections.Generic;

using System.ComponentModel;

using System.Data;

using System.Drawing;

using System.Linq;

using System.Text;

using System.Windows.Forms;

 

namespace WindowsFormsApplication1

{

    public partial class Form1 : Form

    {

        public Form1()

        {

            InitializeComponent();

        }

 

        private void Form1_Load(object sender, EventArgs e)

        {

 

        }

 

        private void textBox1_TextChanged(object sender, EventArgs e)

        {

 

        }

 

        private void button2_Click(object sender, EventArgs e)

        {

            Close();

        }

 

        private void label1_Click(object sender, EventArgs e)

        {

 

        }

 

        private void button1_Click(object sender, EventArgs e)

        {

                int n = Convert.ToInt32(textBox1.Text);

                int[,] a = new int[n + 1, n + 1];

                int i,j,toplam=0;

                string satir="";

                for (i = 1; i <= n; i++)

                {

                    for (j = 1; j <= n; i++)

                    {

                        a[i, j] = Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox("a["+i+","+j+"] i giriniz:","A matrisi","",100,100));

                        satir+=a[i,j]+"";

                        if (i==2 || j==3)

                    toplam+=a[i,j];

            }

                    listBox1.Items.Add(satir);

                    satir="";

                }

                label2.Text="2.satır ile 3. sütun toplamı="+toplam;

 

        }

 

        private void button3_Click(object sender, EventArgs e)

        {

            //int n = Convert.ToInt32(textBox1.Text);

            //int[,] a = new int[n + 1, n + 1];

            //int i, j, toplam = 0;

            //string satir = "";

            //for (i = 1; i <= n; i++)

            //{

            //    for (j = 1; j <= n; i++)

            //    {

            //        a[i, j] = Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox("a[" + i + "," + j + "] i giriniz:", "A matrisi","", 100, 100));

            //        satir += a[i, j] + "";

            //        if (i == j || i + j == n + 1)

            //            toplam += a[i, j];

            //    }

            //    listBox1.Items.Add(satir);

            //    satir = "";

            //}

            //label2.Text = "köşegen+ters köşegen toplamı=" + toplam;

 

        }

 

        private void button4_Click(object sender, EventArgs e)

        {

            //int n = Convert.ToInt32(textBox1.Text);

            //int[,] a = new int[n + 1, n + 1];

            //int i, j, toplam = 0;

            //string satir = "";

            //for (i = 1; i <= n; i++)

            //{

            //    for (j = 1; j <= n; i++)

            //    {

            //        a[i, j] = Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox("a[" + i + "," + j + "] i giriniz:", "A matrisi", "", 100, 100));

            //        satir += a[i, j] + "";

            //        if (i + j % 2 != 0)

            //            toplam += a[i, j];

            //    }

            //    listBox1.Items.Add(satir);

            //    satir = "";

            //}

            //label2.Text = "İndis toplamı tek olanların toplamı=" + toplam;

 

        }

 

        private void button5_Click(object sender, EventArgs e)

        {

            //int n = Convert.ToInt32(textBox1.Text);

            //int[,] a = new int[n + 1, n + 1];

            //int[,] at = new int[n + 1, n + 1];

            //int i, j;

            //string sa = "",sat"";

            //for (i = 1; i <= n; i++)

            //for(i=1;i<=n;i++)

            //        a[i, j] = Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox("a[" + i + "," + j + "] i giriniz:", "A matrisi", 100, 100));

            //for(i=1; i<=n; i++)

            //            for (j = 1; j <= n; i++)

            //    {

            //        at[i,j]=a[i,j];

            //        sa+=a[i,j]+"";

            //    sat+=at[i,j]+" ";

            //    }

            //    listBox1.Items.Add(sa);

            //     listBox2.Items.Add(sat);

            //    sa= "";sat="";

            //}

            //label2.Text = "İndis toplamı tek olanların toplamı=" + toplam;

        }

 

        private void button6_Click(object sender, EventArgs e)

        {

        

    //        int m=Convert.ToInt32(TextBox1.Text);

    //    int[,] a=new int[new+1,new+1];

    //    int[,] b=new int[new+1,new+1];

    //    int[,] ab=new int[new+1,new+1];

    //    int i,j;

    //    string sa="",sb="",sab="";

    //    for(i=1;i>=new,i++)

    //{

    //    for(j=1;j<=n;j++)

    //{

    //    a[i, j] = Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox("a[" + i + "," + j + "] i giriniz:", "A matrisi", 100, 100));

    //    b[i, j] = Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox("a[" + i + "," + j + "] i giriniz:", "A matrisi", 100, 100));

    //    ab[i,j]=a[i,j]+b[i,j];

    //    sa+=[]

       

        }

 

        private void button7_Click(object sender, EventArgs e)

        {

            //int n=Convert.ToInt32(TextBox1.Text);

            //int m=Convert.ToInt32(TextBox2.Text);

            //int r=Convert.ToInt32(TextBox3.Text);

            //    int[,] a=new int[n+1,n+1];

            //    int[,] b=new int[m+1,m+1];

            //    int[,] ab=new int[r+1,r+1];

            //    int i,j,k,t;

            //    string sa="",sb="",sab="";

            //    for(i=1;i>=n,i++)

            //{

            //    for(j=1;j<=m;j++)

            //    {

            //    a[i, j] = Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox("a[" + i + "," + j + "] i giriniz:", "A matrisi","", 100, 100));

            //    sa+=a[i,j]+"";

            //    }

            //    listBox1.Items.Add(sa);

            //    sa="";

            //}

           

            //for(j=1;j<=m;j++)

            //    {

            //    a[i, j] = Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox("a[" + i + "," + j + "] i giriniz:", "A matrisi","", 100, 100));

            //    sa+=a[i,j]+"";

            //    }

            //    listBox1.Items.Add(sa);

            //    sa="";

 

        }

 

        private void button8_Click(object sender, EventArgs e)

        {

            int n = Convert.ToInt32(textBox1.Text);

            int[,] a = new int[n + 1 , n + 1];

            int[,] b = new int[n + 1 , n + 1];

            int i,j, k;

            double d=1;

            string sa = "";

            for (i=1;i<=n;i++)

            {

                for(j=1;j<=n;j++)

                {

                    a[i, j] = Convert.ToInt32(Microsoft.VisualBasic.Interaction.InputBox("a[" + i + "," + j + "] i giriniz:", "A matrisi","", 100, 100));

                    sa+=a[i,j]+"";

                }

                listBox1.Items.Add(sa);

                sa="";

            }

            for(k=1;k<=n;k++)

            {

                d=d/(Math.Pow(a[1,1],n-k-1));

                for(i=1;i<=n-k;i++)

                {

                    for(j=1;j<=n-k;j++)

                        b[i,j]=a[1,1]*a[i+1,j+1]-a[1,j+1]*a[i+1,1];

                }

                for (i=1;i<=n-k;i++)

                for (j=1;j<=n-k;j++)

                a[i,j]=b[i,j];

            }

            d=d*a[1,1]*a[2,2]-a[1,2]*a[2,1];

            label2.Text="Determinant"+d;

        }

    }

}

 

ÖRNEK: Girilen n ve m için n nin m li kombinasyonunu hesaplayan bir visial c# programı yazınız.

 

{

            int n, m;

            double sonuc;

            n = Convert.ToInt32(textBox1.Text);

            m = Convert.ToInt32(textBox2.Text);

            sonuc = faktoriyel(n) / (faktoriyel(n - m) * faktoriyel(m));

            label3.Text = sonuc.ToString();

 

        }

        int faktoriyel(int k)

        {

            int carp = 1;

            for (int i = 1; i <= k; i++)

                carp *= i;

            return carp;

 

        }

 

        {

            int a, b, n;

            double toplam=0;

            a = Convert.ToInt32(textBox1.Text);

            b = Convert.ToInt32(textBox2.Text);

            n = Convert.ToInt32(textBox3.Text);

            for (int i=1;i<=n;i++)

            toplam+= faktoriyel(n) / (faktoriyel(n-i) * faktoriyel(i)) * Math.Pow(a, n-i+1) * Math.Pow(b, i);

            label3.Text = toplam.ToString();

 

        }

        int faktoriyel(int k)

        {

            int carp = 1;

            for (int i = 1; i <= k; i++)

                carp *= i;

            return carp;

        }

 

 

(n(sin(x))+1=0 denklemini X0=0.5

 

        {

 

           int n = Convert.ToInt32(textBox1.Text);

            double[] x=new double[n+1];

            x[0]=0.5;

            for (int i = 1; i <= n;i++ )

            {

                x[i] = x[i - 1] - f(x[i - 1]) / ft(x[i - 1]);

                label3.Text += x[i] + "\n";

 

            }

            }

        double f(double x)

        {

            return Math.Log(Math.Sin(x)) + 1;

        }

        double ft(double x)

        {

            return Math.Cos(x)/(Math.Sin(x)) + 1;

        }

 

 

Metodların aşırı yüklenmesi

 

Bazen isimleri aynı birden fazla metod tanımlayabiliriz. Örneğin 2,3 ve 4 sayının toplamını bulmak için ismi topla olan tek bir metod tanımlayabiliriz. Bu tür bir metodu çağırdığımız zaman önce birebir uyuma bakılır. Eğer birebir uyum yoksa tür dönüşümlerinden faydalanılır. Çağırılan metod ile çağıran metodun parametre sayısı eşit ise sıkıntı yoktur. Eğer çağıran metodda int türde değişken var ve çağırılan metodda int türünde değişken var ise yine sıkıntı yoktur. Fakat çağırılan ve çağırılanda farklı türde değişken varsa en yakın uyuma bakılır.

 

ÖRNEK: ismi topla olan 3 metod tanımladığımızda burada topla metodu aşırı yüklenmiş bir metoddur.

 

 

label1.Text = topla(1, 4, 5).ToString();

            // burada ilk topla metodu çağırılır. (1,4)

            // burada birebir uyumdan dolayı ikinci topla metodu çağırılır (1,4,5)

            // burada birebir uyumdan dolayı üçüncü metod çağırılır. (1,4,5.0

            // 1) parametre sayısı

            // 2) parametrelerin aynı olması

            // 3) tür dönüşümü

        }

            double topla(int x, int y)

            {

                return x+y;

            }

        double topla (int x, int y, int z)

        {

            return x+y+z;

        }

        double topla (int x, int y, double z)

        {

            return x+y+z;

 

 

system.Math SINIFI VE METODLARI

 

Bazı matematiksel işlemleri yapmak için sistem isim alanı içinde bulunan math sınıfını oluşturmuştur. Math sınıfının metodları statik olduğundan herhangi bir nesne oluşturmadan bu metodlara

Math.metodismi(parametreler) şeklinde kullanılır.

 

C# dilinin ve nesne yönelimli programlama tekniğinin en önemli veri yapısı sınıflardır. Sınıflar programcıya bir veri modeli sunar. Bu veri modeli kullanılarak çeşitli nesneler oluşturulur. C# ta hazır sınıfların yanında kendimiz de özel sınıflar oluşturarak istediğimiz yerde kullanabiliriz. Sınıfların üye elemanları değişkenler (özellik) yada metodlardır. Bazı özel metodlar yapıcı ve yıkıcı metodlar olarak isimlendirilir. Sınıf bildirimleri class anahtar sözcüğü kullanılarak yapılır. Class anahtar sözcüğünden sonra sınıfın ismi gelir. Sınıf isminden sonra açılan ve kapanan parantezler arasına sınıfın üye elemanları yerleştirilir. Bu üye elemanlar metodlar ve özelliklerdir. İki metodu ve iki özelliği olan bir sınıfı şu şekilde oluşturabiliriz.

 

// class sınıf_adı

// {

// erişim_belirleyici veri_türü özeliik1;

// erişim_belirleyici veri_türü özeliik2;

// erişim_belirleyici geri_dönüş_tipi metod1 (parametreler);

// {

// ...

// }

// erişim_belirleyici geri_dönüş_tipi metod2 (parametreler);

// {

// ...

// }

 

C# ta beş erişim belirleyici vardır.

Bunlar : public, private, protected, internal, protected internal

 

Private ile tanımlanan bir metoda sadece tanımlı olduğu sınıf içinden erişilebilir.

Public ile tanımlanan bir metoda ise tanımlı olduğu sınıf dışından da erişilebilir.

 

Metod içinde metod olmaz ancak metod içinden başka bir metod çağırılabilir.

 

                class ornek

            {

                private int a;

                private int b;

                public float ornek1(float x)

            {

                return x+x;

            }

        public float ornek2(float x)

    {

        return x*x;

    }

}

burada a ve b örnek sınıfının iki özelliğidir. Örnek 1 ve örnek 2 ise örnek sınıfına ait iki metoddur.

Örnek 1 ve örnek2 metodları public erişim belirleyici ile tanımlandığından bu iki metoda örnek sınıfı

dışından da erişebiliriz. a ve b özellikleri ise private olduğundan bu özelliklere  örnek sınıfı dışından erişemeyiz.

 

Bir sınıf türünde nesneyi şu şekilde tanımlayabiliriz. Sınıf türünde nesne oluştururken new anahtar sözcüğü kullanılır. Sınıf nesnelerinin bir değişken gibi düşünebiliriz.

            //sınıf _adı nesne_adı

            ornek orn;

bu bildirim ile örnek sınıf türünden bir orn nesnesi bildiriliyor.

Fakat bu bildirim ile üye elemanları bellekte tutmak için yer tahsis edilmemiştir.

üye elamanlarının bellekte yer tahsili için new  anahtar sözcüğünü kullanılır.

 

            //sınıf _adı nesne_adı sınıf_adı();

            ornek orn=new ornek();

Oluşturduğumuz bu orn nesnesi ile örnek sınıfının public erişim belirleyicisi ile tanımlanmış özellik veya metodlarına erişebiliriz.

 

Örnek sınıfının örnek1 metoduna erişmek için örnek sınıfında bir nesne oluşturulabilir.

 

Birden fazla sınıf nesnesi tanımayabiliriz.

ornek orn1 =new ornek();

ornek orn2;

 

 

           ornek orn1 =new ornek();

            ornek orn2;

            orn1.a = 123;

            label1.Text = orn1.a.ToString();

            orn2 = orn1;

            label2.Text = orn2.a.ToString();

            orn2.a = 13;

            label3.Text = orn2.a.ToString();

 

 

  class ornek

            {

                public float a;

                public float ornek1(float a)

            {

                this.a = a;

                return a+a;

            }

}

 

 

Set ve get Anahtar Sözcükleri

 

Set ve get anahtar sözcüklerini kullanarak bir sınıfın private tanımlı özellik veya metodlarına erişebiliriz. Bu sayede bir sınıfın private tanımlı üye elemanlarının get sayesinde değer atanabilir, set sayesinde de değeri değiştirilebilir.

Örnek:

 

    }

    class dortgen

    {

        private int mEn;

        private int mBoy;

        public int En

        {

            get { return mEn; }

            set { mEn = value; }

        }

        public int Boy

        {

            get { return mBoy; }

            set { mBoy = value; }

        }

        public int alan()

        {

            int alan = En * Boy;

            return alan;

        }

        public void enBoyBelirle(int en, int boy)

        {

            En = en;

            Boy = boy;

        }

        public void yaz();

    {

        MessageBox.Show("En="+En);

        MessageBox.Show("Boy="+Boy);

        MessageBox.Show("Alan="+alan());

 

 

NAMESPACE (İSİM ALANI)

 

İsim alanları yazılan programlarda mantıksal organizasyonu sağlar. Büyük projeler hiçbir zaman tek kişi tarafından yazılmaz. Bu projeler kısımlara ayrılır bu kısımlar da farklı kişilere verilir. Kişiler kendilerinden istenileni bitirdikten sonra bu parçalar birleştirilerek proje tamamlanır. Bu kişiler birbirinden bağımsız çalıştığından aynı isimli değişkenler veya metodlar kullanmış olabilirler. Böyle durumlarda proje birleştirildiğinde isim çakışmalarına sebebiyet verirdi. C#’ta bu isim çakışmasını engellemek için “namespace”ler (isim alanları) geliştirilmiştir. Bir namespace’yi projeye dahil etmenin iki yolu vardır. Bunlardan birincisi “using” kullanmaktır.

Örnek: “using System; “  Burada “system namespace” sini projemize dahil etmiş oluyoruz.

Bir namespace içinde başka bir namespace de olabilir.

Örneğin:“System.Data;”   Burada “system namespace” içinde “Data namespace”i vardır. Dolayısıyla bir namespace içinde classlarla birlikte başka namespace ler olabilir.

İkinci yol: Tam isim kullanmaktır.

Bir namespace şu şekilde tanımlanabilir.

 

namespace isim_alanı_adı

{

burada iki küme parantezi arasına başka bir namespace veya class lar getirebiliriz.

}

 

 

 

// bu namespace içinde gorsel1 isimli bir class bulunmaktadır.

// ornek namespace içindeki gorsel1 classından bir g nesnesi oluşturmuş olduk.

// bu ikinci yola örnektir yani tam isim yazmaktır.

// Bu şekilde tam isim yazmak istemiyorsak ornek namespaces ini projenin başına "using" ile ekleriz. ("using ornek")

// Bu eklemeden sonra gorsel1 sınıfına erişmek için "using ornek"

// Bu iki yolun birbirine göre avantajı vardır. Birinci yolu kullanarak isimlerde kısaltma yaparız. // Yani namespace i using ile yukarıya ekledikten sonra nesne oluştururken sınıf adını yazmak yeterli olur.

// ikinci yolun avantajı ise şudur. farklı namespace ler içinde aynı isimli iki sınıf düşünelim.

 

 

            ornek1.gorsel1 g1 = new ornek.gorsel1();

            ornek2.gorsel2 g2 = new ornek.gorsel2();

            // bu şekilde bir kullanım hatalıdır. Çünkü hangi görsel sınıfından nesne oluşturacağını bilemez. Bu gibi durumlarda birinci yol kullanılmaz

            // ikinci yolu kullanmalıyız. Yani tam isim yazmalıyız.

 

 

using ornek1;

using ornek1;

gorsel g = new gorsel();

            // bu şekilde bir kullanım hatalıdır. Çünkü hangi görsel sınıfından nesne oluşturacağını bilemez. Bu gibi durumlarda birinci yol kullanılmaz

            // ikinci yolu kullanmalıyız. Yani tam isim yazmalıyız.

 

 

 

C#ta tarih ve saat işlemleri system isim alanında bulunan “DateTime” ve “TimeSpan” ile gerçekleştirilir. DateTime yapısı gün ay yıl saat dakika ve saniye gibi bilgileri tutmak için kullanılır. TimeSpan ise iki tarih arasındaki farkı temsil etmek için kullanılır. DateTime yapısının bazı özellikleri şunlardır;

Date: Datetime nesnesine ilişkin saat dışındaki bilgiyi verir.
Month: Datetime nesnesinin ay bilgisini int türde verir.
Day: Datetime nesnesinin gün bilgisini int türde verir.
Year: Datetime nesnesinin yıl bilgisini int türde verir.
Dayofweek:DateTime nesnesinin haftanın kaçıncı günü olduğunu verir.
Dayofyear:DateTime nesnesinin yılın kaçıncı günü olduğunu verir.
Timeofday: saat 00:00 dan itibaren ne kadar zaman geçtiğinin TimeSpan nesnesi olarak verir.
Hour:DateTime nesnesinin saat türünü int türünde verir.
Minute:DateTime nesnesinin dakika türünü int türünde verir.
Second:DateTime nesnesinin saniye türünü int türünde verir.
 

 

Örnek:Bir kullanıcının doğum tarihinden bu güne kadar geçen gün sayısını ve doğduğu günü bulan bir visual c# programı yazınız.

 

 

            int y, a, g;

            y = Convert.ToInt32(textBox1.Text);

            a = Convert.ToInt32(textBox2.Text);

            g = Convert.ToInt32(textBox3.Text);

            DateTime bugün = DateTime.Today;

            DateTime dt = new DateTime(y, a, g);

            TimeSpan fark = bugün - dt;

            label4.Text = "Doğduğunuz gün:" + dt.DayOfWeek;

            label5.Text = "Geçen gün sayısı:" + fark.Days;

 

Örnek: Belirtilen gün kadar sonrasının hangi güne denk geldiğini bulan bir visual c# programı yazınız.

 

            int gs;

            gs = Convert.ToInt32(textBox1.Text);

            TimeSpan fark = new TimeSpan (gs,0,0,0,0);

            DateTime dt = DateTime.Today + fark;

            label4.Text = dt.DayOfWeek.ToString();

 

Örnek: Verilen iki tarih arasında geçen hafta sonu günlerinin sayısını bulan bir visual c# programı yazınız.

            DateTime t1 = new DateTime(2015,5,1);

            DateTime t2 = new DateTime(2016, 5, 1);

            TimeSpan fark = t2 - t1;

            long hss = 0;

            DateTime gecici;

            for (int i = 1; i <= fark.Days; i++)

            {

                gecici = t1.AddDays(i);

                if (gecici.DayOfWeek == DayOfWeek.Sunday || gecici.DayOfWeek == DayOfWeek.Saturday)

                    hss++;

                label4.Text = "Gün sayısı:" + hss;

</asp:Content>
