using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Services;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            if (Request.InputStream.Length > 0)
            {
                using (StreamReader reader = new StreamReader(Request.InputStream))
                {
                    string hexString = Server.UrlEncode(reader.ReadToEnd());
                    string imageName = DateTime.Now.ToString("dd-MM-yy hh-mm-ss");
                    string imagePath = string.Format("~/Captures/{0}.png", imageName);
                    File.WriteAllBytes(Server.MapPath(imagePath), ConvertHexToBytes(hexString));
                    Session["CapturedImage"] = ResolveUrl(imagePath);



                }
                string directoryPath = @"~\Captures\";
                string[] fileEntries = Directory.GetFiles(Server.MapPath(directoryPath));
                string imageContent = "";

                List<ListItem> files = new List<ListItem>();
                foreach (string filePath in fileEntries)
                {
                    string fileName = Path.GetFileName(filePath);
                    files.Add(new ListItem(fileName, "~/Captures/" + fileName));
                }

                List<ListItem> sorted = files.OrderByDescending(b => b.Text).ToList();


               // fileEntries = fileEntries.OrderByDescending(d => d).ToArray();

                foreach (ListItem fileName in sorted)
                {
                    imageContent = imageContent + "<div  style=\"float: left;\"><img src='Captures\\" + System.IO.Path.GetFileName(fileName.Text.ToString()) + "'/></div>";
                }
                Response.Write(imageContent);

              
            }

            if (ViewState["display"]!=null)
            {
                demo.Style["display"] = "block";

            }
            //demo.Style["display"] = "block";
        }

       


    }

    private static byte[] ConvertHexToBytes(string hex)
    {
        byte[] bytes = new byte[hex.Length / 2];
        for (int i = 0; i < hex.Length; i += 2)
        {
            bytes[i / 2] = Convert.ToByte(hex.Substring(i, 2), 16);
        }
        return bytes;
    }

    [WebMethod(EnableSession = true)]
    public static string GetCapturedImage()
    {
        string url = HttpContext.Current.Session["CapturedImage"].ToString();
        HttpContext.Current.Session["CapturedImage"] = null;
        return url;
    }

    protected void btnDisplay_Click(object sender, EventArgs e)
    {
       
            string[] filePaths = Directory.GetFiles(Server.MapPath("~/Captures/"));
            List<ListItem> files = new List<ListItem>();
            foreach (string filePath in filePaths)
            {
                string fileName = Path.GetFileName(filePath);
                files.Add(new ListItem(fileName, "~/Captures/" + fileName));
            }

        List<ListItem> sorted = files.OrderByDescending(b => b.Text).ToList();
        GridView1.DataSource = sorted;
        GridView1.DataBind();

        demo.Style["display"] = "block";

    }



    protected void btnCapture_Click(object sender, EventArgs e)
    {

        string[] filePaths = Directory.GetFiles(Server.MapPath("~/Captures/"));
        List<ListItem> files = new List<ListItem>();
        foreach (string filePath in filePaths)
        {
            string fileName = Path.GetFileName(filePath);
            files.Add(new ListItem(fileName, "~/Captures/" + fileName));
        }
        GridView1.DataSource = files;
        GridView1.DataBind();
    }


    protected void btnStaff_Click(object sender, EventArgs e)
    {
        demo.Style["display"] = "block";
        ViewState["display"] = "block";
    }
}