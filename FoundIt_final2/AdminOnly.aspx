<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminOnly.aspx.cs" Inherits="FoundIt_final2.AdminOnly" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="CSS/GlobalStyle.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />
    <script src="https://cdn.tailwindcss.com"></script>
    <title>AdminOnly</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="font-bold p-10 grid grid-cols-2">
        <img src="assets/Found It!.png" alt="logo" class="w-44 h-auto">
        
        <div class="flex justify-end items-start">
            <a href="LogOut.aspx">
                <img src="assets/Logout.png" alt="logout" class="w-6 h-auto">
            </a>
        </div>
    </div>
    <!-- Content -->
        <div id="form1" class="flex justify-center mt-40 mb-40">
        <div class="flex justify-center w-7/12 mb-133">
            <div class="pt-10 pb-4 pl-10 pr-10 mb-20 rounded-3xl bg-white shadow-xl">
                <div class="font-medium flex justify-center mb-4">Select Found ID</div>
                <div x-data="{ open: false }" class="relative inline-block flex justify-center">
                    
                    
                    <asp:DropDownList ID="DropDownList1" class="bg-white flex items-center justify-end border border-gray-300 rounded-xl flex-1 w-52 h-10 px-4 py-2 mt-2 focus:outline-none focus:shadow-outline" runat="server"></asp:DropDownList>
              
                    
                </div>

                    <div class="flex item-center justify-center m-5">
                        <asp:Button ID="approvebtn" class="rounded-full w-32 h-8  bg-orange-200 font-medium text-center" runat="server" Text="Approve" OnClick="approvebtn_Click" />                       
                    </div>
                    
                    <div class="flex item-center justify-center m-5">
                        <asp:Button ID="declinebtn" class="rounded-full w-32 h-8  bg-red-200 font-medium text-center" runat="server" Text="Decline" OnClick="declinebtn_Click" />
                    </div>
                
            </div>
        </div>
    </div>

    
        <!-- footer -->
    <footer class="absolute bg-gray-200 py-4 inset-x-0 bottom-0 w-full">
        <div class="container mx-auto px-4 flex justify-between items-start max-width: 900px">
            <div class="text-left m-5">
                <div class="logo mb-5">
                    <img src="assets/Found It!.png" alt="Logo" class="h-6">
                </div>
                <p class="text-gray-600">Office: +62 566 5262</p>
                <p class="text-gray-600">Contact Center: +62 2927 8888</p>
                <p class="text-gray-600">Fax: +62 567 1413</p>
                <p class="text-gray-600">Email: Customercare@jne.co.id</p>
            </div>
            <div class="text-right m-7 flex flex-col justify-between">
                <div>
                    <p class="text-black-600 font-bold mb-3">Head Office</p>
                    <p class="text-black-600">Jl. Raya Serpong No. 11</p>
                    <p class="text-black-600">PT. FoundIt</p>
                    <p class="text-black-600">Tangerang Selatan, Banten 15325</p>
                    <p class="text-black-600">Indonesia</p>
                </div>
                <div class="flex-grow"></div>
            </div>
        </div>
    </footer>
    </form>
</body>
</html>
