<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>lab 1</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/stylesheets/style.css">
</head>
<body>

<!--Господи Иисус помоги-->

<header>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h1>Лабораторная работа №2</h1>
                <h2>по веб-программированию</h2>
                <p>Антоневич Глеб, Зайцев Максим, гр. 3211, вар. 4510</p>
            </div>
        </div>
    </div>
</header>

<section class="main">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4 text-center">
                <div class="neo-select graphic-box text-center">
                    <div class="svg-wrapper">
                        <svg width="300" height="300" class="svg-graph" xmlns="http://www.w3.org/2000/svg">

                            <!--            Линии оси-->

                            <line class="axis" x1="0" x2="300" y1="150" y2="150" stroke="black"></line>
                            <line class="axis" x1="150" x2="150" y1="0" y2="300" stroke="black"></line>
                            <polygon points="150,0 144,15 156,15" stroke="black"></polygon>
                            <polygon points="300,150 285,156 285,144" stroke="black"></polygon>

                            <line class="coor-line" x1="200" x2="200" y1="155" y2="145" stroke="black"></line>
                            <line class="coor-line" x1="250" x2="250" y1="155" y2="145" stroke="black"></line>

                            <line class="coor-line" x1="50"  x2="50"  y1="155" y2="145" stroke="black"></line>
                            <line class="coor-line" x1="100" x2="100" y1="155" y2="145" stroke="black"></line>

                            <line class="coor-line" x1="145" x2="155" y1="100" y2="100" stroke="black"></line>
                            <line class="coor-line" x1="145" x2="155" y1="50"  y2="50"  stroke="black"></line>

                            <line class="coor-line" x1="145" x2="155" y1="200" y2="200" stroke="black"></line>
                            <line class="coor-line" x1="145" x2="155" y1="250" y2="250" stroke="black"></line>

                            <text class="coor-text" x="195" y="140">R/2</text>
                            <text class="coor-text" x="248" y="140">R</text>

                            <text class="coor-text" x="40" y="140">-R</text>
                            <text class="coor-text" x="90" y="140">-R/2</text>

                            <text class="coor-text" x="160" y="105">R/2</text>
                            <text class="coor-text" x="160" y="55">R</text>

                            <text class="coor-text" x="160" y="205">-R/2</text>
                            <text class="coor-text" x="160" y="255">-R</text>

<%--                            прямоугольник--%>
                            <polygon class="svg-figure rectangle-figure" points="150,150 100,150 100,250, 150,250"
                                     fill="blue" fill-opacity="0.3" stroke="blue"></polygon>

                            <!-- круг-->
                            <path  class="svg-figure circle-figure" d="M 150 250 A 100 100, 90, 0, 0, 250 150 L 150 150 Z"
                                   fill="green" fill-opacity="0.3" stroke="green"></path>

<%--                            треугольник--%>
                            <polygon class="svg-figure triangle-figure" points="250,150 150,100 150,150"
                                     fill="yellow" fill-opacity="0.3" stroke="yellow"></polygon>


<%--                            точка при тыке на график--%>
                            <circle r="5" cx="150" cy="150" id="target-dot" fill="#4DB6AC"></circle>

<%--                            Здесь видимо должна быть отрисовка точек в цикле из bean'a--%>

                        </svg>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 text-center">
                <p>Выберите R:</p>
                <!--                <select class="neo-select custom-select" id="select-r">-->
                <!--                    <option value="1">1</option>-->
                <!--                    <option value="1.5">1.5</option>-->
                <!--                    <option value="2">2</option>-->
                <!--                    <option value="2.5">2.5</option>-->
                <!--                    <option value="3">3</option>-->
                <!--                </select>-->

                <div class="row">
                    <div class="col-2 text-center">
                        <!--                        <button type="button" class="btn-x neo-btn">-4</button>-->
                        <label class="checkbox-label btn btn-secondary">
                            <input type="checkbox" class="checkbox" name="options" id="1" autocomplete="off"> 1
                        </label>
                    </div>
                    <div class="col-2 text-center">
                        <!--                        <button type="button" class="btn-x neo-btn">-3</button>-->
                        <label class="checkbox-label btn btn-secondary">
                            <input type="checkbox" class="checkbox" name="options" id="1.5" autocomplete="off"> 1.5
                        </label>
                    </div>
                    <div class="col-2 text-center">
                        <!--                        <button type="button" class="btn-x neo-btn">-2</button>-->
                        <label class="checkbox-label btn btn-secondary">
                            <input type="checkbox" class="checkbox" name="options" id="2" autocomplete="off"> 2
                        </label>
                    </div>
                    <div class="col-2 text-center">
                        <!--                        <button type="button" class="btn-x neo-btn">-1</button>-->
                        <label class="checkbox-label btn btn-secondary">
                            <input type="checkbox" class="checkbox" name="options" id="2.5" autocomplete="off"> 2.5
                        </label>
                    </div>
                    <div class="col-2 text-center">
                        <!--                        <button type="button" class="btn-x neo-btn">0</button>-->
                        <label class="checkbox-label btn btn-secondary">
                            <input type="checkbox" class="checkbox" name="options" id="3" autocomplete="off"> 3
                        </label>
                    </div>
                    <!--                </div>-->
                    <!--                <div class="row">-->
                    <!--                    <div class="col-6 text-center">-->
                    <!--                        &lt;!&ndash;                        <button type="button" class="btn-x neo-btn">-1</button>&ndash;&gt;-->
                    <!--                        <label class="btn btn-secondary">-->
                    <!--                            <input type="checkbox" name="options" id="option2" autocomplete="off"> -0.5-->
                    <!--                        </label>-->
                    <!--                    </div>-->
                    <!--                    <div class="col-6 text-center">-->
                    <!--                        &lt;!&ndash;                        <button type="button" class="btn-x neo-btn">0</button>&ndash;&gt;-->
                    <!--                        <label class="btn btn-secondary">-->
                    <!--                            <input type="checkbox" name="options" id="option2" autocomplete="off"> 0-->
                    <!--                        </label>-->
                    <!--                    </div>-->
                </div>


                <p>Выберите X:</p>

                <!--                <div class="btn-group btn-group-toggle" data-toggle="buttons">-->
                <!--                    <label class="btn btn-secondary">-->
                <!--                        <input type="radio" name="options" id="option1" autocomplete="off"> Active-->
                <!--                    </label>-->
                <!--                    <label class="btn btn-secondary">-->
                <!--                        <input type="radio" name="options" id="option2" autocomplete="off"> Radio-->
                <!--                    </label>-->
                <!--                    <label class="btn btn-secondary">-->
                <!--                        <input type="radio" name="options" id="option3" autocomplete="off"> Radio-->
                <!--                    </label>-->
                <!--                    <label class="btn btn-secondary">-->
                <!--                        <input type="radio" name="options" id="option1" autocomplete="off"> Active-->
                <!--                    </label>-->
                <!--                    <label class="btn btn-secondary">-->
                <!--                        <input type="radio" name="options" id="option2" autocomplete="off"> Radio-->
                <!--                    </label>-->
                <!--                    <label class="btn btn-secondary">-->
                <!--                        <input type="radio" name="options" id="option3" autocomplete="off"> Radio-->
                <!--                    </label>-->
                <!--                    <label class="btn btn-secondary">-->
                <!--                        <input type="radio" name="options" id="option1" autocomplete="off"> Active-->
                <!--                    </label>-->
                <!--                    <label class="btn btn-secondary">-->
                <!--                        <input type="radio" name="options" id="option2" autocomplete="off"> Radio-->
                <!--                    </label>-->
                <!--                    <label class="btn btn-secondary">-->
                <!--                        <input type="radio" name="options" id="option3" autocomplete="off"> Radio-->
                <!--                    </label>-->
                <!--                </div>-->

                <!--                    <button type="button" class="btn-x btn btn-outline-primary m-2 px-4" id="btn-x">-4</button>-->
                <!--                    <button type="button" class="btn-x btn btn-outline-primary m-2 px-4" id="btn-x">-3</button>-->
                <!--                    <button type="button" class="btn-x btn btn-outline-primary m-2 px-4" id="btn-x">-2</button>-->
                <!--                    <div class="w-100"></div>-->
                <!--                    <button type="button" class="btn-x btn btn-outline-primary m-2 px-4" id="btn-x">-1</button>-->
                <!--                    <button type="button" class="btn-x btn btn-outline-primary m-2 px-4" id="btn-x">0</button>-->
                <!--                    <button type="button" class="btn-x btn btn-outline-primary m-2 px-4" id="btn-x">1</button>-->
                <!--                    <div class="w-100"></div>-->
                <!--                    <button type="button" class="btn-x btn btn-outline-primary m-2 px-4" id="btn-x">2</button>-->
                <!--                    <button type="button" class="btn-x btn btn-outline-primary m-2 px-4" id="btn-x">3</button>-->
                <!--                    <button type="button" class="btn-x btn btn-outline-primary m-2 px-4" id="btn-x">4</button>-->

                <div class="row">
                    <div class="col-4 text-center">
                        <!--                        <button type="button" class="btn-x neo-btn">-4</button>-->
                        <label class="radio-label btn btn-secondary">
                            <input type="radio" name="options" class="radio" id="radio1" autocomplete="off"> -2
                        </label>
                    </div>
                    <div class="col-4 text-center">
                        <!--                        <button type="button" class="btn-x neo-btn">-3</button>-->
                        <label class="radio-label btn btn-secondary">
                            <input type="radio" name="options" class="radio" id="radio2" autocomplete="off"> -1.5
                        </label>
                    </div>
                    <div class="col-4 text-center">
                        <!--                        <button type="button" class="btn-x neo-btn">-2</button>-->
                        <label class="radio-label btn btn-secondary">
                            <input type="radio" name="options" class="radio" id="radio3" autocomplete="off"> -1
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-4 text-center">
                        <!--                        <button type="button" class="btn-x neo-btn">-1</button>-->
                        <label class="radio-label btn btn-secondary">
                            <input type="radio" name="options" class="radio" id="radio4" autocomplete="off"> -0.5
                        </label>
                    </div>
                    <div class="col-4 text-center">
                        <!--                        <button type="button" class="btn-x neo-btn">0</button>-->
                        <label class="radio-label btn btn-secondary">
                            <input type="radio" name="options" class="radio" id="radio5" autocomplete="off"> 0
                        </label>
                    </div>
                    <div class="col-4 text-center">
                        <!--                        <button type="button" class="btn-x neo-btn">1</button>-->
                        <label class="radio-label btn btn-secondary">
                            <input type="radio" name="options" class="radio" id="radio6" autocomplete="off"> 0.5
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-4 text-center">
                        <!--                        <button type="button" class="btn-x neo-btn">2</button>-->
                        <label class="radio-label btn btn-secondary">
                            <input type="radio" name="options" class="radio" id="radio7" autocomplete="off"> 1
                        </label>
                    </div>
                    <div class="col-4 text-center">
                        <!--                        <button type="button" class="btn-x neo-btn">3</button>-->
                        <label class="radio-label btn btn-secondary">
                            <input type="radio" name="options" class="radio" id="radio8" autocomplete="off"> 1.5
                        </label>
                    </div>
                    <div class="col-4 text-center">
                        <!--                        <button type="button" class="btn-x neo-btn">4</button>-->
                        <label class="radio-label btn btn-secondary">
                            <input type="radio" name="options" class="radio" id="radio9" autocomplete="off"> 2
                        </label>
                    </div>
                </div>


                <p>Введите Y:</p>
                <input data-rule="input-y" type="text" class="neo-select form-control" id="input-y" placeholder="от -5 до 5" maxlength="17">

            </div>

            <div class="col-lg-4 text-center">
                <div class="table-wrapper neo-select text-center">
                    <div class="output" id="output"></br>Здесь будет таблица</div>
<%--                    Здесь должна быть отрисовка таблицы из bean'a--%>
                </div>

            </div>
        </div>
        <div class="row">
            <div class="col-12 text-center my-4">
                <button type="button" class="neo-submit" id="check-btn">Погнали!</button>
            </div>
        </div>
    </div>
</section>

<footer>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 text-center">
<%--                Здесь надо вставить ссылку на гитхаб вместо "#" --%>
                <a href=#>гитхаб</a>
            </div>
        </div>
    </div>
</footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/assets/scripts/validation1.js"></script>

</body>
</html>



