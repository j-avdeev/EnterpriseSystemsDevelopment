/*
  Маска номера телефона с выбором кода страны

  Ничего добавлять в Webflow Custom Code не надо, всё из ракетского загрузчика:
  - автоматически грузит все необходимые js и css
  - автоматом применяется ко всем полям ввода с атрибутом type="tel",

  - Для попапов, которые подгружаются с внешних страниц использовать следующий код, 
    после загрузки страницы и перед вызовом попапа:

    if(window.phoneInputFn) {
      $content.find('input[type="tel"]').each(function(){
        $(this).phoneInput();
      });
    }
    
    где, $popupContainer - твой контейнер, куда добавился DOM из загруженного попапа
*/

(function($) {
  function loadScripts(scripts) { return scripts.reduce(function(cur, next){ return cur.then($.getScript.bind($, next)); }, $.when()); }
  var evt = new CustomEvent("phone-input-ready");
  if(!$.fn.phoneInput) {
    var el = document.createElement("link");
    el.setAttribute("type", "text/css");
    el.setAttribute("rel", "stylesheet");
    el.setAttribute("href", "https://cdn.jsdelivr.net/npm/intl-tel-input@17.0.3/build/css/intlTelInput.min.css");
    document.getElementsByTagName("head")[0].appendChild(el);
    loadScripts([
      "https://cdn.jsdelivr.net/npm/intl-tel-input@17.0.3/build/js/intlTelInput.min.js",
      "https://cdn.jsdelivr.net/npm/intl-tel-input@17.0.3/build/js/utils.js",
      "https://cdnjs.cloudflare.com/ajax/libs/jquery.maskedinput/1.4.1/jquery.maskedinput.min.js"
    ]).then(function(){
      window.phoneInputFn = function() {
        var $input = $(this);
        if($input.length === 0) return;
        if($input.phoneMaskEnabled === true) return;
        $input.removeAttr('placeholder');
        $input.removeAttr('placeholder'); 
        var inputName = $input.attr('name'); 
        var input = $input.get(0); 
        var storedCountry = localStorage.getItem('phone_input_country');
        var iti_config = {
          initialCountry: "auto", 
          hiddenInput: inputName, 
          preferredCountries: ["ru"], 
          separateDialCode: true, 
          formatOnDisplay: true,
          nationalMode: true
        };
        if(storedCountry) {
          iti_config.initialCountry = storedCountry;
        } else {
          iti_config.geoIpLookup = async function(success, failure) {
            try {
              var geoRes = await fetch('https://freegeoip.live/json/');
              var geo = await geoRes.json();
              var code = geo.country_code.toLowerCase();
              success(code);
            } catch (error) {
              success('ru');
            }
          }
        }
        var iti = intlTelInput(input, iti_config);
        if(storedCountry) {
          $input.mask($input.attr('placeholder').replace(/[0-9]/g, "9"));
        }
        input.addEventListener("countrychange", function(e) {
          var countryData = iti.getSelectedCountryData();
          localStorage.setItem('phone_input_country', countryData.iso2);
          $input.blur();
          $input.val("");
          $input.mask($input.attr('placeholder').replace(/[0-9]/g, "9"));
        });
        $input.closest("form").submit(function() {
          $input.unmask();
          var fullNumber = iti.getNumber();
          iti.destroy();
          $input.val(fullNumber);
          $input.attr('full-number', fullNumber);
        });
        $input.phoneMaskEnabled = true;
      }
      $.fn.phoneInput = window.phoneInputFn;
      window.dispatchEvent(evt);
    });
  } else {
    window.dispatchEvent(evt);
  }
}(jQuery));

var Webflow = Webflow || [];
Webflow.push(function() {
  window.addEventListener('phone-input-ready', function() {
    $('input[type="tel"]').each(function() {
      $(this).phoneInput();
    });
  }, false);
});
