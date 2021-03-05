// <script type="text/javascript" async src="//geekbrains.ru/external-assets/webflow-includes.js"></script>

(function () {
  window.onload = function () {
    function getCookie(name) {
      const matches = document.cookie.match(
        new RegExp(
          `(?:^|; )${name.replace(/([.$?*|{}()[\]\\/+^])/g, '\\$1')}=([^;]*)`,
        ),
      );

      return matches ? decodeURIComponent(matches[1]) : undefined;
    }

    // ------------------------------------------------------------------------

    $('a').each(function () {
      const href = $(this).attr('href');
      if (href != undefined) {
        const isTrustedLink =
          href.includes('geekbrains.ru') ||
          href.includes(window.location.hostname) ||
          href.startsWith('/');
        if (isTrustedLink && !href.includes('#')) {
          if (href.includes('?')) {
            $(this).attr('href', href + '&' + window.location.search.substr(1));
          } else {
            $(this).attr('href', href + window.location.search);
          }
        }
      }
    });
    // ------------------------------------------------------------------------

    const params = window.location.href.split('?')[1];

    if (typeof params == 'string') {
      const forms = document.querySelectorAll('form');
      const fields = params
        .split('&')
        .map(function (p) {
          var param = p.split('=');
          if (param.length !== 2) return;
          return { name: param[0], value: param[1] };
        })
        .filter(function (p) {
          return p;
        });

      fields.push({ name: 'from_url', value: window.location.href });

      forms.forEach(function (form) {
        fields.forEach(function (fieldModel) {
          if (form[fieldModel.name]) return;
          const field = document.createElement('input');
          field.type = 'hidden';
          field.name = fieldModel.name;
          field.value = fieldModel.value;
          form.prepend(field);
        });
      });
    }
    // ------------------------------------------------------------------------

    const paramsFromCookieNames = ['tmr_lvid', '_ga'];

    document.querySelectorAll('form').forEach(function (form) {
      paramsFromCookieNames.forEach(function (param_name) {
        if (form[param_name]) return;

        const field = document.createElement('input');
        field.type = 'hidden';
        field.name = param_name;
        field.value = getCookie(param_name);
        form.prepend(field);
      });
    });

    // ------------------------------------------------------------------------

    const landings = [
      'geek-school.geekbrains.ru/python',
      'geek-school.geekbrains.ru/gamedev',
      'geek-school.geekbrains.ru/web',
      'geek-school.geekbrains.ru/java',
      'geek-school.geekbrains.ru/pygame',
      'geek-school.geekbrains.ru/security',
      'geek-school.geekbrains.ru/scratch',
      'geek-school.geekbrains.ru/minecraft',
      'geek-school.geekbrains.ru/arduino',
      'geek-school.geekbrains.ru/blogging',
      'geek-school.geekbrains.ru/webdesign',
      'geek-school.geekbrains.ru/promo/osnovy-programirovaniya-na-python',
      'geek-school.geekbrains.ru/promo/razrabotka-igra-na-unity',
      'geek-school.geekbrains.ru/promo/osnovy-veb-razrabotki',
      'geek-school.geekbrains.ru/promo/igry-na-java',
      'geek-school.geekbrains.ru/promo/razrabotka-igr-na-python',
      'geek-school.geekbrains.ru/promo/kiberbezopasnost',
      'geek-school.geekbrains.ru/promo/scratch',
    ];

    const location = window.location.hostname + window.location.pathname;

    if (landings.includes(location)) {
      const productsUrl = 'https://geekbrains.ru/api/v2/products';

      const productId = document
        .getElementById('email-form')
        .querySelector('.w-embed')
        .querySelector('[name="product_id"]').value;

      const closestStreamDateField = document.getElementById('closestStreamDate');
      const closestStreamsTimesField = document.getElementById(
        'closestStreamsTimes',
      );

      fetch(`${productsUrl}/${productId}`, {
        headers: {
          'Content-Type': 'application/json',
        },
      })
        .then(response => {
          response.json().then(body => {
            if (closestStreamDateField && body.product.closest_stream_date) {
              closestStreamDateField.innerHTML =
                body.product.closest_stream_date;
            }
            if (
              closestStreamsTimesField &&
              body.product.closest_stream_week_schedule
            ) {
              closestStreamsTimesField.innerHTML =
                body.product.closest_stream_week_schedule;
            }
          });
        })
        .catch(() => console.warn('Error while getting closest date'));
    }
  };
})();
