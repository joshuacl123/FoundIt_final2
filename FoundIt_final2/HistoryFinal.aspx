<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HistoryFinal.aspx.cs" Inherits="FoundIt_final2.HistoryFinal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="CSS/GlobalStyle.css" rel="stylesheet" />
    <script src="https://cdn.tailwindcss.com"></script>
    <title>History</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="font-bold p-10 grid grid-cols-3">
        <img src="assets/Found It!.png" alt="logo" class="w-44 h-auto">
        <nav>
            <div class="flex justify-center">
                <a href="Home1.aspx" class="pr-10 pl-3 nav-link text-gray-600 hover:text-black">Home</a>
                <a href="FoundFinal.aspx" class="pl-10 pr-10 nav-link text-gray-600 hover:text-black">Found</a>
                <a href="HistoryFinal.aspx" class="pl-10 pr-10 nav-link active text-black hover:text-black">History</a>
                <a href="ProfileFinal.aspx" class="pl-10 nav-link text-gray-600 hover:text-black">Profile</a>
            </div>
        </nav>
        <div class="flex justify-end items-start">
            <a href="LogOut.aspx">
                <img src="assets/Logout.png" alt="logout" class="w-6 h-auto">
            </a>
        </div>
    </div>

    <div class="top-side flex justify-center items-center pb-10">
        <div class="notifbar bg-white rounded-xl py-3 px-6 flex items-center justify-between w-2/6">
            <img src="assets/notification.png" alt="notif" class="order-first">
            <asp:Label ID="notiflabel" runat="server" Text=""></asp:Label>
            <!--<span class="text-gray-600">No Notifications Yet</span>-->
            <img src="assets/caret_down.png" alt="downbar" class="order-last">
        </div>
    </div>
    
    <div id="form1" class="flex justify-center py-4 min-h-screen bottom-0 w-full">
        <div class="content-center">
            <table class="card p-10 mb-20 max-w-6xl rounded-3xl bg-white shadow-xl">
                <tr class="font-bold text-xl p-10 grid grid-cols-5 gap-0 mb-5  max-w-1">
                    <th class="flex justify-start">Found ID</th>
                    <th class="flex justify-start">Item ID</th>
                    <th class="flex justify-start">Owner ID</th>
                    <th class="flex justify-start mr-10">Item Description</th>
                    <th class="max-w-1 flex justify-start">Found Location</th>
                </tr>
                <%foreach (var hist in historyList)
                    { %>
                    
                    <tr class="text-lg pl-10 pr-10 grid grid-cols-5 mb-5 border-b">
                        <td class="flex justify-start"><%= hist.foundID %></td>
                        <td class="flex justify-start"><%= hist.itemID %></td>
                        <td class="flex justify-start"><%= hist.ownerID %></td>
                        <td class="mr-10 flex justify-start"><%= hist.itemDescription %></td>
                        <td class="pr-5 overflow-hidden mb-5 flex justify-start"><%= hist.foundLocation %></td>
                    </tr>
                <%} %>
            </table>
            <!--
            <div class="card pt-10 pb-4 pl-10 pr-10 mb-20 max-w-6xl rounded-3xl bg-white shadow-xl">
                <div id="title">
                    <ul class="font-bold text-xl grid grid-cols-5 gap-0 mb-5  max-w-1">
                        <li>Lost ID</li>
                        <li>Found ID</li>
                        <li>Name</li>
                        <li>Description</li>
                        <li class="max-w-1">Found Location</li>
                    </ul>
                </div>
                <div id="content" class="">
                    <div id="content1">
                        <ul class="text-lg grid grid-cols-5 mb-5 border-b">
                            <li id="ID">F0001</li>
                            <li id="foundID">L0001</li>
                            <li id="name">Powerbank</li>
                            <li id="description" class="pr-5 overflow-hidden mb-5 ">Black</li>
                            <li id="last-location" class="pr-5 overflow-hidden">Han River assaadaaadskdfhjkjahsfkjhsfkjahsf</li>
                        </ul>
                    </div>
                    <div id="content2">
                        <ul class="text-lg grid grid-cols-5 mb-5 border-b">
                            <li id="ID">F0001</li>
                            <li id="foundID">L0001</li>
                            <li id="name">Powerbank</li>
                            <li id="description" class="pr-5 overflow-hidden mb-5 ">Black</li>
                            <li id="last-location" class="pr-5 overflow-hidden">Han River</li>
                        </ul>
                    </div>
                    <div id="content3">
                        <ul class="text-lg grid grid-cols-5 mb-5 border-b">
                            <li id="ID">F0003</li>
                            <li id="foundID">L0003</li>
                            <li id="name">Powerbank</li>
                            <li id="description" class="pr-5 overflow-hidden mb-5 ">Black</li>
                            <li id="last-location" class="pr-5 overflow-hidden">Han River</li>
                        </ul>
                    </div>
                </div>
            </div>
            -->
        </div>
    </div>
    <footer class="bg-gray-200 py-4 bottom-0 w-full">
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
