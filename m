Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3AD45FD9EC
	for <lists+devicetree@lfdr.de>; Thu, 13 Oct 2022 15:07:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229836AbiJMNHk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Oct 2022 09:07:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229764AbiJMNHk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Oct 2022 09:07:40 -0400
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com [IPv6:2607:f8b0:4864:20::82b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6233E4E72
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 06:07:24 -0700 (PDT)
Received: by mail-qt1-x82b.google.com with SMTP id g11so930044qts.1
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 06:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eeYmD+9oC4SIyMGPyNxFM02rA4eG+ZxLC97UDG4Gq8Y=;
        b=NT3cxgzW2V6z8ig2J+jbtNONwXtql/qdmGUoZ1dtzTJ1D+gZrHabW6hMsvESuPjY0h
         gT0F+ASyCaHnNW1O6WaQpFyO7f82xYzdmP0jV9IkvsrdeSGFIPuTSwlTT69XgFuHvdiW
         10tLsaK658TpeDKThCI5gjTshTWw8uBd7D06V+vF9tEooWk+TXhauo8314QK161zb5SY
         D/KpIkyX6s824gxsuu9NHyHvfsE/9lPTKLJ4o6F9x+NqemXXWECG5IrVjfI9hTUrKnN/
         MKPIRRpoUPeBI6RwhMX40yNhYKQ9E1wm113c0SlFt75Xo3PK+cskmwAiAklYer5tZrVA
         aZxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eeYmD+9oC4SIyMGPyNxFM02rA4eG+ZxLC97UDG4Gq8Y=;
        b=UVihiG6asiu1dfN8w3EwfS0Plf96n46Z5MsVfnFFE2AjaQXF2BqaVw7kUvglTnmGHJ
         k8LQ9GdGlb/bS/M83k32yF+dvAAqy8wK7kGuMK8eru1YwkAJDbyi9f3bulRZy9ccGXE7
         uhvAL1jV//nm3r8N2Ku6nV2wlCCh+PwgRNaz6hvcnqCUj0h+orNrmECohkxUKVKMp0If
         /NZjA9KpDsDXW/kgtRoEzOLSqs0ALeo4apFolNZ4kWkcpiisoYwt/QXQLGMmHzGMLkNu
         4yFscgAGqTgqjNCs6jQ3M+aOQzWu+P8WJsEh6xHdgVzdFxH+vR5UmrdjpcJ+EtESh9Ey
         3pWw==
X-Gm-Message-State: ACrzQf2iSUuyd1B+ZJ4ipVACfoqn0svBnHVkCHJG3Vsu20vvwbJU8OuJ
        7j8T24vRR4IM9ZHDiWbSmzJRE3CMxHxT2Q==
X-Google-Smtp-Source: AMsMyM42iFf5XxPnHyd/Wz6xLAx/ZabUArY33VPEFQlpEFhHMWcLLlkCgxsxxgdT8TzTcye5eWI25A==
X-Received: by 2002:ac8:5ad0:0:b0:35c:da19:62cf with SMTP id d16-20020ac85ad0000000b0035cda1962cfmr27767770qtd.482.1665666443688;
        Thu, 13 Oct 2022 06:07:23 -0700 (PDT)
Received: from [192.168.1.57] (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id dz18-20020a05620a2b9200b006ee2953fac4sm8473755qkb.136.2022.10.13.06.07.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Oct 2022 06:07:23 -0700 (PDT)
Message-ID: <0118faac-7d50-ddb2-2914-0610b83efe6c@linaro.org>
Date:   Thu, 13 Oct 2022 09:05:11 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH] arm64: dts: k3-j72*: correct compatible for syscon
 entries
Content-Language: en-US
To:     Matt Ranostay <mranostay@ti.com>, vigneshr@ti.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20221012180052.89840-1-mranostay@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221012180052.89840-1-mranostay@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/10/2022 14:00, Matt Ranostay wrote:
> Add missing ti,j721e-system-controller to bus defines in mcu/wakeup
> domains to avoid the following similar warnings from dt-schema checks:
> 
> arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dtb: syscon@40f00000: compatible: ['syscon', 'simple-mfd'] is too short'
> 
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi  | 2 +-
>  arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi  | 2 +-
>  arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> index e5be78a58682..b5c666f98ba4 100644
> --- a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> @@ -35,7 +35,7 @@ k3_reset: reset-controller {
>  	};
>  
>  	mcu_conf: syscon@40f00000 {
> -		compatible = "syscon", "simple-mfd";
> +		compatible = "ti,j721e-system-controller", "syscon", "simple-mfd";

That's a different SoC, so probably you should use dedicated compatible
here.

>  		reg = <0x00 0x40f00000 0x00 0x20000>;
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> index df08724bbf1c..5d9ec221fa34 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> @@ -35,7 +35,7 @@ k3_reset: reset-controller {
>  	};
>  
>  	mcu_conf: syscon@40f00000 {
> -		compatible = "syscon", "simple-mfd";
> +		compatible = "ti,j721e-system-controller", "syscon", "simple-mfd";
>  		reg = <0x0 0x40f00000 0x0 0x20000>;
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> index 4d1bfabd1313..3845d162d3c6 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> @@ -69,7 +69,7 @@ wkup_gpio_intr: interrupt-controller@42200000 {
>  	};
>  
>  	mcu_conf: syscon@40f00000 {
> -		compatible = "syscon", "simple-mfd";
> +		compatible = "ti,j721e-system-controller", "syscon", "simple-mfd";

Here as wekk - it's a j721s2?

>  		reg = <0x0 0x40f00000 0x0 0x20000>;
>  		#address-cells = <1>;
>  		#size-cells = <1>;

Best regards,
Krzysztof

