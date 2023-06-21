<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoundFinal2.aspx.cs" Inherits="FoundIt_final2.FoundFinal2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="CSS/GlobalStyle.css" rel="stylesheet" />
    <!-- Include Alpine.js -->
    <script src="https://cdn.jsdelivr.net/npm/alpinejs@2.8.2/dist/alpine.min.js"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Found</title>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
    <div class="font-bold p-10 grid grid-cols-3">
        <img src="assets/Found It!.png" alt="logo" class="w-44 h-auto">
        <nav>
            <div class="flex justify-center">
                <a href="Home1.aspx" class="pr-10 pl-3 nav-link text-gray-600 hover:text-black">Home</a>
                <a href="FoundFinal.aspx" class="pl-10 pr-10 nav-link active text-black hover:text-black">Found</a>
                <a href="HistoryFinal.aspx" class="pl-10 pr-10 nav-link text-gray-600 hover:text-black">History</a>
                <a href="ProfileFinal.aspx" class="pl-10 nav-link text-gray-600 hover:text-black">Profile</a>
            </div>
        </nav>
        <div class="flex justify-end items-start">
            <a href="LogOut.aspx">
                <img src="assets/Logout.png" alt="logout" class="w-6 h-auto">
            </a>
        </div>
    </div>

    <!-- content -->
    <div id="form1" class="flex justify-center mt-36 mb-12">
        <div class="flex justify-center w-7/12 mb-12 ">
            <div class="pt-10 pb-4 pl-10 pr-10 mb-20 rounded-3xl bg-white shadow-xl">
                <div class="font-medium flex justify-center mb-4">Where did you found the item?</div>
                <asp:TextBox ID="foundlocationtxt" class="border border-gray-300 rounded-xl mb-4 w-full px-4 py-2  focus:outline-none focus:ring-2 focus:ring-black focus:border-black" runat="server"></asp:TextBox>
                

                <div class="font-medium mb-4">Nearest Location of FoundIt Office?</div>
                <div x-data="{ open: false }" class="relative inline-block flex justify-center">
                    <!--
                    <button @click="open = !open; $event.preventDefault();"
                        class="bg-white flex items-center justify-end border border-gray-300 rounded-xl flex-1 w-52 h-10 px-4 py-2 mt-2 focus:outline-none focus:shadow-outline">
                        <img src="assets/caret_down.png" alt="arrow">
                    </button>
                    <div x-show="open" @click.away="open = false"
                        class="absolute bg-white text-gray-700 py-2 w-56 shadow-lg mt-2">
                        <a href="#" class="block px-4 py-2 hover:bg-gray-200">Option 1</a>
                        <a href="#" class="block px-4 py-2 hover:bg-gray-200">Option 2</a>
                        <a href="#" class="block px-4 py-2 hover:bg-gray-200">Option 3</a>
                    </div>
                    -->
                    <asp:DropDownList ID="DropDownList1" class="bg-white flex items-center justify-end border border-gray-300 rounded-xl flex-1 w-52 h-10 px-4 py-2 mt-2 focus:outline-none focus:shadow-outline" runat="server"></asp:DropDownList>
                </div>

                <div class="flex item-center justify-center m-5">
                        <asp:Button ID="nextbtn" class="rounded-full w-32 h-8  bg-orange-200 font-medium text-center" runat="server" Text="Next" OnClick="nextbtn_Click"/>
                    </div>
                <!--
                <a href="FoundFinal3.aspx">
                    <div class="flex item-center justify-center m-5">
                        <button class="rounded-full w-48 h-8 bg-orange-200 text-center">Next</button>
                    </div>
                </a>
                -->
                <!-- Other profile details or content here -->
            </div>
        </div>
    </div>
    <!-- footer -->
    <footer class="absolute bg-gray-200 py-4 inset-x-0 bottom-1 w-full">
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
