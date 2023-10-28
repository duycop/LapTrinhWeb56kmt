using System.Configuration;
namespace SuatAn
{
    public static class AppSettingsGet
    {
        // I also get my connection string from here
        public static string ConnectionString
        {
            get { 
                return ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString; 
            }
        }
        
    }
}