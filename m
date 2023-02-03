Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F7BD689132
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 08:47:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231510AbjBCHrq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 02:47:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230496AbjBCHrp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 02:47:45 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FF5F206BC
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 23:47:44 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id k16so3196786wms.2
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 23:47:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GlzCgLEPZ69auNVfPwbs/k4QDSpIwTCL3k0EZ2tSlBM=;
        b=PAIAnE2BATdpoT1ce0rQ28Kakyc6oP+fK5eZ7MZGwg6pO0XkkLHR7K7O8G78u6CYss
         UNxfDmBs6rd+BrxkIDHyWrTk3BcLUe/pcMgDWNjxUnak4ofjUgNunQDfhh0TQHpCLW6H
         3yp5orDjScmQzNszwo+a6N4OVYlTAIRrdVlU3KmDxhQB9A50lCN4NsStbBLQoj8MCs+Q
         oDqrHrRuQowpbtCJ2S/oITMD256IM2nFXK7xBqu+f/AyTF4xmi981Ck7ZcZKju5k6b9H
         2w4uiTB1MX8Y9HQZPhic1E8RudHoexDIQtJGEBYVlsPyrrlAqcGeGpEtspmNYs4m5oTm
         7sZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GlzCgLEPZ69auNVfPwbs/k4QDSpIwTCL3k0EZ2tSlBM=;
        b=FbU/7/Kgrsi6iUx1FOj2QwznZy+Bl37zKJ3eqjnp561lGXdkIc44fpqvsmMITcb2ij
         us0YxrIQ8W2LLtpWDwWc3hK5t9K+JGc+1vWpsmbVnJqb4dbaS1KWA956Qs/Z12Suci74
         mDYqZ0a72WK/NSVw9TGqqjygKxWZT0TazFrmPkwo9xqJebDEJuQGjJhu7Ihm3fCZmNIz
         4c0sVXCVqyb/XmDOj59JSI4Oc4L6EIkuCXgdU41b2Lh3Fed9Yjz2VT5Ow4mDoRvjWK59
         TEBJO+tPtydlhwYIhLIlPx2b9tlhQo1DqvJydg/P7xGpY/19Xe8PVXBLaW4mGFyKmoCf
         4k2g==
X-Gm-Message-State: AO0yUKVPcTbY45zzjVVFy4Pap/OoYe+J0P5OlSLYPOBNQBgbFfXNES62
        6tQK+0PCrPANzDooRIrz9xjc7Q==
X-Google-Smtp-Source: AK7set8b6KYrDgJsDUasCRzNkPZH+h6KVrjKEJhah8oImVOIgUZnGx02Z+tXqXj/z7YbwM/PbXFd/w==
X-Received: by 2002:a05:600c:c06:b0:3dc:5a7c:f8ad with SMTP id fm6-20020a05600c0c0600b003dc5a7cf8admr10740538wmb.21.1675410462746;
        Thu, 02 Feb 2023 23:47:42 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id j11-20020a5d604b000000b002b57bae7174sm1347095wrt.5.2023.02.02.23.47.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 23:47:42 -0800 (PST)
Message-ID: <e7ad1251-12b5-4161-8b51-f51ee77d0eb2@linaro.org>
Date:   Fri, 3 Feb 2023 08:47:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 4/9] ASoC: dt-bindings: meson: convert axg tdm formatters
 to schema
Content-Language: en-US
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
References: <20230202183653.486216-1-jbrunet@baylibre.com>
 <20230202183653.486216-5-jbrunet@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230202183653.486216-5-jbrunet@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/02/2023 19:36, Jerome Brunet wrote:
> Convert the DT binding documentation for the Amlogic tdm formatters to
> schema.
> 
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
>  .../sound/amlogic,axg-tdm-formatters.txt      | 36 --------
>  .../sound/amlogic,axg-tdm-formatters.yaml     | 90 +++++++++++++++++++
>  2 files changed, 90 insertions(+), 36 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.txt b/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.txt
> deleted file mode 100644
> index 5996c0cd89c2..000000000000
> --- a/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.txt
> +++ /dev/null
> @@ -1,36 +0,0 @@
> -* Amlogic Audio TDM formatters
> -
> -Required properties:
> -- compatible: 'amlogic,axg-tdmin' or
> -	      'amlogic,axg-tdmout' or
> -	      'amlogic,g12a-tdmin' or
> -	      'amlogic,g12a-tdmout' or
> -	      'amlogic,sm1-tdmin' or
> -	      'amlogic,sm1-tdmout
> -- reg: physical base address of the controller and length of memory
> -       mapped region.
> -- clocks: list of clock phandle, one for each entry clock-names.
> -- clock-names: should contain the following:
> -  * "pclk"     : peripheral clock.
> -  * "sclk"     : bit clock.
> -  * "sclk_sel" : bit clock input multiplexer.
> -  * "lrclk"    : sample clock
> -  * "lrclk_sel": sample clock input multiplexer
> -
> -Optional property:
> -- resets: phandle to the dedicated reset line of the tdm formatter.
> -
> -Example of TDMOUT_A on the S905X2 SoC:
> -
> -tdmout_a: audio-controller@500 {
> -	compatible = "amlogic,axg-tdmout";
> -	reg = <0x0 0x500 0x0 0x40>;
> -	resets = <&clkc_audio AUD_RESET_TDMOUT_A>;
> -	clocks = <&clkc_audio AUD_CLKID_TDMOUT_A>,
> -		 <&clkc_audio AUD_CLKID_TDMOUT_A_SCLK>,
> -		 <&clkc_audio AUD_CLKID_TDMOUT_A_SCLK_SEL>,
> -		 <&clkc_audio AUD_CLKID_TDMOUT_A_LRCLK>,
> -		 <&clkc_audio AUD_CLKID_TDMOUT_A_LRCLK>;
> -	clock-names = "pclk", "sclk", "sclk_sel",
> -		      "lrclk", "lrclk_sel";
> -};
> diff --git a/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.yaml b/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.yaml
> new file mode 100644
> index 000000000000..f618724411de
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.yaml
> @@ -0,0 +1,90 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-formatters.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Amlogic Audio AXG TDM formatters
> +
> +maintainers:
> +  - Jerome Brunet <jbrunet@baylibre.com>
> +
> +allOf:
> +  - $ref: component-common.yaml#
> +
> +properties:
> +  $nodename:
> +    pattern: "^audio-controller@.*"

Drop.

> +
> +  compatible:
> +    oneOf:

Drop oneOf.

> +      - enum:
> +          - amlogic,g12a-tdmout
> +          - amlogic,sm1-tdmout
> +          - amlogic,axg-tdmout
> +          - amlogic,g12a-tdmin
> +          - amlogic,sm1-tdmin
> +          - amlogic,axg-tdmin
> +
> +  clocks:
> +    items:
> +      - description: Peripheral clock
> +      - description: Bit clock
> +      - description: Bit clock input multiplexer
> +      - description: Sample clock
> +      - description: Sample clock input multiplexer
> +
> +  clock-names:
> +    items:
> +      - const: pclk
> +      - const: sclk
> +      - const: sclk_sel
> +      - const: lrclk
> +      - const: lrclk_sel
> +
> +  reg:
> +    maxItems: 1

Missing property resets

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +
> +if:

Put it under allOf.

> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - amlogic,g12a-tdmin
> +          - amlogic,sm1-tdmin
> +          - amlogic,g12a-tdmout
> +          - amlogic,sm1-tdmout
> +then:
> +  properties:
> +    resets:

Properties are defined in top-level. You can disallow it for other variants.

> +      items:
> +        - description: Dedicated device reset line
> +
> +  required:
> +    - resets
Best regards,
Krzysztof

