# This file has been generated by node2nix 1.11.1. Do not edit!

{nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs ? []}:

let
  sources = {
    "@bytecodealliance/jco-1.0.2" = {
      name = "_at_bytecodealliance_slash_jco";
      packageName = "@bytecodealliance/jco";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@bytecodealliance/jco/-/jco-1.0.2.tgz";
        sha512 = "DAHnX+nW+ppHRkqh7WpTVF8fWD99Ctl8KgJ51rSan2DFu0qJ00hWBHplAokYaW1m81LbjbMom5k24FnvTwKoNA==";
      };
    };
    "@bytecodealliance/preview2-shim-0.15.1" = {
      name = "_at_bytecodealliance_slash_preview2-shim";
      packageName = "@bytecodealliance/preview2-shim";
      version = "0.15.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/@bytecodealliance/preview2-shim/-/preview2-shim-0.15.1.tgz";
        sha512 = "dzdsRvdDTaogMS8rLJhJWtRMMIUwaXcZyxklnsj6o81/PQl5VCPMBqBItRnmbtizTVGPKGxmfRkxZBw86gBkzg==";
      };
    };
    "@jridgewell/gen-mapping-0.3.3" = {
      name = "_at_jridgewell_slash_gen-mapping";
      packageName = "@jridgewell/gen-mapping";
      version = "0.3.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/@jridgewell/gen-mapping/-/gen-mapping-0.3.3.tgz";
        sha512 = "HLhSWOLRi875zjjMG/r+Nv0oCW8umGb0BgEhyX3dDX3egwZtB8PqLnjz3yedt8R5StBrzcg4aBpnh8UA9D1BoQ==";
      };
    };
    "@jridgewell/resolve-uri-3.1.2" = {
      name = "_at_jridgewell_slash_resolve-uri";
      packageName = "@jridgewell/resolve-uri";
      version = "3.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@jridgewell/resolve-uri/-/resolve-uri-3.1.2.tgz";
        sha512 = "bRISgCIjP20/tbWSPWMEi54QVPRZExkuD9lJL+UIxUKtwVJA8wW1Trb1jMs1RFXo1CBTNZ/5hpC9QvmKWdopKw==";
      };
    };
    "@jridgewell/set-array-1.1.2" = {
      name = "_at_jridgewell_slash_set-array";
      packageName = "@jridgewell/set-array";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@jridgewell/set-array/-/set-array-1.1.2.tgz";
        sha512 = "xnkseuNADM0gt2bs+BvhO0p78Mk762YnZdsuzFV018NoG1Sj1SCQvpSqa7XUaTam5vAGasABV9qXASMKnFMwMw==";
      };
    };
    "@jridgewell/source-map-0.3.5" = {
      name = "_at_jridgewell_slash_source-map";
      packageName = "@jridgewell/source-map";
      version = "0.3.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/@jridgewell/source-map/-/source-map-0.3.5.tgz";
        sha512 = "UTYAUj/wviwdsMfzoSJspJxbkH5o1snzwX0//0ENX1u/55kkZZkcTZP6u9bwKGkv+dkk9at4m1Cpt0uY80kcpQ==";
      };
    };
    "@jridgewell/sourcemap-codec-1.4.15" = {
      name = "_at_jridgewell_slash_sourcemap-codec";
      packageName = "@jridgewell/sourcemap-codec";
      version = "1.4.15";
      src = fetchurl {
        url = "https://registry.npmjs.org/@jridgewell/sourcemap-codec/-/sourcemap-codec-1.4.15.tgz";
        sha512 = "eF2rxCRulEKXHTRiDrDy6erMYWqNw4LPdQ8UQA4huuxaQsVeRPFl2oM8oDGxMFhJUWZf9McpLtJasDDZb/Bpeg==";
      };
    };
    "@jridgewell/trace-mapping-0.3.22" = {
      name = "_at_jridgewell_slash_trace-mapping";
      packageName = "@jridgewell/trace-mapping";
      version = "0.3.22";
      src = fetchurl {
        url = "https://registry.npmjs.org/@jridgewell/trace-mapping/-/trace-mapping-0.3.22.tgz";
        sha512 = "Wf963MzWtA2sjrNt+g18IAln9lKnlRp+K2eH4jjIoF1wYeq3aMREpG09xhlhdzS0EjwU7qmUJYangWa+151vZw==";
      };
    };
    "acorn-8.11.3" = {
      name = "acorn";
      packageName = "acorn";
      version = "8.11.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/acorn/-/acorn-8.11.3.tgz";
        sha512 = "Y9rRfJG5jcKOE0CLisYbojUjIrIEE7AGMzA/Sm4BslANhbS+cDMpgBdcPT91oJ7OuJ9hYJBx59RjbhxVnrF8Xg==";
      };
    };
    "ansi-regex-6.0.1" = {
      name = "ansi-regex";
      packageName = "ansi-regex";
      version = "6.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-6.0.1.tgz";
        sha512 = "n5M855fKb2SsfMIiFFoVrABHJC8QtHwVx+mHWP3QcEqBHYienj5dHSgjbxtC0WEZXYt4wcD6zrQElDPhFuZgfA==";
      };
    };
    "ansi-styles-4.3.0" = {
      name = "ansi-styles";
      packageName = "ansi-styles";
      version = "4.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ansi-styles/-/ansi-styles-4.3.0.tgz";
        sha512 = "zbB9rCJAT1rbjiVDb2hqKFHNYLxgtk8NURxZ3IZwD3F6NtxbXZQCnnSi1Lkx+IDohdPlFp222wVALIheZJQSEg==";
      };
    };
    "base64-js-1.5.1" = {
      name = "base64-js";
      packageName = "base64-js";
      version = "1.5.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/base64-js/-/base64-js-1.5.1.tgz";
        sha512 = "AKpaYlHn8t4SVbOHCy+b5+KKgvR4vrsD8vbvrbiQJps7fKDTkjkDry6ji0rUJjC0kzbNePLwzxq8iypo41qeWA==";
      };
    };
    "binaryen-111.0.0" = {
      name = "binaryen";
      packageName = "binaryen";
      version = "111.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/binaryen/-/binaryen-111.0.0.tgz";
        sha512 = "PEXOSHFO85aj1aP4t+KGzvxQ00qXbjCysWlsDjlGkP1e9owNiYdpEkLej21Ax8LDD7xJ01rEmJDqZ/JPoW2GXw==";
      };
    };
    "bl-5.1.0" = {
      name = "bl";
      packageName = "bl";
      version = "5.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/bl/-/bl-5.1.0.tgz";
        sha512 = "tv1ZJHLfTDnXE6tMHv73YgSJaWR2AFuPwMntBe7XL/GBFHnT0CLnsHMogfk5+GzCDC5ZWarSCYaIGATZt9dNsQ==";
      };
    };
    "buffer-6.0.3" = {
      name = "buffer";
      packageName = "buffer";
      version = "6.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/buffer/-/buffer-6.0.3.tgz";
        sha512 = "FTiCpNxtwiZZHEZbcbTIcZjERVICn9yq/pDFkTl95/AxzD1naBctN7YO68riM/gLSDY7sdrMby8hofADYuuqOA==";
      };
    };
    "buffer-from-1.1.2" = {
      name = "buffer-from";
      packageName = "buffer-from";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/buffer-from/-/buffer-from-1.1.2.tgz";
        sha512 = "E+XQCRwSbaaiChtv6k6Dwgc+bx+Bs6vuKJHHl5kox/BaKbhiXzqQOwK4cO22yElGp2OCmjwVhT3HmxgyPGnJfQ==";
      };
    };
    "chalk-4.1.2" = {
      name = "chalk";
      packageName = "chalk";
      version = "4.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/chalk/-/chalk-4.1.2.tgz";
        sha512 = "oKnbhFyRIXpUuez8iBMmyEa4nbj4IOQyuhc/wy9kY7/WVPcwIO9VA668Pu8RkO7+0G76SLROeyw9CpQ061i4mA==";
      };
    };
    "chalk-5.3.0" = {
      name = "chalk";
      packageName = "chalk";
      version = "5.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/chalk/-/chalk-5.3.0.tgz";
        sha512 = "dLitG79d+GV1Nb/VYcCDFivJeK1hiukt9QjRNVOsUtTy1rR1YJsmpGGTZ3qJos+uw7WmWF4wUwBd9jxjocFC2w==";
      };
    };
    "chalk-template-0.4.0" = {
      name = "chalk-template";
      packageName = "chalk-template";
      version = "0.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/chalk-template/-/chalk-template-0.4.0.tgz";
        sha512 = "/ghrgmhfY8RaSdeo43hNXxpoHAtxdbskUHjPpfqUWGttFgycUhYPGx3YZBCnUCvOa7Doivn1IZec3DEGFoMgLg==";
      };
    };
    "cli-cursor-4.0.0" = {
      name = "cli-cursor";
      packageName = "cli-cursor";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/cli-cursor/-/cli-cursor-4.0.0.tgz";
        sha512 = "VGtlMu3x/4DOtIUwEkRezxUZ2lBacNJCHash0N0WeZDBS+7Ux1dm3XWAgWYxLJFMMdOeXMHXorshEFhbMSGelg==";
      };
    };
    "cli-spinners-2.9.2" = {
      name = "cli-spinners";
      packageName = "cli-spinners";
      version = "2.9.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/cli-spinners/-/cli-spinners-2.9.2.tgz";
        sha512 = "ywqV+5MmyL4E7ybXgKys4DugZbX0FC6LnwrhjuykIjnK9k8OQacQ7axGKnjDXWNhns0xot3bZI5h55H8yo9cJg==";
      };
    };
    "clone-1.0.4" = {
      name = "clone";
      packageName = "clone";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/clone/-/clone-1.0.4.tgz";
        sha512 = "JQHZ2QMW6l3aH/j6xCqQThY/9OH4D/9ls34cgkUBiEeocRTU04tHfKPBsUK1PqZCUQM7GiA0IIXJSuXHI64Kbg==";
      };
    };
    "color-convert-2.0.1" = {
      name = "color-convert";
      packageName = "color-convert";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/color-convert/-/color-convert-2.0.1.tgz";
        sha512 = "RRECPsj7iu/xb5oKYcsFHSppFNnsj/52OVTRKb4zP5onXwVF3zVmmToNcOfGC+CRDpfK/U584fMg38ZHCaElKQ==";
      };
    };
    "color-name-1.1.4" = {
      name = "color-name";
      packageName = "color-name";
      version = "1.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/color-name/-/color-name-1.1.4.tgz";
        sha512 = "dOy+3AuW3a2wNbZHIuMZpTcgjGuLU/uBL/ubcZF9OXbDo8ff4O8yVp5Bf0efS8uEoYo5q4Fx7dY9OgQGXgAsQA==";
      };
    };
    "commander-2.20.3" = {
      name = "commander";
      packageName = "commander";
      version = "2.20.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/commander/-/commander-2.20.3.tgz";
        sha512 = "GpVkmM8vF2vQUkj2LvZmD35JxeJOLCwJ9cUkugyk2nuhbv3+mJvpLYYt+0+USMxE+oj+ey/lJEnhZw75x/OMcQ==";
      };
    };
    "commander-9.5.0" = {
      name = "commander";
      packageName = "commander";
      version = "9.5.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/commander/-/commander-9.5.0.tgz";
        sha512 = "KRs7WVDKg86PWiuAqhDrAQnTXZKraVcCc6vFdL14qrZ/DcWwuRo7VoiYXalXO7S5GKpqYiVEwCbgFDfxNHKJBQ==";
      };
    };
    "defaults-1.0.4" = {
      name = "defaults";
      packageName = "defaults";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/defaults/-/defaults-1.0.4.tgz";
        sha512 = "eFuaLoy/Rxalv2kr+lqMlUnrDWV+3j4pljOIJgLIhI058IQfWJ7vXhyEIHu+HtC738klGALYxOKDO0bQP3tg8A==";
      };
    };
    "has-flag-4.0.0" = {
      name = "has-flag";
      packageName = "has-flag";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/has-flag/-/has-flag-4.0.0.tgz";
        sha512 = "EykJT/Q1KjTWctppgIAgfSO0tKVuZUjhgMr17kqTumMl6Afv3EISleU7qZUzoXDFTAHTDC4NOoG/ZxU3EvlMPQ==";
      };
    };
    "ieee754-1.2.1" = {
      name = "ieee754";
      packageName = "ieee754";
      version = "1.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ieee754/-/ieee754-1.2.1.tgz";
        sha512 = "dcyqhDvX1C46lXZcVqCpK+FtMRQVdIMN6/Df5js2zouUsqG7I6sFxitIC+7KYK29KdXOLHdu9zL4sFnoVQnqaA==";
      };
    };
    "inherits-2.0.4" = {
      name = "inherits";
      packageName = "inherits";
      version = "2.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/inherits/-/inherits-2.0.4.tgz";
        sha512 = "k/vGaX4/Yla3WzyMCvTQOXYeIHvqOKtnqBduzTHpzpQZzAskKMhZ2K+EnBiSM9zGSoIFeMpXKxa4dYeZIQqewQ==";
      };
    };
    "is-interactive-2.0.0" = {
      name = "is-interactive";
      packageName = "is-interactive";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-interactive/-/is-interactive-2.0.0.tgz";
        sha512 = "qP1vozQRI+BMOPcjFzrjXuQvdak2pHNUMZoeG2eRbiSqyvbEf/wQtEOTOX1guk6E3t36RkaqiSt8A/6YElNxLQ==";
      };
    };
    "is-unicode-supported-1.3.0" = {
      name = "is-unicode-supported";
      packageName = "is-unicode-supported";
      version = "1.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-unicode-supported/-/is-unicode-supported-1.3.0.tgz";
        sha512 = "43r2mRvz+8JRIKnWJ+3j8JtjRKZ6GmjzfaE/qiBJnikNnYv/6bagRJ1kUhNk8R5EX/GkobD+r+sfxCPJsiKBLQ==";
      };
    };
    "log-symbols-5.1.0" = {
      name = "log-symbols";
      packageName = "log-symbols";
      version = "5.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/log-symbols/-/log-symbols-5.1.0.tgz";
        sha512 = "l0x2DvrW294C9uDCoQe1VSU4gf529FkSZ6leBl4TiqZH/e+0R7hSfHQBNut2mNygDgHwvYHfFLn6Oxb3VWj2rA==";
      };
    };
    "mimic-fn-2.1.0" = {
      name = "mimic-fn";
      packageName = "mimic-fn";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/mimic-fn/-/mimic-fn-2.1.0.tgz";
        sha512 = "OqbOk5oEQeAZ8WXWydlu9HJjz9WVdEIvamMCcXmuqUYjTknH/sqsWvhQ3vgwKFRR1HpjvNBKQ37nbJgYzGqGcg==";
      };
    };
    "mkdirp-1.0.4" = {
      name = "mkdirp";
      packageName = "mkdirp";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/mkdirp/-/mkdirp-1.0.4.tgz";
        sha512 = "vVqVZQyf3WLx2Shd0qJ9xuvqgAyKPLAiqITEtqW0oIUjzo3PePDd6fW9iFz30ef7Ysp/oiWqbhszeGWW2T6Gzw==";
      };
    };
    "onetime-5.1.2" = {
      name = "onetime";
      packageName = "onetime";
      version = "5.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/onetime/-/onetime-5.1.2.tgz";
        sha512 = "kbpaSSGJTWdAY5KPVeMOKXSrPtr8C8C7wodJbcsd51jRnmD+GZu8Y0VoU6Dm5Z4vWr0Ig/1NKuWRKf7j5aaYSg==";
      };
    };
    "ora-6.3.1" = {
      name = "ora";
      packageName = "ora";
      version = "6.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ora/-/ora-6.3.1.tgz";
        sha512 = "ERAyNnZOfqM+Ao3RAvIXkYh5joP220yf59gVe2X/cI6SiCxIdi4c9HZKZD8R6q/RDXEje1THBju6iExiSsgJaQ==";
      };
    };
    "readable-stream-3.6.2" = {
      name = "readable-stream";
      packageName = "readable-stream";
      version = "3.6.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/readable-stream/-/readable-stream-3.6.2.tgz";
        sha512 = "9u/sniCrY3D5WdsERHzHE4G2YCXqoG5FTHUiCC4SIbr6XcLZBY05ya9EKjYek9O5xOAwjGq+1JdGBAS7Q9ScoA==";
      };
    };
    "restore-cursor-4.0.0" = {
      name = "restore-cursor";
      packageName = "restore-cursor";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/restore-cursor/-/restore-cursor-4.0.0.tgz";
        sha512 = "I9fPXU9geO9bHOt9pHHOhOkYerIMsmVaWB0rA2AI9ERh/+x/i7MV5HKBNrg+ljO5eoPVgCcnFuRjJ9uH6I/3eg==";
      };
    };
    "safe-buffer-5.2.1" = {
      name = "safe-buffer";
      packageName = "safe-buffer";
      version = "5.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.2.1.tgz";
        sha512 = "rp3So07KcdmmKbGvgaNxQSJr7bGVSVk5S9Eq1F+ppbRo70+YeaDxkw5Dd8NPN+GD6bjnYm2VuPuCXmpuYvmCXQ==";
      };
    };
    "signal-exit-3.0.7" = {
      name = "signal-exit";
      packageName = "signal-exit";
      version = "3.0.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/signal-exit/-/signal-exit-3.0.7.tgz";
        sha512 = "wnD2ZE+l+SPC/uoS0vXeE9L1+0wuaMqKlfz9AMUo38JsyLSBWSFcHR1Rri62LZc12vLr1gb3jl7iwQhgwpAbGQ==";
      };
    };
    "source-map-0.6.1" = {
      name = "source-map";
      packageName = "source-map";
      version = "0.6.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/source-map/-/source-map-0.6.1.tgz";
        sha512 = "UjgapumWlbMhkBgzT7Ykc5YXUT46F0iKu8SGXq0bcwP5dz/h0Plj6enJqjz1Zbq2l5WaqYnrVbwWOWMyF3F47g==";
      };
    };
    "source-map-support-0.5.21" = {
      name = "source-map-support";
      packageName = "source-map-support";
      version = "0.5.21";
      src = fetchurl {
        url = "https://registry.npmjs.org/source-map-support/-/source-map-support-0.5.21.tgz";
        sha512 = "uBHU3L3czsIyYXKX88fdrGovxdSCoTGDRZ6SYXtSRxLZUzHg5P/66Ht6uoUlHu9EZod+inXhKo3qQgwXUT/y1w==";
      };
    };
    "stdin-discarder-0.1.0" = {
      name = "stdin-discarder";
      packageName = "stdin-discarder";
      version = "0.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/stdin-discarder/-/stdin-discarder-0.1.0.tgz";
        sha512 = "xhV7w8S+bUwlPTb4bAOUQhv8/cSS5offJuX8GQGq32ONF0ZtDWKfkdomM3HMRA+LhX6um/FZ0COqlwsjD53LeQ==";
      };
    };
    "string_decoder-1.3.0" = {
      name = "string_decoder";
      packageName = "string_decoder";
      version = "1.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/string_decoder/-/string_decoder-1.3.0.tgz";
        sha512 = "hkRX8U1WjJFd8LsDJ2yQ/wWWxaopEsABU1XfkM8A+j0+85JAGppt16cr1Whg6KIbb4okU6Mql6BOj+uup/wKeA==";
      };
    };
    "strip-ansi-7.1.0" = {
      name = "strip-ansi";
      packageName = "strip-ansi";
      version = "7.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/strip-ansi/-/strip-ansi-7.1.0.tgz";
        sha512 = "iq6eVVI64nQQTRYq2KtEg2d2uU7LElhTJwsH4YzIHZshxlgZms/wIc4VoDQTlG/IvVIrBKG06CrZnp0qv7hkcQ==";
      };
    };
    "supports-color-7.2.0" = {
      name = "supports-color";
      packageName = "supports-color";
      version = "7.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/supports-color/-/supports-color-7.2.0.tgz";
        sha512 = "qpCAvRl9stuOHveKsn7HncJRvv501qIacKzQlO/+Lwxc9+0q2wLyv4Dfvt80/DPn2pqOBsJdDiogXGR9+OvwRw==";
      };
    };
    "terser-5.27.2" = {
      name = "terser";
      packageName = "terser";
      version = "5.27.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/terser/-/terser-5.27.2.tgz";
        sha512 = "sHXmLSkImesJ4p5apTeT63DsV4Obe1s37qT8qvwHRmVxKTBH7Rv9Wr26VcAMmLbmk9UliiwK8z+657NyJHHy/w==";
      };
    };
    "util-deprecate-1.0.2" = {
      name = "util-deprecate";
      packageName = "util-deprecate";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/util-deprecate/-/util-deprecate-1.0.2.tgz";
        sha512 = "EPD5q1uXyFxJpCrLnCc1nHnq3gOa6DZBocAIiI2TaSCA7VCJ1UJDMagCzIkXNsUYfD1daK//LTEQ8xiIbrHtcw==";
      };
    };
    "wcwidth-1.0.1" = {
      name = "wcwidth";
      packageName = "wcwidth";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/wcwidth/-/wcwidth-1.0.1.tgz";
        sha512 = "XHPEwS0q6TaxcvG85+8EYkbiCux2XtWG2mkc47Ng2A77BQu9+DqIOJldST4HgPkuea7dvKSj5VgX3P1d4rW8Tg==";
      };
    };
  };
  args = {
    name = "utils";
    packageName = "utils";
    src = ./.;
    dependencies = [
      sources."@bytecodealliance/jco-1.0.2"
      sources."@bytecodealliance/preview2-shim-0.15.1"
      sources."@jridgewell/gen-mapping-0.3.3"
      sources."@jridgewell/resolve-uri-3.1.2"
      sources."@jridgewell/set-array-1.1.2"
      sources."@jridgewell/source-map-0.3.5"
      sources."@jridgewell/sourcemap-codec-1.4.15"
      sources."@jridgewell/trace-mapping-0.3.22"
      sources."acorn-8.11.3"
      sources."ansi-regex-6.0.1"
      sources."ansi-styles-4.3.0"
      sources."base64-js-1.5.1"
      sources."binaryen-111.0.0"
      sources."bl-5.1.0"
      sources."buffer-6.0.3"
      sources."buffer-from-1.1.2"
      sources."chalk-4.1.2"
      sources."chalk-template-0.4.0"
      sources."cli-cursor-4.0.0"
      sources."cli-spinners-2.9.2"
      sources."clone-1.0.4"
      sources."color-convert-2.0.1"
      sources."color-name-1.1.4"
      sources."commander-9.5.0"
      sources."defaults-1.0.4"
      sources."has-flag-4.0.0"
      sources."ieee754-1.2.1"
      sources."inherits-2.0.4"
      sources."is-interactive-2.0.0"
      sources."is-unicode-supported-1.3.0"
      (sources."log-symbols-5.1.0" // {
        dependencies = [
          sources."chalk-5.3.0"
        ];
      })
      sources."mimic-fn-2.1.0"
      sources."mkdirp-1.0.4"
      sources."onetime-5.1.2"
      (sources."ora-6.3.1" // {
        dependencies = [
          sources."chalk-5.3.0"
        ];
      })
      sources."readable-stream-3.6.2"
      sources."restore-cursor-4.0.0"
      sources."safe-buffer-5.2.1"
      sources."signal-exit-3.0.7"
      sources."source-map-0.6.1"
      sources."source-map-support-0.5.21"
      sources."stdin-discarder-0.1.0"
      sources."string_decoder-1.3.0"
      sources."strip-ansi-7.1.0"
      sources."supports-color-7.2.0"
      (sources."terser-5.27.2" // {
        dependencies = [
          sources."commander-2.20.3"
        ];
      })
      sources."util-deprecate-1.0.2"
      sources."wcwidth-1.0.1"
    ];
    buildInputs = globalBuildInputs;
    meta = {
    };
    production = false;
    bypassCache = true;
    reconstructLock = true;
  };
in
{
  args = args;
  sources = sources;
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
  nodeDependencies = nodeEnv.buildNodeDependencies (lib.overrideExisting args {
    src = stdenv.mkDerivation {
      name = args.name + "-package-json";
      src = nix-gitignore.gitignoreSourcePure [
        "*"
        "!package.json"
        "!package-lock.json"
      ] args.src;
      dontBuild = true;
      installPhase = "mkdir -p $out; cp -r ./* $out;";
    };
  });
}
