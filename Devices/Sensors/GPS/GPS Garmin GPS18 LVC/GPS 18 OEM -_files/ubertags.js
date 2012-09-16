window.bezen = window.bezen || (function() {
    var nix = function() {};
    var $ = function(id) {
        return document.getElementById(id);
    };
    var css_$ = function(css) {
        if (document.getElementsByClassName) {
            return document.getElementsByClassName(css);
        } else {
            var classes = css.split(" "),
            classesToCheck = [],
            elements = document.all,
            current,
            returnElements = [],
            match;
            for (var k = 0, kl = classes.length; k < kl; k += 1) {
                classesToCheck.push(new RegExp("(^|\\s)" + classes[k] + "(\\s|$)"));
            }
            for (var l = 0, ll = elements.length; l < ll; l += 1) {
                current = elements[l];
                match = false;
                for (var m = 0, ml = classesToCheck.length; m < ml; m += 1) {
                    match = classesToCheck[m].test(current.className);
                    if (!match) {
                        break;
                    }
                }
                if (match) {
                    returnElements.push(current);
                }
            }
            return returnElements;
        }
    }
    return {
        $: $,
        css_$: css_$,
        nix: nix,
        _: {}
    };
} ());
bezen.object = (function() {
    var beget = function(prototype) {
        var F = function() {};
        F.prototype = prototype;
        return new F();
    };
    var exists = function(object) {
        if (object === null || object === undefined) {
            return false;
        }
        for (var i = 1; i < arguments.length; i++) {
            object = object[arguments[i]];
            if (object === null || object === undefined) {
                return false;
            }
        }
        return true;
    };
    var isArray = function(that) {
        var result = that && typeof that === 'object' && typeof that.length === 'number' && typeof that.splice === 'function' && !(that.propertyIsEnumerable('length'));
        return result ? true: false;
    };
    var isString = function(that) {
        return typeof that === 'string' || that instanceof String;
    };
    return {
        beget: beget,
        exists: exists,
        isArray: isArray,
        isString: isString,
        _: {}
    };
} ());
bezen.array = (function() {
    var ARRAY = [];
    var empty = function(array) {
        array.length = 0;
    };
    var last = function(array) {
        if (!array || array.length === 0) {
            return null;
        }
        return array[array.length - 1];
    };
    var push = function(array, item) {
        if (Array.push) {
            return Array.push(array, item);
        } else {
            return ARRAY.push.call(array, item);
        }
    };
    var pop = function(array) {
        if (Array.pop) {
            return Array.pop(array);
        } else {
            return ARRAY.pop.call(array);
        }
    };
    var shift = function(array) {
        if (Array.shift) {
            return Array.shift(array);
        } else {
            return ARRAY.shift.call(array);
        }
    };
    var unshift = function(array, item) {
        if (Array.unshift) {
            return Array.unshift(array, item);
        } else {
            return ARRAY.unshift.call(array, item);
        }
    };
    var copy = function(array) {
        if (!array) {
            return null;
        }
        var duplicate = [];
        for (var i = 0; i < array.length; i++) {
            duplicate.push(array[i]);
        }
        return duplicate;
    };
    var hash = function(array) {
        if (!array) {
            return null;
        }
        var arrayhash = {};
        for (var i = 0; i < array.length; i++) {
            arrayhash[array[i]] = true;
        }
        return arrayhash;
    };
    var contains = function(array, obj) {
        if (!array) {
            return false;
        }
        var i = array.length;
        while (i--) {
            if (array[i] === obj) {
                return true;
            }
        }
        return false;
    }
    return {
        empty: empty,
        last: last,
        push: push,
        pop: pop,
        shift: shift,
        unshift: unshift,
        copy: copy,
        hash: hash,
        contains: contains,
        _: {}
    };
} ());
bezen.string = (function() {
    var trim = function(string) {
        string = string.replace(/^\s\s*/, '');
        return string.replace(/\s\s*$/, '');
    };
    var startsWith = function(string, prefix) {
        prefix = String(prefix);
        return string.slice(0, prefix.length) === prefix;
    };
    var endsWith = function(string, suffix) {
        suffix = String(suffix);
        return string.slice(string.length - suffix.length) === suffix;
    };
    return {
        trim: trim,
        startsWith: startsWith,
        endsWith: endsWith,
        _: {}
    };
} ());
bezen.error = (function() {
    var unsafeSetTimeout = window.setTimeout,
    unsafeSetInterval = window.setInterval;
    var reportError = function(error, url, line) {
        if (!bezen.log) {
            return;
        }
        if (typeof error === 'object') {
            reportError(error.message, error.fileName, error.lineNumber);
            return;
        }
        bezen.log.error(error + ' at ' + url + '[' + line + ']', true);
    };
    var onerror = function(message, url, line) {
        reportError('window.onerror: ' + message, url, line);
        return true;
    };
    var catchError = function(func, description) {
        description = description || 'error.catchError';
        if (typeof func !== 'function') {
            reportError(description + ': A function is expected, found ' + typeof func);
            return bezen.nix;
        }
        var safefunc = function() {
            try {
                return func.apply(this, arguments);
            } catch(e) {
                if (window.onerror) {
                    window.onerror(description + ': ' + e.message + ' in ' + func, e.fileName, e.lineNumber, true);
                }
            }
        };
        return safefunc;
    };
    var safeSetTimeout = function(func, delay) {
        if (typeof func === 'string') {
            if (bezen.log) {
                bezen.log.warn('window.setTimeout: eval is evil: "' + func + '"');
            }
            func = new Function(func);
        }
        return unsafeSetTimeout(catchError(func, 'window.setTimeout'), delay);
    };
    var safeSetInterval = function(func, delay) {
        if (typeof func === 'string') {
            if (bezen.log) {
                bezen.log.warn('window.setInterval: eval is evil: "' + func + '"');
            }
            func = new Function(func);
        }
        return unsafeSetInterval(catchError(func, 'window.setInterval'), delay);
    };
    var catchAll = function() {
        window.onerror = onerror;
        window.setTimeout = safeSetTimeout;
        window.setInterval = safeSetInterval;
    };
    return {
        reportError: reportError,
        onerror: onerror,
        safeSetTimeout: safeSetTimeout,
        safeSetInterval: safeSetInterval,
        catchError: catchError,
        catchAll: catchAll,
        _: {}
    };
} ());
bezen.log = (function() {
    var $ = bezen.$,
    exists = bezen.object.exists,
    pop = bezen.array.pop,
    unshift = bezen.array.unshift;
    var MAX_RECORDS = 100;
    var DOM_LOG_ID = 'bezen.log';
    var records = [];
    var ON = true;
    var OFF = false;
    var globalOnOff = OFF;
    var on = function() {
        globalOnOff = ON;
    };
    var off = function() {
        globalOnOff = OFF;
    };
    var isOn = function(localOnOff) {
        if (localOnOff === ON) {
            return true;
        }
        if (localOnOff === OFF) {
            return false;
        }
        return globalOnOff;
    };
    var log = function() {
        var message = arguments[0];
        for (var i = 1; i < arguments.length; i++) {
            message += arguments[i];
        }
        if (records.length < MAX_RECORDS) {
            records.push(message);
        }
        if (exists(window, 'jash', 'print')) {
            window.jash.print(message);
        }
        if (exists(window, 'console', 'log')) {
            var console = window.console;
            if (exists(console, 'firebug')) {
                console.log.apply(this, arguments);
            } else {
                console.log(message);
            }
        }
        var logDiv = $(DOM_LOG_ID);
        if (exists(logDiv)) {
            logDiv.appendChild(document.createTextNode(message));
            logDiv.appendChild(document.createElement('br'));
        }
    };
    var logIfOn = function() {
        if (arguments.length > 1 && typeof arguments[arguments.length - 1] === 'boolean') {
            var localOnOff = arguments[arguments.length - 1];
            if (isOn(localOnOff)) {
                pop(arguments);
                log.apply(null, arguments);
            }
        } else {
            if (isOn()) {
                log.apply(null, arguments);
            }
        }
    };
    var info = function() {
        logIfOn.apply(null, arguments);
    };
    var warn = function(message, localOnOff) {
        unshift(arguments, 'Warning: ');
        logIfOn.apply(null, arguments);
    };
    var error = function(message, localOnOff) {
        unshift(arguments, '[ERROR] ');
        logIfOn.apply(null, arguments);
    };
    var view = function(offset, end) {
        offset = offset || 0;
        end = end || records.length;
        if (end > records.length) {
            end = records.length;
        }
        var lines = '';
        for (var i = offset; i < end; i++) {
            lines += (i + 1) + '. ' + records[i] + '\n';
        }
        return lines;
    };
    return {
        on: on,
        off: off,
        info: info,
        warn: warn,
        error: error,
        view: view,
        _: {
            isOn: isOn,
            log: log,
            logIfOn: logIfOn,
            globalOnOff: globalOnOff,
            records: records
        }
    };
} ());
bezen.dom = (function() {
    var catchError = bezen.error.catchError;
    var ELEMENT_NODE = 1,
    ATTRIBUTE_NODE = 2,
    TEXT_NODE = 3;
    var element = function(name, attributes) {
        var parent = document.createElement(name);
        if (!attributes) {
            return parent;
        }
        for (var attribute in attributes) {
            if (attributes.hasOwnProperty(attribute)) {
                parent.setAttribute(attribute, attributes[attribute]);
            }
        }
        for (var i = 2; i < arguments.length; i++) {
            var child = arguments[i];
            if (typeof child === 'string') {
                if (parent.canHaveChildren === false) {
                    parent.text = child;
                }
                else {
                    child = document.createTextNode(child);
                    parent.appendChild(child);
                }
            }
            else {
                if (parent.canHaveChildren === false) {
                    return parent;
                } else {
                    parent.appendChild(child);
                }
            }
        }
        return parent;
    };
    var clear = function(element) {
        if (element.canHaveChildren === false) {
            return;
        }
        element.innerHTML = '';
    };
    var insertBefore = function(node, newNode) {
        var parent = node.parentNode;
        parent.insertBefore(newNode, node);
    };
    var insertAfter = function(node, newNode) {
        var parent = node.parentNode;
        parent.insertBefore(newNode, node.nextSibling);
    };
    var remove = function(element) {
        if (element.parentNode && element.parentNode.innerHTML) {
            element.parentNode.removeChild(element);
        }
    };
    var hasAttribute = function(node, attributeName) {
        if (node.hasAttribute) {
            return node.hasAttribute(attributeName);
        }
        var attributeNode = node.getAttributeNode(attributeName);
        if (attributeNode === null) {
            return false;
        }
        return attributeNode.specified;
    };
    var appendScript = function(parent, scriptElt, listener) {
        var safelistener = catchError(listener, 'script.onload');
        if (scriptElt.readyState && scriptElt.onload !== null) {
            scriptElt.onreadystatechange = function() {
                if (scriptElt.readyState === "loaded" || scriptElt.readyState === "complete") {
                    scriptElt.onreadystatechange = null;
                    scriptElt.onerror = null;
                    safelistener();
                }
            };
        } else {
            scriptElt.onload = safelistener;
        }
        parent.appendChild(scriptElt);
    };
    return {
        ELEMENT_NODE: ELEMENT_NODE,
        ATTRIBUTE_NODE: ATTRIBUTE_NODE,
        TEXT_NODE: TEXT_NODE,
        element: element,
        clear: clear,
        insertBefore: insertBefore,
        insertAfter: insertAfter,
        remove: remove,
        hasAttribute: hasAttribute,
        appendScript: appendScript,
        _: {}
    };
} ());
bezen.domwrite = (function() {
    var nix = bezen.nix,
    trim = bezen.string.trim,
    empty = bezen.array.empty,
    hasAttribute = bezen.dom.hasAttribute,
    appendScript = bezen.dom.appendScript,
    originalDocumentWrite = document.write,
    originalDocumentWriteln = document.writeln;
    document.originalDocumentGetElementById = document.getElementById;
    var markupArray = [];
    var domWrite = function(markup) {
        markupArray.push(markup);
    };
    var domWriteln = function(markup) {
        domWrite(markup + '\n');
    };
    var domGetElementById = function(markup) {
        if (document.originalDocumentGetElementById(markup) == null) {
            for (var i = 0; i < markupArray.length; i++) {
                if (markupArray[i].indexOf('id="' + markup + '"') > 0) {
                    var pop_mark = markupArray.pop(i);
                    var divParser = document.createElement("div");
                    divParser.innerHTML = '<br/>' + pop_mark;
                    document.body.appendChild(divParser);
                }
            }
        }
        return document.originalDocumentGetElementById(markup);
    }
    var getMarkupSize = function() {
        return markupArray.length;
    }
    var collectMarkup = function() {
        if (markupArray.length === 0) {
            return null;
        }
        var markup = markupArray.join('');
        empty(markupArray);
        return markup;
    };
    var parseMarkup = function(markup) {
        var divParser = document.createElement("div");
        divParser.innerHTML = '<br/>' + markup;
        divParser.removeChild(divParser.firstChild);
        return divParser.firstChild;
    };
    var isJavascriptScript = function(node) {
        if (node.nodeName !== "SCRIPT") {
            return false;
        }
        if (node.language && node.language.toLowerCase() !== "javascript") {
            return false;
        }
        if (node.type && trim(node.type).toLowerCase() !== "text/javascript") {
            return false;
        }
        return true;
    };
    var appendScriptClone = function(parent, scriptElt, listener) {
        if (hasAttribute(scriptElt, "src")) {
            var externalScript = document.createElement("script");
            for (var i = 0; i < scriptElt.attributes.length; i++) {
                var attribute = scriptElt.attributes[i];
                if (hasAttribute(scriptElt, attribute.name)) {
                    externalScript.setAttribute(attribute.name, attribute.value);
                }
            }
            externalScript.text = scriptElt.text;
            appendScript(parent, externalScript, listener);
        } else {
            var internalScript = scriptElt.cloneNode(false);
            internalScript.text = scriptElt.text;
            internalScript.type = "any";
            parent.appendChild(internalScript);
            if (hasAttribute(scriptElt, "type")) {
                internalScript.setAttribute("type", scriptElt.type);
            } else {
                internalScript.removeAttribute("type");
            }
            if (typeof(window.execScript) == 'object') {
                window.execScript(internalScript.text);
            } else {
                window.eval(internalScript.text);
            }
            listener();
        }
    };
    var render;
    var loadPiecemeal = function(parent, input, callback) {
        if (input === null) {
            callback();
            return;
        }
        var nextInput = null;
        var nextParent = parent;
        var nextStep = function() {
            loadPiecemeal(nextParent, nextInput, callback);
        };

        if (nextInput === null) {
            nextInput = input.nextSibling;
        }
        var inputAncestor = input.parentNode;
        while (nextInput === null && inputAncestor !== null) {
            nextInput = inputAncestor.nextSibling;
            nextParent = nextParent.parentNode;
            inputAncestor = inputAncestor.parentNode;
        }
                
        if (isJavascriptScript(input)) {
                appendScriptClone(parent, input,
                function() {
                    render(parent, nextStep);
                });
        } else {
            var clone = input.cloneNode(false);
            parent.appendChild(clone);
            if (input.firstChild) {
                var scriptCount = input.getElementsByTagName('script').length;
                if (scriptCount === 0) {
                    clone.innerHTML = input.innerHTML;
                } else {
                    nextInput = input.firstChild;
                    nextParent = clone;
                }
            }
            nextStep();
        }

        return;
    };
    var capture = function() {
        var dom = document;
        if (dom.write === originalDocumentWrite) {
            dom.write = domWrite;
        }
        if (dom.writeln === originalDocumentWriteln) {
            dom.writeln = domWriteln;
        }
        if (dom.getElementById === document.originalDocumentGetElementById) {
            dom.getElementById = domGetElementById;
        }
    };
    render = function(parent, callback) {
        if (parent instanceof Function) {
            callback = parent;
            parent = document.body;
        } else {
            parent = parent || document.body;
            callback = callback || nix;
        }
        var markup = collectMarkup();
        if (markup === null) {
            callback();
        } else {
            loadPiecemeal(parent, parseMarkup(markup), callback);
        }
    };
    var restore = function() {
        document.write = originalDocumentWrite;
        document.writeln = originalDocumentWriteln;
        document.getElementById = document.originalDocumentGetElementById
    };
    return {
        capture: capture,
        parseMarkup: parseMarkup,
        render: render,
        restore: restore,
        collectMarkup: collectMarkup,
        getMarkupSize: getMarkupSize,
        _: {
            markupArray: markupArray,
            domWrite: domWrite,
            domWriteln: domWriteln,
            collectMarkup: collectMarkup,
            isJavascriptScript: isJavascriptScript,
            appendScriptClone: appendScriptClone,
            loadPiecemeal: loadPiecemeal
        }
    };
} ());
bezen.load = (function() {
    var nix = bezen.nix,
    isString = bezen.object.isString,
    unshift = bezen.array.unshift,
    appendScript = bezen.dom.appendScript,
    element = bezen.dom.element;
    var loadScript = function(parent, attributes, callback, delay) {
        if (parent && !parent.nodeType) {
            unshift(arguments, null);
            return loadScript.apply(null, arguments);
        }
        if (isString(attributes)) {
            return loadScript(parent, {
                src: attributes
            },
            callback, delay);
        }
        callback = callback || nix;
        parent = parent || document.body;
        delay = delay || 0;
        setTimeout(function() {
            appendScript(parent, element("script", attributes), callback);
        },
        delay);
    };
    var loadScript2 = function(parent, attributes, callback, delay, innerHtml) {
        if (parent && !parent.nodeType) {
            unshift(arguments, null);
            return loadScript2.apply(null, arguments);
        }
        if (isString(attributes)) {
            return loadScript2(parent, {
                src: attributes
            },
            callback, delay, innerHtml);
        }
        callback = callback || nix;
        parent = parent || document.body;
        delay = delay || 0;
        setTimeout(function() {
            appendScript(parent, element("script", attributes, innerHtml), callback);
        },
        delay);
    };
    var getSingleCallback = function(total, callback) {
        if (!callback) {
            return nix;
        }
        var count = 0;
        return function() {
            count++;
            if (count < total) {
                return;
            }
            callback();
        };
    };
    var loadScripts = function(parent, attributesArray, callback, delay) {
        if (parent && !parent.nodeType) {
            unshift(arguments, null);
            return loadScripts.apply(null, arguments);
        }
        var commonCallback = getSingleCallback(attributesArray.length, callback);
        for (var i = 0; i < attributesArray.length; i++) {
            loadScript(parent, attributesArray[i], commonCallback, delay);
        }
    };
    return {
        script: loadScript,
        script2: loadScript2,
        scripts: loadScripts,
        _: {
            getSingleCallback: getSingleCallback
        }
    };
} ());
bezen.ready = (function() {
    var domwrite = bezen.domwrite,
    parseMarkup = domwrite.parseMarkup,
    hasAttribute = bezen.dom.hasAttribute,
    contains = bezen.array.contains,
    windowAddEventListener,
    documentAddEventListener,
    windowAttachEvent,
    documentAttachEvent,
    domWrite,
    documentGetElementById;
    var listeners = [];
    var isOnloadListener = false;
    var deferScripts = [];
    var init = function() {
        windowAddEventListener = window.addEventListener;
        documentAddEventListener = document.addEventListener;
        windowAttachEvent = window.attachEvent;
        documentAttachEvent = document.attachEvent;
    };
    var isReady = function() {
        return document.readyState === 'complete';
    };
    var beReady = function() {
        if (document.readyState) {
            return;
        }
        document.readyState = "complete";
    };
    var addListener = function(listener, description) {
        if (!listener || (typeof listener === 'object' && !listener.handleEvent)) {
            return;
        }
        listener = listener.handleEvent || listener;
        description = description || 'bezen.onready';
        var safelistener = bezen.error ? bezen.error.catchError(listener, description) : listener;
        listeners.push(safelistener);
        if (contains(["window.load", "window.onload", "document.load", "document.DOMContentLoaded", "document.onreadystatechange"], description)) {
            isOnloadListener = true;
        }
    };
    var collectScriptDeferHack = function() {
        var wrapHandler = function(script, handler) {
            return function() {
                script.readyState = 'complete';
                handler.apply(script, arguments);
            };
        };
        while (deferScripts.length > 0) {
            var script = deferScripts.pop();
            var handler = script.onreadystatechange;
            if (typeof handler === 'function') {
                addListener(wrapHandler(script, handler));
            }
        }
    };
    var filterWindowAttachEvent = function(type, listener) {
        if (type === "onload") {
            addListener(listener, 'window.onload');
            return true;
        } else {
            if (windowAttachEvent) {
                return windowAttachEvent(type, listener);
            } else {
                return false;
            }
        }
    };
    var filterWindowAddEventListener = function(type, listener, useCapture) {
        if (type === "load") {
            addListener(listener, 'window.load');
        } else {
            if (windowAddEventListener) {
                windowAddEventListener.apply(window, arguments);
            }
        }
    };
    var filterDocumentAddEventListener = function(type, listener, useCapture) {
        if (type === "load" || type === "DOMContentLoaded") {
            addListener(function() {
                listener.apply(document, arguments);
            },
            'document.' + type);
        } else {
            if (documentAddEventListener) {
                documentAddEventListener.apply(document, arguments);
            }
        }
    };
    var filterDocumentAttachEvent = function(type, listener) {
        if (type === "onreadystatechange") {
            addListener(listener, 'document.onreadystatechange');
            return true;
        } else {
            if (documentAttachEvent) {
                if (document.addEventListener) {
                    return document.addEventListener(type.replace(/^on/, ''), listener, false);
                } else {
                    return documentAttachEvent(type, listener);
                }
            } else {
                return false;
            }
        }
    };
    var onready;
    var captureWindowOnload = function() {
        var windowOnload = window.onload;
        if (windowOnload && windowOnload !== onready) {
            addListener(windowOnload, 'window.onload');
        }
        window.onload = onready;
    };
    onready = function(event) {
        event = event || window.event;
        beReady();
        if (!isReady()) {
            return;
        }
        if (window.detachEvent) {
            window.detachEvent('onload', onready);
        }
        if (document.detachEvent) {
            document.detachEvent('onreadystatechange', onready);
        }
        if (!event) {
            if (document.createEvent) {
                event = document.createEvent('HTMLEvents');
                event.initEvent('load', false, false);
            } else if (document.createEventObject) {
                event = document.createEventObject();
                var documentFragment = document.createDocumentFragment();
                documentFragment.attachEvent('onreadystatechange',
                function() {
                    documentFragment.detachEvent('onreadystatechange', arguments.callee);
                    window.event.type = 'load';
                    onready(event);
                });
                documentFragment.fireEvent('onreadystatechange', event);
                return;
            }
        }
        captureWindowOnload();
        collectScriptDeferHack();
        while (listeners.length > 0) {
            listeners.shift()(event);
        }
    };
    var hasListeners = function() {
        if (listeners.length > 0) {
            return true;
        }
        if (deferScripts.length > 0) {
            return true;
        }
        if (window.onload) {
            if (window.onload !== onready) {
                return true;
            }
        }
        return false;
    };
    var hasOnLoadListeners = function() {
        return isOnloadListener && (listeners.length > 0);
    }
    var executeOnLoadListeners = function() {
        try {
            for (var i in listeners) {
                if (listeners[i] === undefined) {
                    return false;
                } else {
                    listeners[i]();
                }
            }
            return true;
        } catch(e) {
            return true;
        }
    }
    var clearOnLoadListeners = function() {
        listeners.length = 0;
    }
    var capture = function() {
        init();
        captureWindowOnload();
        if (windowAddEventListener && window.addEventListener !== filterWindowAddEventListener) {
            window.addEventListener('load', onready, false);
            window.addEventListener = filterWindowAddEventListener;
        }
        if (documentAddEventListener && document.addEventListener !== filterDocumentAddEventListener) {
            document.addEventListener('load', onready, false);
            document.addEventListener('DOMContentLoaded', onready, false);
            document.addEventListener = filterDocumentAddEventListener;
        }
        if (windowAttachEvent && window.attachEvent !== filterWindowAttachEvent) {
            window.attachEvent('onload', onready);
            window.attachEvent = filterWindowAttachEvent;
        }
        if (documentAttachEvent && document.attachEvent !== filterDocumentAttachEvent) {
            document.attachEvent('onreadystatechange', onready);
            document.attachEvent = filterDocumentAttachEvent;
        }
    };
    var filterDomWrite = function(markup) {
        if (typeof markup === 'string') {
            var node = parseMarkup(markup);
            if (node && node.nodeName === 'SCRIPT' && node.nextSibling === null && hasAttribute(node, 'id') && hasAttribute(node, 'defer')) {
                var javascriptUrl = 'javascript';
                javascriptUrl += ':void(0)';
                var src = node.getAttribute('src');
                if (src === '//:' || src === '//0' || src === javascriptUrl) {
                    deferScripts.push(node);
                    return;
                }
            }
        }
        domWrite(markup);
    };
    var filterDocumentGetElementById = function(id) {
        for (var i = deferScripts.length; i >= 0; i--) {
            var script = deferScripts[i];
            if (script && script.id === id) {
                return script;
            }
        }
        if (documentGetElementById.apply) {
            return documentGetElementById.apply(document, arguments);
        } else {
            return documentGetElementById(id);
        }
    };
    var captureScriptDeferHack = function() {
        domwrite.capture();
        var dom = document;
        domWrite = dom.write;
        dom.write = filterDomWrite;
        documentGetElementById = document.getElementById;
        document.getElementById = filterDocumentGetElementById;
    };
    var simulate = function() {
        if (isReady()) {
            onready();
        }
    };
    var restore = function() {
        domwrite.restore();
        if (windowAddEventListener) {
            window.addEventListener = windowAddEventListener;
        }
        if (documentAddEventListener) {
            document.addEventListener = documentAddEventListener;
        }
        if (windowAttachEvent) {
            window.attachEvent = windowAttachEvent;
        }
        if (documentAttachEvent) {
            document.attachEvent = documentAttachEvent;
        }
        if (documentGetElementById) {
            document.getElementById = documentGetElementById;
        }
    };
    return {
        isReady: isReady,
        beReady: beReady,
        addListener: addListener,
        hasListeners: hasListeners,
        hasOnLoadListeners: hasOnLoadListeners,
        executeOnLoadListeners: executeOnLoadListeners,
        clearOnLoadListeners: clearOnLoadListeners,
        capture: capture,
        captureScriptDeferHack: captureScriptDeferHack,
        simulate: simulate,
        restore: restore,
        _: {
            listeners: listeners,
            deferScripts: deferScripts,
            init: init,
            onready: onready,
            captureWindowOnload: captureWindowOnload,
            filterWindowAttachEvent: filterWindowAttachEvent,
            filterWindowAddEventListener: filterWindowAddEventListener,
            filterDocumentAddEventListener: filterDocumentAddEventListener,
            filterDocumentAttachEvent: filterDocumentAttachEvent,
            collectScriptDeferHack: collectScriptDeferHack,
            filterDomWrite: filterDomWrite,
            filterDocumentGetElementById: filterDocumentGetElementById
        }
    };
} ());


if (typeof prefix == "undefined"){
    var prefix = (("https:" == document.location.protocol) ? "https://": "http://");
}

if (typeof _host == "undefined"){
    var _host = (prefix + "app.ubertags.com");
} 


var ubertags_renderNewMarkupStarted = false;

function logger(message) {
    if (typeof window.console != 'undefined' && typeof window.console.log != 'undefined')
    console.log(message);
}

function random_number() {
    return (Math.random() * 1000000) | 0;
}

function ubertags_renderNewMarkup() {
    ubertags_renderNewMarkupStarted = true;
    if (ubertags_getMarkupSize() > 0) {
        ubertags_renderMarkup(document.body, bezen.nix);
    }

    // deal with the listeners registered when window.onload, like Estara
    if (ubertags_ready.hasOnLoadListeners()) {
        if (ubertags_ready.executeOnLoadListeners()) {
            ubertags_ready.clearOnLoadListeners();
            // run only once
        }
    }

    if (markup_loop < LOOP_TIME) {
        // loop 20sec
        setTimeout(function() {
            ubertags_renderNewMarkup();
            markup_loop++;
            ubertags_renderNewMarkupStarted = false;
        },
        100);
    }
};


function ubertags_init(identifier) {
    ubertags_$ = bezen.$;
    ubertags_css_$ = bezen.css_$;
    ubertags_loadScript2 = bezen.load.script2;
    ubertags_captureMarkup = bezen.domwrite.capture;
    ubertags_renderMarkup = bezen.domwrite.render;
    ubertags_getMarkupSize = bezen.domwrite.getMarkupSize;
    ubertags_ready = bezen.ready;
    ubertags_error = bezen.error;
    ubertags_index = 0;
    windowOnload = window.onload || bezen.nix;
    markup_loop = 0;
    LOOP_TIME = 200;
    ubertags_identifier = identifier;
    //ubertags_error.catchAll();
    ubertags_ready.capture();

    var tags_src = _host + "/get_tags/" + identifier + '?' + random_number();
    document.write("<script src=\"" + tags_src + "\"></script>");
};

//whitelabel ubertags_init
function ut_init(identifier) {
    ubertags_init(identifier);
};

function ubertags_getDom(position) {
    var parent = null;
    if (position == "body" || position == "") {
        parent = document.body;
    } else if (position == "head") {
        parent = document.getElementsByTagName("head")[0];
    } else {
        parent = ubertags_$(position) || (ubertags_css_$(position).length > 0 ? ubertags_css_$(position)[0] : null)
    }
    return parent;
}

function ubertags_insert(content, position, source) {
    if ((source != null) && (source != undefined) && (source != "")) {
        var currentSource = ubertags_getUtSource();
        // Source check, if it doesn't match, not rendering the tag
        if (currentSource != source) {
            return;
        }
    }

    ubertags_ready.addListener(function() {
        var parent = ubertags_getDom(position);
        ubertags_captureMarkup();

        ubertags_loadScript2(
        parent,
        {
            type: "text/javascript"
        },
        bezen.nix,
        ubertags_index * 60,
        (function(current_position) {
            return "var container=ubertags_getDom(\"" + current_position + "\"); document.write(\"" + content + "\"); ubertags_renderMarkup(container, bezen.nix);"
        })(position)
        );
        ubertags_index += 1;
    });

    if (ubertags_renderNewMarkupStarted == false) {
        ubertags_renderNewMarkup();
    }
}

function ubertags_load(uri) {
    markup_loop = 0;
    var tags_src = _host + "/get_tags/" + ubertags_identifier + "?uri=" + encodeURIComponent(uri) + '&' + random_number();

    var head = document.getElementsByTagName('HEAD').item(0);
    var script = document.createElement("script");
    script.type = "text/javascript";
    script.src = tags_src;
    head.appendChild(script);
}

//whitelabel ubertags_load
function ut_load(uri) {
    ubertags_load(uri);
}

function ubertags_track_sources(sources) {
    var utm_source = ubertags_getURLParameter('utm_source');
    var currentSource = ubertags_getUtSource();

    if ((utm_source != 'null') && (utm_source != null) && (utm_source != undefined)) {
        var ut_source = null;
        for (var i = 0; i < sources.length; i++) {
            var source = sources[i].source;
            try {
                var source_regex = new RegExp(source.utm_source, "i");
                if ((source != 'null') && (source != null) && (source != undefined) && (source != '') &&
                (source.utm_source != 'null') && (source.utm_source != null) && (source.utm_source != undefined) && (source.utm_source != '') &&
                source_regex.test(utm_source))
                {
                    ut_source = source.source_name;
                }
            } catch(e) {
                logger('Ubertags Source Tracking Error: ' + e);
            }
        }

        if (ut_source != null) {
            ubertags_setUtSource(ut_source);
            return;
        }
    }

    var referrer = document.referrer.toLowerCase();

    if ((referrer != null) && (referrer != undefined) && (referrer != 'null') && (referrer != '')) {
        var ut_source = null;

        for (var i = 0; i < sources.length; i++) {
            var source = sources[i].source;
            try {
                var source_domain_regex = new RegExp(source.domain, "i");
                if ((source != null) && (source != undefined) && (source != 'null') && (source != '') &&
                (source.domain != null) && (source.domain != undefined) && (source.domain != 'null') && (source.domain != '')
                && source_domain_regex.test(referrer))
                {
                    ut_source = source.source_name;
                }
            } catch(e) {
                logger('Ubertags Source Tracking Error: ' + e);
            }
        }

        if (ut_source != null) {
            ubertags_setUtSource(ut_source);
            return;
        }
    }

}

// Helpers
function ubertags_getURLParameter(name) {
    return decodeURI(
    (RegExp(name + '=' + '(.+?)(&|$)').exec(location.search) || [, null])[1]
    );
}

// Cookies handling
function ubertags_getUtSource() {
    return ubertags_readCookie('ut_source');
}

function ubertags_setUtSource(source) {
    return ubertags_createCookie('ut_source', source, 30);
}


function ubertags_createCookie(name, value, days) {
    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        var expires = "; expires=" + date.toGMTString();
    }
    else var expires = "";
    document.cookie = name + "=" + value + expires + "; path=/";
}

function ubertags_readCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') c = c.substring(1, c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
    }
    return null;
}

function ubertags_eraseCookie(name) {
    createCookie(name, "", -1);
}