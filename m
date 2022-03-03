Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0154A4CBFE0
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 15:21:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233996AbiCCOWN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 09:22:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233446AbiCCOWM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 09:22:12 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2E8016C4E1
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 06:21:24 -0800 (PST)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5C7B43F613
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 14:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646317283;
        bh=y7uTWikphm4hE8nuNLlgk9ThCLDXpov9TSiDUN+5jBc=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=sgZfBA0ezUQtCp1TXkfoy7iPqtXESDDIsUxtDeN41bIVcLAnfx0Zprjx77Tskb1ls
         I5nOM3SIWESBqO035j8Z7fSIv+gUkKRY7zj8GEvFK316JS+oL3SED7i01NjcSVilAu
         C14e+3JVhdDAP55VI378XVzJm7MRnmVkIqIQg1pwB7Xs5z9Jsz7yxbQBVoQh2m5WK/
         OmiRgzAR3FR/Jcg6t7ltDkXKSjHymk2O/6kRvgIzj5N0fGUzS2bDuzEw/8j9xL5dmr
         4VHDUjSlcaNstSLN4Ljz4Vb16D5qbj7a4LzZNsVDq078RSd0IvZNmB4QhyhtsETsyv
         UqUPLzMc0wvhA==
Received: by mail-wm1-f70.google.com with SMTP id d8-20020a05600c34c800b0037e3cd6225eso1392482wmq.6
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 06:21:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=y7uTWikphm4hE8nuNLlgk9ThCLDXpov9TSiDUN+5jBc=;
        b=pIzlAJATtQGsj+Nn/ctjTxBUDKC8bpI/+MONeOmpXg4Dty9uK0rMUFVNVeLxfysZ9m
         IZxJAHomy0333TjFftdG3hdHXYTiUSS2V5/rOcm6dr2VsD9GPL3zTFtJ3cETr+baKw0j
         soXYfdak7Z0+zivkolLXTRm8AQhFsMTl0T/rerjgrMZEDR5IMD3vR+C6+7y7JaKlCS8e
         jqP1lzGh/6IgAAihRiBYCVOVcu3Az052HYxriwaOM0SCQAlEt3N71Zf8ucEkOBcX4Een
         u7WdwOZNGie8EOZF1b09kiGz8oE/GUhZdqJX2947jgeKGM3IZH+oq2/yDK9W+4qQPMYM
         5FCQ==
X-Gm-Message-State: AOAM53207kaKDLOqLVIaY59w/e7cNybpRhQFuPyzDfzRvPdXILVVYD3d
        ShdwW9ppmW4FbMETcGFx3V6VNY1ud0auQgkiGxMYiF/kFZa4AQKcQ2atuQvX9ZfN5fv1senbSAL
        VkuiWE+UbBvOtuX8CQXLZj0oinS7RODX/nYfzmFY=
X-Received: by 2002:a05:6000:154b:b0:1f0:4c09:ae5e with SMTP id 11-20020a056000154b00b001f04c09ae5emr2947778wry.610.1646317282213;
        Thu, 03 Mar 2022 06:21:22 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxhPtHr9gcJmYc59U5s93AZ8ArPy0nE62Y61xvNZlkF51fJ21b0mUz7vl+Jb0Br1y6nKOG+Kg==
X-Received: by 2002:a05:6000:154b:b0:1f0:4c09:ae5e with SMTP id 11-20020a056000154b00b001f04c09ae5emr2947763wry.610.1646317281943;
        Thu, 03 Mar 2022 06:21:21 -0800 (PST)
Received: from [192.168.0.137] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id x2-20020a7bc762000000b00380fd1ba4ebsm15353654wmk.9.2022.03.03.06.21.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Mar 2022 06:21:20 -0800 (PST)
Message-ID: <ad09590a-701f-c798-3da5-c3147bf6778b@canonical.com>
Date:   Thu, 3 Mar 2022 15:21:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 4/5] dt-bindings: rtc: convert at91sam9 bindings to
 json-schema
Content-Language: en-US
To:     Sergiu Moga <sergiu.moga@microchip.com>, a.zummo@towertech.it,
        alexandre.belloni@bootlin.com, robh+dt@kernel.org,
        nicolas.ferre@microchip.com, claudiu.beznea@microchip.com
Cc:     linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220303140626.38129-1-sergiu.moga@microchip.com>
 <20220303140626.38129-5-sergiu.moga@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220303140626.38129-5-sergiu.moga@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/03/2022 15:06, Sergiu Moga wrote:
> Convert RTC binding for Atmel/Microchip SoCs to Device Tree Schema
> format.
> 
> Signed-off-by: Sergiu Moga <sergiu.moga@microchip.com>
> ---
>  .../bindings/rtc/atmel,at91sam9-rtc.txt       | 25 --------
>  .../bindings/rtc/atmel,at91sam9-rtc.yaml      | 61 +++++++++++++++++++
>  2 files changed, 61 insertions(+), 25 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt
>  create mode 100644 Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt b/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt
> deleted file mode 100644
> index 3f0e2a5950eb..000000000000
> --- a/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -Atmel AT91SAM9260 Real Time Timer
> -
> -Required properties:
> -- compatible: should be one of the following:
> -	- "atmel,at91sam9260-rtt"
> -	- "microchip,sam9x60-rtt", "atmel,at91sam9260-rtt"
> -- reg: should encode the memory region of the RTT controller
> -- interrupts: rtt alarm/event interrupt
> -- clocks: should contain the 32 KHz slow clk that will drive the RTT block.
> -- atmel,rtt-rtc-time-reg: should encode the GPBR register used to store
> -	the time base when the RTT is used as an RTC.
> -	The first cell should point to the GPBR node and the second one
> -	encode the offset within the GPBR block (or in other words, the
> -	GPBR register used to store the time base).
> -
> -
> -Example:
> -
> -rtt@fffffd20 {
> -	compatible = "atmel,at91sam9260-rtt";
> -	reg = <0xfffffd20 0x10>;
> -	interrupts = <1 4 7>;
> -	clocks = <&clk32k>;
> -	atmel,rtt-rtc-time-reg = <&gpbr 0x0>;
> -};
> diff --git a/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.yaml b/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.yaml
> new file mode 100644
> index 000000000000..5a639c0ec2c0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2022 Microchip Technology, Inc. and its subsidiaries
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/rtc/atmel,at91sam9-rtc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Atmel AT91 RTT Device Tree Bindings
> +
> +allOf:
> +  - $ref: "rtc.yaml#"
> +
> +maintainers:
> +  - Alexandre Belloni <alexandre.belloni@bootlin.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - const: atmel,at91sam9260-rtt
> +      - items:
> +          - const: microchip,sam9x60-rtt
> +          - const: atmel,at91sam9260-rtt
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  atmel,rtt-rtc-time-reg:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description: |
> +      Should encode the GPBR register used to store the time base when the
> +      RTT is used as an RTC. The first cell should point to the GPBR node
> +      and the second one encodes the offset within the GPBR block (or in
> +      other words, the GPBR register used to store the time base).

Instead of describing cells here, you need items with description. I
gave you the example last time, so instead of ignoring it, please
implement it.

> +
> +  start-year: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - atmel,rtt-rtc-time-reg
> +
> +additionalProperties: false

This will disallow any other properties mentioned in rtc.yaml, e.g.
popular wakeup-source. Is it really intended? If core schema is
extended, the driver would need to be updated to support new features.
Any reason to choose such approach? The other way is to remove
start-year and have here unevaluatedProperties.

> +
> +examples:
> +  - |
> +    rtc@fffffd20 {
> +        compatible = "atmel,at91sam9260-rtt";
> +        reg = <0xfffffd20 0x10>;
> +        interrupts = <1 4 7>;

At least one number above looks like known macro, so use it.

> +        clocks = <&clk32k>;
> +        atmel,rtt-rtc-time-reg = <&gpbr 0x0>;
> +    };


Best regards,
Krzysztof
