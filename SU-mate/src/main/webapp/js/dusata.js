document.addEventListener('DOMContentLoaded', () => {
    const maleBtn = document.getElementById('maleBtn');
    const femaleBtn = document.getElementById('femaleBtn');
    const postitBoard = document.querySelector('.postit-board');

	
    maleBtn.addEventListener('click', () => {
        selectGender('male');
    });

    femaleBtn.addEventListener('click', () => {
        selectGender('female');
    });

    // 초기 로드시 남성 게시판을 보여줌
    selectGender('male');

    function selectGender(gender) {
        maleBtn.classList.toggle('selected', gender === 'male');
        femaleBtn.classList.toggle('selected', gender === 'female');
        loadPostits(gender);
    }
});