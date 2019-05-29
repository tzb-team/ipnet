$(document).ready(function () {
    var username=window.storage.getItem("user_id");

    // $('#new_wallet_address').on('click',function () {
    //     alert("ok");
    //     getWalletAddress();
    // }) ;

    function getWalletAddress() {
        var userId=username;
        var walletAddress="0x10Ad2F4BB73e23e8B72C56b9EFdc3B7aD8Bb808E";
        var tex="已为"+username+"生成钱包地址："+"\n"+;
        alert(tex);
        $.confirm({
            title: '确认生成钱包地址？',
            content: '确认完成后将不可更改',
            confirmButton: '确认',
            cancelButton: '取消',
            confirmButtonClass: 'btn-info',
            icon: 'fa fa-question-circle',
            animation: 'rotate',
            closeAnimation: 'right',
            opacity: 0.5,
            confirm: function () {
                $.alert({
                    title: '钱包地址生成成功!',
                    content: '已为'+username+'生成钱包地址'+walletAddress,
                    confirmButton: '我知道了',
                    confirmButtonClass: 'btn-primary',
                    icon: 'fa fa-info',
                    animation: 'zoom'
                });
            }
        });
        // $.ajax({
        //     type: "GET",
        //     url: "/getWalletAddressById",
        //     data : {userid:userId},
        //
        //     success: function (data) {
        //         data=""
        //         var walletAddress=data;
        //         console.log(data);
        //         var message="";
        //         message+="确定生成钱包地址吗？";
        //         var r=confirm(message);
        //         if (r){
        //             var tex="已为"+username+"生成钱包地址："+"\n"+data;
        //             alert(tex);
        //         }
        //     }
        // })
    }

});
