// !function($){$.fn.countdown=function(options,callback){thisEl=$(this);var settings={date:null,format:null};function countdown_proc(){eventDate=Date.parse(settings.date)/1e3,currentDate=Math.floor($.now()/1e3),eventDate<=currentDate&&(callback.call(this),clearInterval(interval)),seconds=eventDate-currentDate,days=Math.floor(seconds/86400),seconds-=60*days*60*24,hours=Math.floor(seconds/3600),seconds-=60*hours*60,minutes=Math.floor(seconds/60),seconds-=60*minutes,1==days?thisEl.find(".timeRefDays").text("day"):thisEl.find(".timeRefDays").text("days"),1==hours?thisEl.find(".timeRefHours").text("hour"):thisEl.find(".timeRefHours").text("hours"),1==minutes?thisEl.find(".timeRefMinutes").text("minute"):thisEl.find(".timeRefMinutes").text("minutes"),1==seconds?thisEl.find(".timeRefSeconds").text("second"):thisEl.find(".timeRefSeconds").text("seconds"),"on"==settings.format&&(days=String(days).length>=2?days:"0"+days,hours=String(hours).length>=2?hours:"0"+hours,minutes=String(minutes).length>=2?minutes:"0"+minutes,seconds=String(seconds).length>=2?seconds:"0"+seconds),isNaN(eventDate)?(alert("Invalid date. Here's an example: 12 Tuesday 2012 17:30:00"),clearInterval(interval)):(thisEl.find(".days").text(days),thisEl.find(".hours").text(hours),thisEl.find(".minutes").text(minutes),thisEl.find(".seconds").text(seconds))}options&&$.extend(settings,options),countdown_proc(),interval=setInterval(countdown_proc,1e3)}}(jQuery);

var Webflow = Webflow || []

Webflow.push(function(){
  $.fn.equalHeight = function() {
    var maxHeight = 0;
    $(this).each (function() {      
      if($(this).outerHeight() > maxHeight) {
        maxHeight = $(this).outerHeight();
      }
    });
    $(this).css({height: maxHeight + 'px' });  
  }
  Webflow.resize.on(function() {
    $('.expert-slide .expert-item').equalHeight();
    $('.story-slide-content').equalHeight();
    $('.div-block-14').equalHeight();
    $('.teatch-card').equalHeight();
  });
  
  $.fn.makeSlider = function(prevButtonSel, nextButtonSel, options) {
    if($(this).length == 0) return; 
    var sliderOptions = Object.assign({
      cellAlign: 'left',
      resize : true,
      contain: true,
      wrapAround: false,
      prevNextButtons: false, 
      pageDots: false,
      // freeScroll: true
    }, options || {});
    var $carousel = $(this).flickity(sliderOptions);
    if (prevButtonSel !== null) $(prevButtonSel).on( 'click', function() { $carousel.flickity('previous'); });
    if (nextButtonSel !== null) $(nextButtonSel).on( 'click', function() { $carousel.flickity('next'); });

    $carousel.on( 'dragMove.flickity', function(e) {
      isSliderDragged = true;
      $carousel.find('.flickity-viewport').addClass('is-drag-gallery');
    });

    $carousel.on( 'dragEnd.flickity', function(e) {
      $carousel.find('.flickity-viewport').removeClass('is-drag-gallery');
      setTimeout(function () {
        isSliderDragged = false;
      }, 100);
    });

    // клик по слайду в слайдере, когда не происходит движение этого слайдера
    $carousel.on( 'staticClick.flickity', function(e) {
      // если у кликнутого элемента есть родительская ссылка с атрибутом попапа, показываем попап:
      if($(e.target).closest('a[popup="open"]').length > 0) { 
        var href = $(e.target).closest('a[popup="open"]').attr('href');
        var url = popupUrl(href);
        showPopup(url);
      }
    });
    return $carousel;
  }

  $('.expert-list').makeSlider(null, null, { adaptiveHeight: false });
  $('.story-slider').makeSlider(null, null, { adaptiveHeight: false });
  $('.proekt-wrop').makeSlider(null, null, { adaptiveHeight: false });

  $('a.lightbox-link, a.lightbox-link img').on('tap', function (e) {
    if(isSliderDragged === true) {
      e.preventDefault();
      e.stopPropagation();
      e.stopImmediatePropagation();
      return false;  
    }
  });

  /* попап страницы */ 
  var $popup = $('.page-popup'); // сам попап
  var $container = $('.page-popup-container'); // контейнер попапа
  var $content = $('.page-popup-content'); // сюда вставляем загруженный контент
  var $preloader = $('.popup-preloader'); // индикатор загрузки
  var $openLink = $('[popup="open"]'); // ссылки с атрибутом popup, которые будут открывать попап
  var $close = $('[popup="close"]'); // крестик закрытия попапа

  $container.css({ display: 'none' }); // прячем контейнер по умолчанию

  /* генерирует url для попапа из href */
  function popupUrl(href) {
    // абсолютная ссылка с указателем id контента во внешнем html-файле
    // console.log(href);
    // var url = document.location.origin + href + ' #content';
    var url = href + ' #content';
    return url;
  }

  /* функция открытия попапа и загрузки контента */
  function showPopup(url) {
    $popup.css({ display: 'block' }); // показываем попап
    $('body').addClass('noscroll');
    // запрашиваем контент по url и загружаем в $content

    $content.load(url, function() { 
      // контент получен
      $preloader.css({ display: 'none'}); // прячем индикатор загрузки
      $container.css({ display: 'block' }); // показываем контейнер

      // переинициализируем webflow, чтобы форма в загруженном контейнере заработала
      window.Webflow && window.Webflow.destroy();
      window.Webflow && window.Webflow.ready();
      window.Webflow && window.Webflow.require( 'ix2' ).init();
      document.dispatchEvent( new Event( 'readystatechange' ) );
    });
  }

  /* функция закрытия попапа */
  function closePopup() {
    $('body').removeClass('noscroll');
    $popup.css({ display: 'none' }); // прячем попап
    $container.css({ display: 'none' }); // прячем контейнер
    $preloader.css({ display: 'block'}); // показываем индикатор загрузки
    $content.empty(); // очищаем элемент с контентом
  }

  /* обработчик кликов/тапов по ссылкам с атрибутом [popup="open"] */

  $openLink.on('tap', function(e) {
    e.preventDefault(); // прерываем все действия при клике на ссылку

    if($(this).closest('.w-dyn-items').length > 0 && $(this).closest('.w-dyn-items').hasClass("flickity-enabled")) {
      // если ссылка вся карточка и если мы тянем слайдер, то прерываем функцию и ничего не возвращаем
      return;
    }

    var url = popupUrl($(this).attr('href'));

    // показываем попап и грузим контент
    showPopup(url);
  });

  /* закрытие попапа по клику/тапу по крестику */
  $close.on('tap', function(e) {
    e.preventDefault();
    closePopup(); // закрываем попап
  });

  /* закрытие попапа по клику/тапу вне контейнера попап*/
  $popup.on('tap', function(e) {
    if (e.target === this) {
      closePopup();
    }
  });

  /* скрипт маски телефона */ 
  // ищем все поля ввода с атрибутом type="tel" на странице и применяем к плагины
  if(window.intlTelInput) {
    $('input[type="tel"]').each(function(){

      var $input = $(this); // поле ввода
      $input.removeAttr('placeholder'); // удалаяем placeholder по умолчанию
      var inputName = $input.attr('name'); // получаем имя поля по аттрибуту name
      
      // меняем имя поля по для использования совместно с плагином выбора кода страны
      $input.attr('name', inputName + '_intlTelInput'); 
  
      var input = $input.get(0); // переменная поля ввода для использования без jQuery
  
      // инициализируем плагин выбора кода страны
      var iti = intlTelInput(input, {
        initialCountry: "ru", // автоматический выбор кода страны по гео-запросу
        hiddenInput: inputName, // создаем скрытое поле для отправки формы с номером телефона
        preferredCountries: ["ru"], // предпочитаемые коды стран в массиве (отображаются вверху списка)
        separateDialCode: true, // раздельно код страны от номера
        formatOnDisplay: true, // вкл. форматирование номера телефона
        geoIpLookup: function(success, failure) {
          // запрашиваем гео данные по IP-адресу
          $.get("https://ipinfo.io", function() {}, "jsonp").always(function(resp) {
            // получаем и возвращаем код страны, определенный по IP-адресу
            var countryCode = (resp && resp.country) ? resp.country : "";
            success(countryCode);
          });
        },
      });
  
      // слушаем событие на изменение кода страны
      input.addEventListener("countrychange", function() {
        $input.blur(); // снимаем фокус с поля ввода телефона
        $input.val(""); // удаляем ранее введенный номер телефона
  
        // применяем маску ввод телефона
        $input.mask($input.attr('placeholder').replace(/[0-9]/g, "9"));
      });
    });
  }

  // попап заказа, который показывается только 1 раз
  if(window.SHOW_TIMED_ORDER_POPUP) {
    var savedPopupPathname = window.location.pathname.replace('/','_') + '_timed_popup';
    if(!localStorage.getItem(savedPopupPathname)) {
      if($('.order-popup').length > 0) {
        setTimeout(function(){ 
          $('.order-popup').show();
          localStorage.setItem(savedPopupPathname, true);          
        }, SHOW_TIMED_ORDER_POPUP_PAUSE * 1000);
      }
    }
  }

  // var countdownDate = $("#countdown").attr('date') || "30 november 2020 23:59:59";
  // $("#countdown").countdown({ date: countdownDate, format: "on" }, function() { /* cb */});


});
