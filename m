Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B57B06C9345
	for <lists+devicetree@lfdr.de>; Sun, 26 Mar 2023 11:04:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229985AbjCZJEF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 05:04:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbjCZJED (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 05:04:03 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 319136599
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 02:04:02 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id b20so24275760edd.1
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 02:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679821440;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5ADOo1swOMZAApG1sJ5D8FD/SsrUh56rCS0SOXmgrMw=;
        b=sqNiJ3VR9UaG0pX+u/zWWR1EUnXUCwY25xepCTZ/XH+mPM5yx5ghWcP7NiDe9pwa68
         +midTnVtd7jAVRg04fCqgq7H0A3boJFAy8anp33ePfYh7LBltOgfsuHz+TV1ja1CDG8q
         1gbWGtwT1vhqUFQA7wDqlslzFt31M9g2uSVfqB4R2mDKQX7b18r1kyQ3Ee19sPqIvu4G
         7C9fNznHLVf3vohZZrqqfh+QgFFvPZb/0yZumbQYjDFkwbUu3IB1DKcevIuCSXmWiCmn
         rxP0rQCSCWa1R8HcgIoppJ2rL0kinxnl5abB+iBCrFnS6LWUxTa/ZdVBnnfe8u7Pzz5d
         iKvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679821440;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5ADOo1swOMZAApG1sJ5D8FD/SsrUh56rCS0SOXmgrMw=;
        b=MzVnx71gxQgbfFapJ/vDzlSov/EP5XbmQK//ATc/wJuzKfHwdpG5P3qbCHa+oyScG5
         xP5wiuWL2LavX5AJp8waPAI10MUbLBKH07A/38J7g2LOWS/ZrBTfGu44fJ8XyN3X2AR0
         ono25lNO/Ej5tknInpvGKq7QBKG6ipb1vDLKlk+HdNgaih4BzxCb7YvSDAlE6wxDPNDJ
         X2OCbAegFNREvJhOYe1ED3WGMZg7syqmnxhmqXV2r4G7V9jERHwpJ6XG7iW8NEK+4d4v
         vgbBVKvaq2qHo7sX3lBuehTHkKN2Z0O/it61eSeK8mWR5AGxZO7hyo3ykdiBDiIykTHC
         jfXw==
X-Gm-Message-State: AAQBX9c5MFbIaIQhoriJfrxykq+FZ6KfW2Wzsti7wV0yW0CiDnIGsLYT
        LF+4qmeWtFPOw4wLmSW5xegO6gJpz3TOq2ZKWj8=
X-Google-Smtp-Source: AKy350YvWdtq7e+R6TE3g24gLWl0yvm9dLpLeMa2ExokNeday4YyLr4tMpGn9Af2PY2wwttoQ/x2wA==
X-Received: by 2002:a17:906:3a45:b0:932:8dc:5bf4 with SMTP id a5-20020a1709063a4500b0093208dc5bf4mr8685664ejf.61.1679821440665;
        Sun, 26 Mar 2023 02:04:00 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:6cac:926d:a4f2:aa09? ([2a02:810d:15c0:828:6cac:926d:a4f2:aa09])
        by smtp.gmail.com with ESMTPSA id ch19-20020a170906c2d300b00933d64cd447sm10080887ejb.121.2023.03.26.02.03.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Mar 2023 02:04:00 -0700 (PDT)
Message-ID: <15d60f3a-a5ec-53de-49da-d81fa105d677@linaro.org>
Date:   Sun, 26 Mar 2023 11:03:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2] dt-bindings: convert ac97 controller child node codec
 to dtschema
Content-Language: en-US
To:     Archana <craechal@gmail.com>, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org
References: <20230325203858.5981-1-craechal@gmail.com>
 <20230325204944.7151-1-craechal@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230325204944.7151-1-craechal@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/03/2023 21:49, Archana wrote:

If you are sending it as part of GSoC or other mentorship programme,
please follow exactly the instructions you got. This way we will avoid
trivial mistakes.

> Convert codec bindings of an ac97 controller child node describing ac97 codecs to DT schema.
> Update example during conversion.

Use subject prefixes matching the subsystem (which you can get for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching).

> 
> Signed-off-by: Archana <craechal@gmail.com>

Usually we expect someones full used name and pseudonyms are not
allowed. Are you sure this is your full used name?

> ---
> v1->v2:
> 1. Add newline at end of file
> 
>  .../devicetree/bindings/sound/ac97-bus.txt    | 32 ----------
>  .../devicetree/bindings/sound/ac97-bus.yaml   | 60 +++++++++++++++++++
>  2 files changed, 60 insertions(+), 32 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/ac97-bus.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/ac97-bus.yaml

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.

> 
> diff --git a/Documentation/devicetree/bindings/sound/ac97-bus.txt b/Documentation/devicetree/bindings/sound/ac97-bus.txt
> deleted file mode 100644
> index 103c428f2595..000000000000
> --- a/Documentation/devicetree/bindings/sound/ac97-bus.txt
> +++ /dev/null
> @@ -1,32 +0,0 @@
> -Generic AC97 Device Properties
> -
> -This documents describes the devicetree bindings for an ac97 controller child
> -node describing ac97 codecs.
> -
> -Required properties:
> --compatible : Must be "ac97,vendor_id1,vendor_id2
> -	      The ids shall be the 4 characters hexadecimal encoding, such as
> -	      given by "%04x" formatting of printf
> --reg	    : Must be the ac97 codec number, between 0 and 3
> -
> -Example:
> -ac97: sound@40500000 {
> -	compatible = "marvell,pxa270-ac97";
> -	reg = < 0x40500000 0x1000 >;
> -	interrupts = <14>;
> -	reset-gpios = <&gpio 95 GPIO_ACTIVE_HIGH>;
> -	#sound-dai-cells = <1>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = < &pinctrl_ac97_default >;
> -	clocks = <&clks CLK_AC97>, <&clks CLK_AC97CONF>;
> -	clock-names = "AC97CLK", "AC97CONFCLK";
> -
> -	#address-cells = <1>;
> -	#size-cells = <0>;
> -	audio-codec@0 {
> -		reg = <0>;
> -		compatible = "ac97,574d,4c13";
> -		clocks = <&fixed_wm9713_clock>;
> -		clock-names = "ac97_clk";
> -	}
> -};
> diff --git a/Documentation/devicetree/bindings/sound/ac97-bus.yaml b/Documentation/devicetree/bindings/sound/ac97-bus.yaml
> new file mode 100644
> index 000000000000..4d86d557c303
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/ac97-bus.yaml
> @@ -0,0 +1,60 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/ac97-bus.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Generic AC97 Device Properties
> +
> +maintainers:
> +  - Archana <craechal@gmail.com>
> +
> +description: |
> +  This documents describes the devicetree bindings for an ac97 controller child 
> +  node describing ac97 codecs.

Drop "This documents describes the devicetree bindings for an " but
describe hardware instead.

> +
> +allOf:
> +  - $ref: dai-common.yaml#
> +
> +properties:
> +  compatible:
> +    description:
> +      Must be "ac97,vendor_id1,vendor_id2". The ids shall be the 4 characters hexadecimal encoding, such as
> +      given by "%04x" formatting of printf
> +    pattern: "^ac97,[A-Fa-f0-9]{4},[A-Fa-f0-9]{4}$"
> +
> +  reg:
> +    description: Must be the ac97 codec number, between 0 and 3

Don't repeat constraints in free form text.

> +    minimum: 0
> +    maximum: 3
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/clock/pxa-clock.h>
> +    ac97: sound@40500000 {
> +      compatible = "marvell,pxa270-ac97";
> +      reg = < 0x40500000 0x1000 >;

Drop redundant spaces (use coding style matching DTS).

> +      interrupts = <14>;
> +      reset-gpios = <&gpio 95 GPIO_ACTIVE_HIGH>;
> +      #sound-dai-cells = <1>;
> +      pinctrl-names = "default";
> +      pinctrl-0 = < &pinctrl_ac97_default >;
> +      clocks = <&clks CLK_AC97>, <&clks CLK_AC97CONF>;
> +      clock-names = "AC97CLK", "AC97CONFCLK";
> +
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      audio-codec@0 {
> +        reg = <0>;
> +        compatible = "ac97,574d,4c13";
> +        clocks = <&fixed_wm9713_clock>;
> +        clock-names = "ac97_clk";

Please put compatible first in the list of properties (and follow the
same order in "required"). It's the most important piece, so we want it
to be the first to see. It also follows the convention of DTS, where
compatible is expected to be first.

> +      };
> +    };

Best regards,
Krzysztof

