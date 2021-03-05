;(function(window){
  window.RDFiles = window.RDFiles || [];
  window.RDFiles = window.RDFiles.filter(function onlyUnique(value, index, self) { return self.indexOf(value) === index; });
  window.RDFilesData = {};
  window.RDFilesErrors = {};
  var base = 'https://files.raketa.design';
  var baseFile = '/files';
  var types = {
    js: 'text/javascript',
    css: 'text/css',
    json: 'application/json'
  }
  function request(item) {
    return new Promise(function(resolve, reject) {
      var ext = (/[.]/.exec(item)) ? /[^.]+$/.exec(item)[0] : undefined;
      var isFile = Object.keys(types).indexOf(ext) >= 0;
      var url = base + item;
      if(isFile) {
        url = base + baseFile + item;
        resolve({ url: url, type: types[ext] });
      } else {
        var req = new XMLHttpRequest();
        req.open('GET', url, true);
        req.setRequestHeader('Content-Type', 'application/json');
        req.onload = function() {
          var data = JSON.parse(req.responseText);
          resolve(data);
        }
        req.onerror = function() {
          resolve({
            error: req.responseText || 'Request failed',
            url: url
          });
        }
        req.ontimeout = function() {
          resolve({
            error: req.responseText || 'Request timeout',
            url: url
          });
        }
        req.send(null);
      }
    });
  }
  var promises = [];
  window.RDFiles.forEach(function(item) { promises.push(request(item)); });
  function addFileData(item) {
    if(item.error) {
      window.RDFilesErrors[item.url] = Object.assign(window.RDFilesErrors[item.url] || {}, item);
    } else {
      if(item.url) {
        window.RDFilesData[item.url] = Object.assign(window.RDFilesData[item.url] || {}, item);
      }
    }
  }

  Promise.all(promises).then(function(response){
    for(var res of response) {
      if(res.result) {
        for(var item of res.result) {
          addFileData(item);
        }  
      } else {
        addFileData(res);
      }
    }
    if (document.readyState == 'loading') { 
      document.addEventListener('DOMContentLoaded', function () { 
        main(); 
      }); 
    } else { 
      main(); 
    }
  });

  function main() {
    function addScript(item) {
      var el = document.createElement("script");
      el.setAttribute("type", "text/javascript");
      el.setAttribute("src", item.url)
      el.setAttribute("raketa-script", "");
      document.body.appendChild(el);
    }

    function addStyle(item) {
      var el = document.createElement("link");
      el.setAttribute("type", "text/css");
      el.setAttribute("rel", "stylesheet");
      el.setAttribute("href", item.url);
      el.setAttribute("raketa-style", "");
      document.getElementsByTagName("head")[0].appendChild(el);
    }

    function addJSON(item) {
      if(!item.content) return;
      var filename = null;
      var m = item.url.toString().match(/.*\/(.+?)\./);
      if (m && m.length > 1) { filename = m[1]; }
      if(filename) {
        var parts = filename.toLowerCase().replace(".json", "").split("-");
        let varName = parts.map(function(item, index) { return index ? item.charAt(0).toUpperCase() + item.slice(1).toLowerCase() : item.toLowerCase() }).join("");
        var json = JSON.parse(item.content);
        window[varName] = json;
      }
    }

    Object.keys(window.RDFilesData).forEach(function(key) {
      var item = window.RDFilesData[key];
      if(item.type === "text/javascript" || item.type === "application/javascript") {
        addScript(item);
      }
      if(item.type === "text/css") {
        addStyle(item);
      }
      if(item.type === "application/json") {
        addJSON(item);
      }
    });
    var evt = new CustomEvent("RDFilesLoaded", { detail: { files: window.RDFilesData, errors: window.RDFilesErrors } });
    window.dispatchEvent(evt);
  }
})(window);