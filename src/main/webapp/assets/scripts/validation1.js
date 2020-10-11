$(document).ready(function () {


    let x = undefined;
    let r = undefined;
    let y = undefined;


    $('svg').mousedown(function(e) {
        if (r) {
            var position = $('.svg-wrapper').offset();
            const x = Math.round((e.pageX - position.left));
            const y = Math.round((e.pageY - position.top));


            $('#target-dot').attr({
                'cx': x.toString(),
                'cy': y.toString(),
            })

            alert('x: ' + x + ', y :' + y + ', r:' + r)


        } else alert("Выберите R")


    })

    $('.checkbox').click(function(){
        $('body input:checkbox').prop('checked', false);
        $(this).prop('checked', true);
        r = Number($(this).attr('id'));
        // alert(Number($(this).attr('id')))
    });

    $('.radio').click(function () {
        const id = $(this).attr("id");
        let value;
        switch (id) {
            case 'radio1':
                value = -2;
                break;
            case 'radio2':
                value = -1.5;
                break;
            case 'radio3':
                value = -1;
                break;
            case 'radio4':
                value = -0.5;
                break;
            case 'radio5':
                value = 0;
                break;
            case 'radio6':
                value = 0.5;
                break;
            case 'radio7':
                value = 1;
                break;
            case 'radio8':
                value = 1.5;
                break;
            case 'radio9':
                value = 2;
                break;
        }
        // alert(value)
        x = value;
        // alert($(this).html())
    })


    $('.btn-x').on('click', function () {
        x = Number($(this).text());
        $('.btn-x').removeClass('selected-x');
        $(this).addClass('selected-x');
        console.log("тип: " + typeof(x) + ", значение: " + x);
    })



    // $('.btn-x').on('click', function () {
    //   console.log("salam");
    // })

    $('#check-btn').on('click', function () {

        // alert("Salam alekuum!");

        // r = $('#select-r').val();

        let value = $('#input-y').val().replace(',','.').trim();
        if (value != '') {
            value = Number(value);
            if (value >= -5 && value <= 5) {
                // alert('OK');
                // return;
                y = value;
            } else {
                alert("Введен некорректный Y");
                $('#input-y').val('');
                return;
            }
        }

        if (y != undefined && x != undefined && r != undefined) {
            alert("x = " + x + ", y = " + y + ", r = " + r);
            // $.ajax ({
            //     url: 'check.php',
            //     type: 'GET',
            //     cache: false,
            //     data: {'r': r, 'x': x, 'y': y},
            //     dataType: 'html',
            //     success: function (data) {
            //         // alert(data);
            //         document.getElementById("output").innerHTML = data;
            //     }
            // })
        } else {
            alert("Не все поля заполнены");
        }
        // alert("тип: " + typeof(value) + ", значение: " + value);
    })
})
