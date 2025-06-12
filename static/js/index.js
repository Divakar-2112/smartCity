
    const faqItems = document.querySelectorAll('.faq-item');

    faqItems.forEach(item => {
      const question = item.querySelector('.faq-question');
      const answer = item.querySelector('.faq-answer');
      const icon = item.querySelector('.faq-icon');

      question.addEventListener('click', () => {
        const isActive = item.classList.contains('active');

        faqItems.forEach(i => {
          i.classList.remove('active');
          i.querySelector('.faq-answer').classList.remove('show-answer');
        });

        if (!isActive) {
          item.classList.add('active');
          answer.classList.add('show-answer');
        }
      });
    });