#region License
// Copyright (c) 2007 James Newton-King
//
// Permission is hereby granted, free of charge, to any person
// obtaining a copy of this software and associated documentation
// files (the "Software"), to deal in the Software without
// restriction, including without limitation the rights to use,
// copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following
// conditions:
//
// The above copyright notice and this permission notice shall be
// included in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
// OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
// HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
// WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
// OTHER DEALINGS IN THE SOFTWARE.
#endregion

using System;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Security;

// General Information about an assembly is controlled through the following
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
#if NET20
[assembly: AllowPartiallyTrustedCallers]
#elif NET35
[assembly: AllowPartiallyTrustedCallers]
#elif NET40
[assembly: AllowPartiallyTrustedCallers]
#else
[assembly: AllowPartiallyTrustedCallers]
#endif

#if SIGNING
[assembly: AssemblyDelaySign(true)]
[assembly: AssemblyKeyFile("../IdentityPublicKey.snk")]
#endif

[assembly: InternalsVisibleTo("Newtonsoft.Json.Schema")]
[assembly: InternalsVisibleTo("Newtonsoft.Json.Tests")]
[assembly: InternalsVisibleTo("Newtonsoft.Json.Dynamic")]

[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]

#if HAVE_COM_ATTRIBUTES
// Setting ComVisible to false makes the types in this assembly not visible
// to COM components. If you need to access a type in this assembly from
// COM, set the ComVisible attribute to true on that type.

[assembly: ComVisible(false)]

// The following GUID is for the ID of the typelib if this project is exposed to COM

[assembly: Guid("9ca358aa-317b-4925-8ada-4a29e943a363")]
#endif

[assembly: CLSCompliant(true)]
