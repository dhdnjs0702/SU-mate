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

    function loadPostits(gender) {
        // 예시 데이터를 사용하여 포스트잇을 생성
        const postits = [
            { nickname: '닉네임1', description: '간단한 자기소개 1', gender: 'male' },
            { nickname: '닉네임2', description: '간단한 자기소개 2', gender: 'female' },
            // 다른 데이터들 추가
        ];

        postitBoard.innerHTML = ''; // 기존 포스트잇 초기화
        postits.filter(postit => postit.gender === gender).forEach(postit => {
            const postitElement = document.createElement('div');
            postitElement.className = 'postit';
            postitElement.innerHTML = `<strong>${postit.nickname}</strong><p>${postit.description}</p>`;
            postitBoard.appendChild(postitElement);
        });
    }
});