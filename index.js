/* global Promise */

module.exports = function load(src, async) {
  var s = document.createElement('script');
  s.src = src;
  if (typeof async === 'boolean') {
    s.async = async;
  }

  function executor(resolve, reject) {
    (document.head || document.body).appendChild(s);
    s.onload = function() { resolve(s); };
    s.onerror = function(err) { reject(err); };
  }

  return new Promise(executor);
};
