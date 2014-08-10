if window.performance && window.performance.timing
  get = (key) ->
    window.performance.timing[key]

  time = (start, end) ->
    s = get(start)
    e = get(end)
    (e - s) / 1000  if s and e

  $(window).load ->
    t = window.performance.timing
    obj = 
      real: time('navigationStart', 'loadEventEnd')
      total: time('fetchStart', 'loadEventEnd')
      network: time('fetchStart', 'responseEnd')
      dns: time('domainLookupStart', 'domainLookupEnd')
      domready: time('domainLookupStart', 'domainLookupEnd')

    str = ""
    for key of obj
      str += "&"  unless str is ""
      str += key + "=" + obj[key]

    (new Image).src = "#{ROCKET_TRACKER_ENDPOINT}?#{str}"

