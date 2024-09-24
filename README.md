Gateway App

1. Install Ocelot through Nuget package manager or Powershell -> Install-Package Ocelot 
2. Create ocelot.json file

````
    {
      "Routes": [
        {
          "DownstreamPathTemplate": "/api/CouponsAPI",
          "DownstreamScheme": "https",
          "DownstreamHostAndPorts": [
            {
              "Host": "localhost",
              "Port": 7771
            }
          ],
          "UpstreamPathTemplate": "/api/Coupons",
          "UpstreamHttpMethod": [ "GET" ]
        }
      ],
      "GlobalConfiguration": {
        "BaseUrl": "https://localhost:7770"
      }
    }

````

3. Program.cs file,
    add the below code before var app = builder.Build();
     ````
        builder.Configuration.AddJsonFile("ocelot.json", optional: false, reloadOnChange: true);
        builder.Services.AddOcelot(builder.Configuration);
     ````
     add the below code before app.Run();

     ```` app.UseOcelot().GetAwaiter().GetResult();````
