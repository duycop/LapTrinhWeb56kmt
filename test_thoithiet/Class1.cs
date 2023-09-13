using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace test_thoithiet
{
    // Root myDeserializedClass = JsonConvert.DeserializeObject<Root>(myJsonResponse);
    public class Board
    {
        public string boardId { get; set; }
        public string displayName { get; set; }
        public string latitude { get; set; }
        public string longitude { get; set; }
        public List<Entry> entries { get; set; }
    }

    public class Data
    {
        public List<Board> boards { get; set; }
    }

    public class Entry
    {
        public string status { get; set; }
        public int iconCode { get; set; }
        public string iconUrl { get; set; }
    }

    public class Root
    {
        public int err { get; set; }
        public string msg { get; set; }
        public Data data { get; set; }
        public string version { get; set; }
        public long timestamp { get; set; }
    }
}
