

    // section2 숫자 counting / section8 회전목마 기능
    $(document).ready(function(){
    setInterval(test1,1);
    setInterval(test2,1);
    setInterval(test3,1);
    let num1 =27894
    let num2 =3000
    let num3 =83000

    function test1() {
    if (num1 >= 30000) {
    $('#count1').text("31,865")
    clearInterval()
}
    else {
    num1 += 10
    $('#count1').text(num1)
}
}
    function test2() {
    if (num2 >= 4000) {
    $('#count2').text("4,091")
    clearInterval()
}
    else {
    num2 +=4
    $('#count2').text(num2)
}
}
    function test3() {
    if (num3 >= 86000) {
    $('#count3').text("86,856")
    clearInterval()
}
    else {
    num3 +=10
    $('#count3').text(num3)
}
}

        $('.carousel').carousel({ interval: 3500 })

})
