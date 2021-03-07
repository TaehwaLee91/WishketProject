

    // section2 숫자 counting / section8 회전목마 기능
    $(document).ready(function(){
        let count1 = $('#count1').text()
        let count2 = $('#count2').text()
        let count3 = $('#count3').text()

         $('#count1').text("1")
         $('#count2').text("2")
         $('#count3').text("3")
    setInterval(test1,1);

    let num =1

    function test1() {

        if (num > 9000) {
            $('#count1').text(count1)
            $('#count2').text(count2)
            $('#count3').text(count3)
            clearInterval()
        } else if(num < 60) {
            num+=10
            $('#count1').text(num)
            $('#count2').text(num)
            $('#count3').text(num)
        }else if(num <9000){
            num+=32
            $('#count1').text(num)
            $('#count2').text(num)
            $('#count3').text(num)
        }
    }


        $('.carousel').carousel({ interval: 3500 })

})


//sc4btn
$('#sc4Btn').on('click',function(){location.href="/accounts/signup"})
