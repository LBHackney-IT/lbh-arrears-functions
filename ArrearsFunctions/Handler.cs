using Amazon.Lambda.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

[assembly: LambdaSerializer(typeof(Amazon.Lambda.Serialization.SystemTextJson.DefaultLambdaJsonSerializer))]

namespace ArrearsFunctions
{
    public class Handler
    {
    }
}
