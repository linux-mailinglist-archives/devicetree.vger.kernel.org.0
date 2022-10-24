Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FD2960B470
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 19:44:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230290AbiJXRoX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 13:44:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233324AbiJXRnt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 13:43:49 -0400
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com [IPv6:2607:f8b0:4864:20::f2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC43513E02
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 09:19:09 -0700 (PDT)
Received: by mail-qv1-xf2e.google.com with SMTP id ml12so5779631qvb.0
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 09:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J2VRpuKdojQ+NO71XeVe/4aq9kyu5s+RF8YH+GVAGQk=;
        b=IgBKvN1Jz/4Om5ZnD8LEG/AvOKunpdCr3euP9oqM6bmg5l/MfdL1e+EUe978PJUV3l
         OcAk9hXYtAIOPBLnZExK8FyE3rjaa+51VC/YMvIc0Vp/sWd1XYy3mioagfIgptoNjE+F
         LG8YdrfTvaZxqnbv74tP/LsvD5MGU+1b1fw+u0NpsuebQn/sEgIek/1mHGYkJ0/kCTwT
         EWMDPu/TqoUlJWkWP8fKnLjzaz0aw+s/ilLaguVTBMUfvUbTGbZS5+OAukId6KiKxE1w
         /QR/I2p5sKtb1anfyOUmQ+2CsDSQYf5yb7IKo/d5LLN+g4CkQg8Zn3bVZcSKAg+65/nG
         CkTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J2VRpuKdojQ+NO71XeVe/4aq9kyu5s+RF8YH+GVAGQk=;
        b=U+Tf867yzTjDS6cehA80ZBQjrlu1lT4ufugxyQlvCLAyrZazqG4DWAKzSbpuTaed0/
         ti5eNjuP5XAQ3uqc3isJZ+xYoGNBOnPcbiOgGRTeT8ajf/nj7B71w9vw49HMyKciApGD
         okAN6wMG9caLpeO+w8C7eR/iS6r6Mh3UYxL/DHIti/+QEVbdfB2YrdQEUvqDbZhVveaD
         na76ydXbZ8Ln2p6/sp2Xft75w76l94K5yhuV3txc209u7Wxi6LFpbYp2QxOjd6HuotTz
         HHM7epqBr6QY0jx+SnFTq9rx0mNxvw8e08kx+Wf4ggGR3QKN3q6FqQfrvN7W4VRmgcCJ
         VftA==
X-Gm-Message-State: ACrzQf0Fc+fYyOeGT9XDgl7Skq4+4HG6v2ooHEsIt7JSD/nZSjXv/vPE
        +fr+theyKRZWTAiibcKuCBBv/p1bTbPAcA==
X-Google-Smtp-Source: AMsMyM55U0cD1Ha6tf4mZ5xI5fwicQGYnOZXrkGxrJF05zv1atvqfdCYZoOGiWZw6ZuF+mkbGEquyA==
X-Received: by 2002:a0c:e087:0:b0:4b8:ff9:f760 with SMTP id l7-20020a0ce087000000b004b80ff9f760mr19887457qvk.52.1666628251206;
        Mon, 24 Oct 2022 09:17:31 -0700 (PDT)
Received: from [192.168.1.8] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id e2-20020ac86702000000b0039467aadeb8sm194523qtp.13.2022.10.24.09.17.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 09:17:30 -0700 (PDT)
Message-ID: <e1d6f611-3d43-c9a5-fa03-a3376f4916ba@linaro.org>
Date:   Mon, 24 Oct 2022 12:17:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCHv2] arm: dts: socfpga: align mmc node names with dtschema
Content-Language: en-US
To:     Dinh Nguyen <dinguyen@kernel.org>, robh+dt@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
References: <20221024152110.197041-1-dinguyen@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024152110.197041-1-dinguyen@kernel.org>
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

On 24/10/2022 11:21, Dinh Nguyen wrote:
> dwmmc0@ff704000: $nodename:0: 'dwmmc0@ff704000' does not match '^mmc(@.*)?$'
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
> v2: put back mmc0 for "linux,default-trigger"
> ---
>  arch/arm/boot/dts/socfpga.dtsi                      | 2 +-
>  arch/arm/boot/dts/socfpga_arria10.dtsi              | 2 +-
>  arch/arm/boot/dts/socfpga_arria5.dtsi               | 2 +-
>  arch/arm/boot/dts/socfpga_arria5_socdk.dts          | 2 +-
>  arch/arm/boot/dts/socfpga_cyclone5.dtsi             | 2 +-
>  arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts  | 2 +-
>  arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts | 2 +-
>  arch/arm/boot/dts/socfpga_cyclone5_mcv.dtsi         | 2 +-
>  arch/arm/boot/dts/socfpga_cyclone5_socdk.dts        | 2 +-
>  arch/arm/boot/dts/socfpga_cyclone5_sockit.dts       | 2 +-
>  arch/arm/boot/dts/socfpga_cyclone5_sodia.dts        | 2 +-
>  arch/arm/boot/dts/socfpga_vt.dts                    | 2 +-
>  12 files changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/socfpga.dtsi b/arch/arm/boot/dts/socfpga.dtsi
> index 2459f3cd7dd9..57a5d6c924b1 100644
> --- a/arch/arm/boot/dts/socfpga.dtsi
> +++ b/arch/arm/boot/dts/socfpga.dtsi
> @@ -755,7 +755,7 @@ l3regs@0xff800000 {
>  			reg = <0xff800000 0x1000>;
>  		};
>  
> -		mmc: dwmmc0@ff704000 {
> +		mmc: mmc@ff704000 {
>  			compatible = "altr,socfpga-dw-mshc";
>  			reg = <0xff704000 0x1000>;
>  			interrupts = <0 139 4>;
> diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
> index 4370e3cbbb4b..a06211fcb5c3 100644
> --- a/arch/arm/boot/dts/socfpga_arria10.dtsi
> +++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
> @@ -656,7 +656,7 @@ L2: cache-controller@fffff000 {
>  			arm,shared-override;
>  		};
>  
> -		mmc: dwmmc0@ff808000 {
> +		mmc: mmc@ff808000 {
>  			#address-cells = <1>;
>  			#size-cells = <0>;
>  			compatible = "altr,socfpga-dw-mshc";
> diff --git a/arch/arm/boot/dts/socfpga_arria5.dtsi b/arch/arm/boot/dts/socfpga_arria5.dtsi
> index 22dbf07afcff..9ce4b4979ecb 100644
> --- a/arch/arm/boot/dts/socfpga_arria5.dtsi
> +++ b/arch/arm/boot/dts/socfpga_arria5.dtsi
> @@ -18,7 +18,7 @@ osc1 {
>  			};
>  		};
>  
> -		mmc0: dwmmc0@ff704000 {
> +		mmc: mmc@ff704000 {
>  			broken-cd;
>  			bus-width = <4>;
>  			cap-mmc-highspeed;
> diff --git a/arch/arm/boot/dts/socfpga_arria5_socdk.dts b/arch/arm/boot/dts/socfpga_arria5_socdk.dts
> index 7f5458d8fccc..40f12232c150 100644
> --- a/arch/arm/boot/dts/socfpga_arria5_socdk.dts
> +++ b/arch/arm/boot/dts/socfpga_arria5_socdk.dts
> @@ -107,7 +107,7 @@ rtc@68 {
>  	};
>  };
>  
> -&mmc0 {
> +&mmc {

This does not look related and was not mentioned in commit msg,

Best regards,
Krzysztof

