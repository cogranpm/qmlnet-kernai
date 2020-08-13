using System;
using System.IO;
using Qml.Net;
using Qml.Net.Runtimes;



namespace qmlnet_kernai
{

    public class NetObject
    {
        public void Method()
        {
            
        }
    }


    class Program
    {
        static int Main(string[] args)
        {
            RuntimeManager.DiscoverOrDownloadSuitableQtRuntime();
            QQuickStyle.SetStyle("Material");
            using (var app = new QGuiApplication(args))
            {
                using (var engine = new QQmlApplicationEngine())
                {
                    Qml.Net.Qml.RegisterType<NetObject>("test", 1, 1);
                    engine.Load("Main.qml");
                    return app.Exec();
                    
                }
            }
            //Console.WriteLine("Hello World!");
        }
    }
}
