// 세션 스토리지의 커스텀 메서드 정의
Storage.prototype.setObject = function(key, value) {
    this.setItem(key, JSON.stringify(value));
}

Storage.prototype.getObject = function(key) {
    var value = this.getItem(key);
    return value && JSON.parse(value);
}

$(function() {
    // 언어 설정 기능
    const urlParams = new URLSearchParams(window.location.search);
    const lang = urlParams.get('lang') || 'KR';
    const contentKr = document.querySelector('.content.kr');
    const contentCn = document.querySelector('.content.cn');

    if (lang === 'CN') {
        if (contentKr) contentKr.style.display = 'none';
        if (contentCn) contentCn.style.display = 'block';
    } else {
        if (contentKr) contentKr.style.display = 'block';
        if (contentCn) contentCn.style.display = 'none';
    }

    // 이전 버튼 클릭 이벤트
    $(".btn_prev").click(function (e){
        e.preventDefault();
        let href = new URL(e.currentTarget.href, window.location.origin);
        href.searchParams.set('lang', lang);
        location.href = href.toString();
    });

    // 다음 버튼 클릭 이벤트
    $(".btn_next").click(function (e){
        e.preventDefault();

        var exec = true;
        var langClass = lang === 'CN' ? '.content.cn' : '.content.kr';
        $(langClass + " .skintest_list li").each(function(idx, question) {
            var items = $(question).find("input:checked");
            if (items.length === 0) {
                alert("응답을 선택해주세요.");
                exec = false;
                return false;
            }
        });

        if (exec) {
            var answers = $(langClass + " .skintest_list li").find("input:checked").map((index, item) => {
                var v = {
                    questionId: item.className,
                };

                if (!isNaN($(item).val())) {
                    v.answer = $(item).val();
                }
                return v;
            }).get();

            console.log("answers", JSON.stringify(answers));

            if (sessionStorage.getItem("restoreAnswers")) {
                answers = answers.concat(JSON.parse(sessionStorage.getItem("restoreAnswers")));
            }

            sessionStorage.setObject("restoreAnswers", answers);

            let href = new URL(e.currentTarget.href, window.location.origin);
            href.searchParams.set('lang', lang);

            if (location.pathname.indexOf("skin/solution_01_8") === -1) {
                location.href = href.toString();
            } else {
                let data = sessionStorage.getObject("restoreAnswers");
                $.ajax({
                    url: ctxPath + "/api/skin/diagnosis",
                    cache: false,
                    contentType: false,
                    processData: false,
                    type: "POST",
                    data: JSON.stringify(data),
                    accept: "application/json",
                    contentType: "application/json; charset=utf-8",
                    success: function(result) {
                        alert("진단정보가 전송되었습니다.");
                        if (result !== null) {
                            let url = ctxPath + "/skin/solution_01_9?lang=" + lang;
                            location.replace(url);
                        }
                    },
                    error: function(res, status, error) {
                        if (res.responseJSON.message) {
                            alert(res.responseJSON.message.split(": ")[1]);
                        } else {
                            alert("진단정보처리중 오류발생! (요청실패)");
                        }
                    }
                });
            }
        }
    });

    clearQuestions();
    if (activeProfile === "local") {
        aRand();
    }
});

function clearQuestions() {
    var clearQuestions = $(".skintest_list li").find("input").map((index, item) => {
        return item.className;
    }).get();

    clearQuestions = clearQuestions.filter((item, index) => clearQuestions.indexOf(item) === index);
    clearQuestions.map(questionId => {
        return questionId;
    });

    var sessionRestoreAnswers = (sessionStorage.getObject("restoreAnswers") || []).filter(item => clearQuestions.every(questionId => questionId !== item.questionId));
    sessionStorage.setObject("restoreAnswers", sessionRestoreAnswers);
}

function genAnswers() {
    if (sessionStorage.getObject("restoreAnswers")) {
        return sessionStorage.getObject("restoreAnswers").reduce((acc, item, idx) => {
            if (item.questionId) {
                acc = acc.filter(it => it.questionId !== item.questionId);
                acc.push(item);
            }
            return acc;
        }, []);
    } else {
        return [];
    }
}

function aRand() {
    $(".skintest_list li").map((index, item) => {
        var inputs = $(item).find(".check_wrap input");
        var idx = parseInt(Math.random() * inputs.length, 10);
        inputs.eq(idx).attr("checked", "checked");
    });
}