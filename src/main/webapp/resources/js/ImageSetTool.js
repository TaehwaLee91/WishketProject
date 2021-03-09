function AddStarImages(boxes){
    // star img 추가
    var full = '<img src="/img/review-full-star.svg">';
    var empty = '<img src="/img/review-empty-star.svg">';
    boxes.each(function (index, box) {
        var img_set = '';
        // add full stars
        for (var i=index; i<5; i++){
            img_set += full;
        }

        // add empty stars
        for (var j=index; j>=1; j--){
            img_set += empty;
        }
        box.innerHTML = img_set;
    });
}

function AddStarAvgImages(avg_score, $avg_img_box){
    // 평균 평점 star img 추가
    var max;
    var min;
    var half_flag = false;
    var avg_img_set = '';
    var decimal = avg_score - Math.floor(avg_score);
    var full = '<img src="/img/review-full-star.svg">';
    var half = '<img src="/img/review-half-star.svg">';
    var empty = '<img src="/img/review-empty-star.svg">';

    if (0.3 > decimal){
        max = 1;
        min = 5;
    }
    else if (0.7 < decimal) {
        max = 0;
        min = 4;
    } else {
        max = 1;
        min = 4;
        half_flag = true;
    }

    for (var i=avg_score ; i>=max; i--){
        avg_img_set += full;
    }

    if (half_flag){
        avg_img_set += half;
    }

    for (var j=avg_score; j<min; j++){
        avg_img_set += empty;
    }

    $avg_img_box.html(avg_img_set);
}