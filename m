Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2F5F6498CE
	for <lists+devicetree@lfdr.de>; Mon, 12 Dec 2022 07:02:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230427AbiLLGCC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 01:02:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231194AbiLLGB4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 01:01:56 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A3FE38B2
        for <devicetree@vger.kernel.org>; Sun, 11 Dec 2022 22:01:55 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id q17-20020a17090aa01100b002194cba32e9so14522705pjp.1
        for <devicetree@vger.kernel.org>; Sun, 11 Dec 2022 22:01:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CtZbo9Uwr6mAiSS4K9joB67mf1cSBtb5VzmSLOnn2BA=;
        b=feGDuEqDfW7doSqcTAYoSzv+D7I72/VtlAP9SODJ0tmxCS82qjFyPUpdAUHMt6tMy8
         kmKjYZcnuQw23DqrQxUbYDreyr0qKhDF30tJKb/H0zThXZXWmOdMNQqL+8vtCjTVrzpf
         /+fDjiuHjCPjmd6qXQyQvxaqXqIOtoqrw4lF9nR1hBuCJcFBdaGPTCUEYir4n35JnuUg
         ZQvXxBiVf73Zyj8nGG3yzL5mwNzSVlGHCNuTbiQTxO2sltAjyFdzQbXSKyV3taP/Ohy7
         z4aauu+sNzrZJWy9nZaH7UonI8WKyvnnfrr55oqzhZQek7MK5UZvLx4HHDaSlSUS8Djw
         ahWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CtZbo9Uwr6mAiSS4K9joB67mf1cSBtb5VzmSLOnn2BA=;
        b=UQdbUjtMoc12JWMkYJyF2T7B2NmDDGFAZwy0QbReSknxsyVjTZzhCHq5xWEW5QPucP
         UTvyPGfVw/c5hZxMmwmmRFMBstOY81TT+0GZSEkoxDL7G+QZ73FwDYuYMSHaa8cXYYxz
         mCmvAJLMrwTKFfuFfECzvh93s4581VGnNOVBTs56wU6n6Opg19/0aovOVFT02rN2d5Ob
         /wQseXKLWbTOJyNZgJLkmu0oywA3DXq8Ly/I0JwPFeVH4nWNO66Xv4XOZX0CzKGKgi9M
         Ik8rHbYU53SzFkGNnmJn5E5VWc5wWEX/5iU5CdK56zKBHjT4oPylZ9oCB8mhVDlBQTGf
         qi/Q==
X-Gm-Message-State: ANoB5pmqV9U625rGqg7RpA1qWmWFDnAEFTsi4l3Q1a0fqH4Tebe+QhD2
        YyfBOv+/MEBWrupmG/aAZHU2HQ==
X-Google-Smtp-Source: AA0mqf5+eaVtJ2ibhZx/7OHXPEfud2Yg6uvPqQP6gHqOu8YKIq3xFBm7jDraoJAlecduL321ZZVFxw==
X-Received: by 2002:a17:902:e311:b0:189:dc9e:cef3 with SMTP id q17-20020a170902e31100b00189dc9ecef3mr13725691plc.16.1670824915071;
        Sun, 11 Dec 2022 22:01:55 -0800 (PST)
Received: from localhost ([122.172.87.149])
        by smtp.gmail.com with ESMTPSA id e14-20020a17090301ce00b0017fe9b038fdsm5344579plh.14.2022.12.11.22.01.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Dec 2022 22:01:54 -0800 (PST)
Date:   Mon, 12 Dec 2022 11:31:51 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Viresh Kumar <vireshk@kernel.org>,
        Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: spear: drop 0x from unit address
Message-ID: <20221212060151.p7ziztnxny42pi4n@vireshk-i7>
References: <20221210113347.63939-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221210113347.63939-1-krzysztof.kozlowski@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10-12-22, 12:33, Krzysztof Kozlowski wrote:
> By coding style, unit address should not start with 0x.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/spear300.dtsi | 2 +-
>  arch/arm/boot/dts/spear310.dtsi | 2 +-
>  arch/arm/boot/dts/spear320.dtsi | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/spear300.dtsi b/arch/arm/boot/dts/spear300.dtsi
> index b39bd5a22627..f1135e887f7b 100644
> --- a/arch/arm/boot/dts/spear300.dtsi
> +++ b/arch/arm/boot/dts/spear300.dtsi
> @@ -46,7 +46,7 @@ sdhci@70000000 {
>  			status = "disabled";
>  		};
>  
> -		shirq: interrupt-controller@0x50000000 {
> +		shirq: interrupt-controller@50000000 {
>  			compatible = "st,spear300-shirq";
>  			reg = <0x50000000 0x1000>;
>  			interrupts = <28>;
> diff --git a/arch/arm/boot/dts/spear310.dtsi b/arch/arm/boot/dts/spear310.dtsi
> index 77570833d46b..ce08d8820940 100644
> --- a/arch/arm/boot/dts/spear310.dtsi
> +++ b/arch/arm/boot/dts/spear310.dtsi
> @@ -34,7 +34,7 @@ fsmc: flash@44000000 {
>  			status = "disabled";
>  		};
>  
> -		shirq: interrupt-controller@0xb4000000 {
> +		shirq: interrupt-controller@b4000000 {
>  			compatible = "st,spear310-shirq";
>  			reg = <0xb4000000 0x1000>;
>  			interrupts = <28 29 30 1>;
> diff --git a/arch/arm/boot/dts/spear320.dtsi b/arch/arm/boot/dts/spear320.dtsi
> index b12474446a48..56f141297ea3 100644
> --- a/arch/arm/boot/dts/spear320.dtsi
> +++ b/arch/arm/boot/dts/spear320.dtsi
> @@ -49,7 +49,7 @@ sdhci@70000000 {
>  			status = "disabled";
>  		};
>  
> -		shirq: interrupt-controller@0xb3000000 {
> +		shirq: interrupt-controller@b3000000 {
>  			compatible = "st,spear320-shirq";
>  			reg = <0xb3000000 0x1000>;
>  			interrupts = <30 28 29 1>;

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
