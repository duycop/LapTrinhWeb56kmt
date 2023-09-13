using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace test_thoithiet
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();


            //vượt https
            ServicePointManager.Expect100Continue = true;
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

        }

        //for testing purpose only, accept any dodgy certificate... 
        public static bool ValidateServerCertificate(object sender, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors)
        {
            return true;
        }

        private async void button1_Click(object sender, EventArgs e)
        {
            string url = "https://w-api.baomoi.com/api/v1/slave/widget/weather/get/board?ctime=1694415500&version=0.5.0&sig=873938e3443cfa9b26d9119214d8fdfcccf88bc9e6bc0f3782da7724ca62b478&apiKey=kI44ARvPwaqL7v0KuDSM0rGORtdY1nnw";



            //string myJsonResponse = "";
            //var client = new HttpClient();
            //var request = new HttpRequestMessage(HttpMethod.Get, url);
            //var response = await client.SendAsync(request);
            //response.EnsureSuccessStatusCode();
            //myJsonResponse = await response.Content.ReadAsStringAsync();

            //textBox1.Text = myJsonResponse;

            string myJsonResponse = Properties.Resources.thoi_tiet;

            json = JsonConvert.DeserializeObject<Root>(myJsonResponse);
            listCity = new List<string>();
            foreach (var city in json.data.boards)
            {
                listCity.Add(city.displayName);
            }

            listBox1.Items.Clear();
            listBox1.Items.AddRange(listCity.ToArray());
        }
        List<string> listCity;
        Root json;
        private void button2_Click(object sender, EventArgs e)
        {
            string cityName = listBox1.Text;
            foreach (var city in json.data.boards)
            {
                if (cityName == city.displayName)
                {
                    string html_img = $"<img src='{city.entries[0].iconUrl}'>";
                    webBrowser1.DocumentText = html_img;
                    string tt = $"iconCode={city.entries[0].iconUrl}, {city.entries[0].status}";
                    textBox1.Text = tt;
                }
            }
        }
    }
}
