Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC55762181D
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 16:24:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233878AbiKHPYG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 10:24:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234221AbiKHPYE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 10:24:04 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A55B1EAD3
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 07:24:03 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id be13so21699193lfb.4
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 07:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9YFJOu0XDUwSMV4HlzPsBtzWFfjpA6oXKFrKM34sNA0=;
        b=TXy8CXgst6eQgVXCjpwFhkbq1sDFn8ZQ1os/Paiuc5v/850VElNA4oCq6839IbZyFB
         J+NTJ45xwMHQ0C4wlouPDhWflPkZwkkEnFtPtnY5qZhUQrptjq/cetkG8cba8RBoIOFo
         zwSyeiY10I97lPYfnQyMxGcAqp6P5nhIFk0dojMpiblZkDIVRwGJkbr+8Zp0YdDzpCSi
         MHKsC5yT8eMaP1bvFyrXXMvG5dk0HH6zXVpRfGPUYt82Azp7mTaZK1UfnRLdKGhtzjAw
         RZ6mcZW5K/FRkLA5Q+I5Py+bdE772ldICSEG4Fc/dxm69b1Ba9AXNkPgmbQxJAjvX5C6
         s2mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9YFJOu0XDUwSMV4HlzPsBtzWFfjpA6oXKFrKM34sNA0=;
        b=ZXwZf2HLHtVnqy2sVoAvGphDRxwgCR8VY58iKdN25kn1gD5eF3M69Fnmk+iXWqfRSg
         s3suCRcULB8aNBcKqbgLorln79KX354k4Xfbk47H0dk7Ip/sx3fYnAQl+QgRc1BWiBFo
         D28UCyX2Y8K5P8A/Am6IaPpRI1b5acxwybqdyAvxzLt3EtU3yYd9yCanP2V1bb0e/I+c
         0OBX+O8/R2dH4fOGQZDuN28lffXZBaHKlfM+shvvAJaPccBg8ult2GND+vbUedqgIEQU
         9AXmgjVhjgH0o0lsJNF5KGBHcAwgeWXt4LJ0xF0n3MGVulC72RrJLGow8xkCNhFqg59T
         RnqA==
X-Gm-Message-State: ACrzQf1hu8cuGrg9veyj2wSUf9Fpk1SLuuA+DSpoQ+o7xuiw8J6iNqsm
        hp4TxItth1d9aHklz69/qB7umw==
X-Google-Smtp-Source: AMsMyM5DKj0dhTSmcnruS0GH7qH+RzTX6TXWLtlRXrs7TbVUtjZ13JLB+mXri70h5yH15nHfxXzhuQ==
X-Received: by 2002:a05:6512:54a:b0:4af:b4ac:c2bb with SMTP id h10-20020a056512054a00b004afb4acc2bbmr18867249lfl.650.1667921041714;
        Tue, 08 Nov 2022 07:24:01 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id c20-20020a056512075400b0048a9e18ae67sm1817239lfs.84.2022.11.08.07.24.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 07:24:01 -0800 (PST)
Message-ID: <f2feffc1-2845-662b-b0ad-8f75e74edc03@linaro.org>
Date:   Tue, 8 Nov 2022 16:24:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 2/3] arm: dts: nuvoton: npcm7xx: add sgpio node
Content-Language: en-US
To:     Jim Liu <jim.t90615@gmail.com>, JJLIU0@nuvoton.com,
        KWLIU@nuvoton.com, linus.walleij@linaro.org, brgl@bgdev.pl,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, openbmc@lists.ozlabs.org
References: <20221108092840.14945-1-JJLIU0@nuvoton.com>
 <20221108092840.14945-3-JJLIU0@nuvoton.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221108092840.14945-3-JJLIU0@nuvoton.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/11/2022 10:28, Jim Liu wrote:
> Add the SGPIO controller to the NPCM750 devicetree
> 
> Signed-off-by: Jim Liu <JJLIU0@nuvoton.com>
> ---
> Changes for v2:
>    - modify dts node 
> ---
>  arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi | 30 +++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi b/arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi
> index c7b5ef15b716..9cac60734b57 100644
> --- a/arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi
> +++ b/arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi
> @@ -330,6 +330,36 @@
>  				status = "disabled";
>  			};
>  
> +			sgpio1: sgpio@101000 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +				compatible = "nuvoton,npcm750-sgpio";
> +				reg = <0x101000 0x200>;
> +				clocks = <&clk NPCM7XX_CLK_APB3>;
> +				interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
> +				bus-frequency = <16000000>;
> +				gpio-controller;
> +				#gpio-cells = <2>;
> +				pinctrl-names = "default";
> +				pinctrl-0 = <&iox1_pins>;
> +				nin_gpios = <64>;
> +				nout_gpios = <64>;
> +				status = "disabled";

Why? What is missing from external resources?

> +			};
> +
> +			sgpio2: sgpio@102000 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +				compatible = "nuvoton,npcm750-sgpio";
> +				reg = <0x102000 0x200>;
> +				clocks = <&clk NPCM7XX_CLK_APB3>;
> +				interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
> +				bus-frequency = <16000000>;
> +				gpio-controller;
> +				#gpio-cells = <2>;
> +				pinctrl-names = "default";
> +				pinctrl-0 = <&iox2_pins>;
> +				nin_gpios = <64>;
> +				nout_gpios = <64>;
> +				status = "disabled";

Why? What is missing from external resources?


Best regards,
Krzysztof

