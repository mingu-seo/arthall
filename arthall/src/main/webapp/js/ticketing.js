const timeTable = document.querySelector(".timeInfo__timeTable"),
    timeTableList = timeTable.querySelectorAll(".timeTable__list"),
    classTable = document.querySelector(".classInfo__classTable"),
    //    classTableList = classTable.querySelectorAll(".classTable__classList");
    classSeatClass = classTable.querySelectorAll(".classList__seatClass"),
    classSeatNumber = classTable.querySelectorAll(".classList__seatNumber");

let vipPrice = 0,
    rPrice = 0,
    sPrice = 0,
    aPrice = 0,
    bPrice = 0,
    wheelPrice = 0,
    resultPrice;

function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function showResult(thisElement) {
    const resultTimeBox = document.getElementById("resultBox__time"),
        resultVipBox = document.getElementById("resultBox__vipClass"),
        resultRBox = document.getElementById("resultBox__rClass"),
        resultSBox = document.getElementById("resultBox__sClass"),
        resultABox = document.getElementById("resultBox__aClass"),
        resultBBox = document.getElementById("resultBox__bClass"),
        resultWheelBox = document.getElementById("resultBox__wheelClass"),
        resultPriceBox = document.getElementById("resultBox__price");

    if (thisElement.classList.contains("timeTable__list")) {
        const timeText = thisElement.firstElementChild.innerText;

        resultTimeBox.value = timeText;
    } else if (thisElement.classList.contains("classList__seatClass")) {
        let price = JSON.parse(thisElement.parentNode.children[1].innerText.split(",")[0]),
            tiketCount = JSON.parse(thisElement.parentNode.children[2].value);

        if (thisElement.parentNode.classList.contains("vipClass")) {
            resultVipBox.parentNode.style.display = "block";
            vipPrice = price*tiketCount*1000;
            resultVipBox.value = `${tiketCount}매 ${numberWithCommas(vipPrice)}원`;
        } else if (thisElement.parentNode.classList.contains("rClass")) {
            resultRBox.parentNode.style.display = "block";
            rPrice = price*tiketCount*1000;
            resultRBox.value = `${tiketCount}매 ${numberWithCommas(rPrice)}원`;
        } else if (thisElement.parentNode.classList.contains("sClass")) {
            resultSBox.parentNode.style.display = "block";
            sPrice = price*tiketCount*1000;
            resultSBox.value = `${tiketCount}매 ${numberWithCommas(sPrice)}원`;
        } else if (thisElement.parentNode.classList.contains("aClass")) {
            resultABox.parentNode.style.display = "block";
            aPrice = price*tiketCount*1000;
            resultABox.value = `${tiketCount}매 ${numberWithCommas(aPrice)}원`;
        } else if (thisElement.parentNode.classList.contains("bClass")) {
            resultBBox.parentNode.style.display = "block";
            bPrice = price*tiketCount*1000;
            resultBBox.value = `${tiketCount}매 ${numberWithCommas(bPrice)}원`;
        } else if (thisElement.parentNode.classList.contains("wheelClass")) {
            resultWheelBox.parentNode.style.display = "block";
            wheelPrice = price*tiketCount*1000;
            resultWheelBox.value = `${tiketCount}매 ${numberWithCommas(wheelPrice)}원`;
        }

        if (thisElement.parentNode.classList.contains("active")) {
            classSeatNumber.forEach(function (e) {
                e.addEventListener("change", (i) => {
                    
                    const thisClassList = i.target.parentNode.classList;

                    price = JSON.parse(i.target.parentNode.children[1].innerText.split(",")[0]);
                    tiketCount = JSON.parse(i.target.parentNode.children[2].value);

                    if (thisClassList.contains("vipClass")) {
                        resultVipBox.parentNode.style.display = "block";
                        vipPrice = price*tiketCount*1000;
                        resultVipBox.value = `${tiketCount}매 ${numberWithCommas(vipPrice)}원`;
                    } else if (thisClassList.contains("rClass")) {
                        resultRBox.parentNode.style.display = "block";
                        rPrice = price*tiketCount*1000;
                        resultRBox.value = `${tiketCount}매 ${numberWithCommas(rPrice)}원`;
                    } else if (thisClassList.contains("sClass")) {
                        resultSBox.parentNode.style.display = "block";
                        sPrice = price*tiketCount*1000;
                        resultSBox.value = `${tiketCount}매 ${numberWithCommas(sPrice)}원`;
                    } else if (thisClassList.contains("aClass")) {
                        resultABox.parentNode.style.display = "block";
                        aPrice = price*tiketCount*1000;
                        resultABox.value = `${tiketCount}매 ${numberWithCommas(aPrice)}원`;
                    } else if (thisClassList.contains("bClass")) {
                        resultBBox.parentNode.style.display = "block";
                        bPrice = price*tiketCount*1000;
                        resultBBox.value = `${tiketCount}매 ${numberWithCommas(bPrice)}원`;
                    } else if (thisClassList.contains("wheelClass")) {
                        resultWheelBox.parentNode.style.display = "block";
                        wheelPrice = price*tiketCount*1000;
                        resultWheelBox.value = `${tiketCount}매 ${numberWithCommas(wheelPrice)}원`;
                    }
                    resultPrice = vipPrice + rPrice + sPrice + aPrice + bPrice + wheelPrice;
                    resultPriceBox.value = `${numberWithCommas(resultPrice)}원`;
                    console.log(vipPrice);
                });
            });

        } else {
            if (thisElement.parentNode.classList.contains("vipClass")) {
                resultVipBox.parentNode.style.display = "none";
                vipPrice = 0;
                resultVipBox.value = vipPrice;
            } else if (thisElement.parentNode.classList.contains("rClass")) {
                resultRBox.parentNode.style.display = "none";
                rPrice = 0;
                resultRBox.value = rPrice;
            } else if (thisElement.parentNode.classList.contains("sClass")) {
                resultSBox.parentNode.style.display = "none";
                sPrice = 0;
                resultSBox.value = sPrice;
            } else if (thisElement.parentNode.classList.contains("aClass")) {
                resultABox.parentNode.style.display = "none";
                aPrice = 0;
                resultABox.value = aPrice;
            } else if (thisElement.parentNode.classList.contains("bClass")) {
                resultBBox.parentNode.style.display = "none";
                bPrice = 0;
                resultBBox.value = bPrice;
            } else if (thisElement.parentNode.classList.contains("wheelClass")) {
                resultWheelBox.parentNode.style.display = "none";
                wheelPrice = 0;
                resultWheelBox.value = wheelPrice;
            }
        }
        resultPrice = vipPrice+rPrice+sPrice+aPrice+bPrice+wheelPrice;
        resultPriceBox.value = `${numberWithCommas(resultPrice)}원`;
//        console.log(vipPrice);
    }
}

function classHandler() {
    if (this.classList.contains("timeTable__list")) {
        timeTableList.forEach(function (e) {
            e.classList.remove("active");
        });
        this.classList.add("active");
    } else if (this.classList.contains("classList__seatClass")) {
        this.parentNode.classList.toggle("active");
    }
    showResult(this);
}

function init() {
    timeTableList.forEach(function (e) {
        e.addEventListener("click", classHandler);
    });
    classSeatClass.forEach(function (e) {
        e.addEventListener("click", classHandler);
    });
}

init();
