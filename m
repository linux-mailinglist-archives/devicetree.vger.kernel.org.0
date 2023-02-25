Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D96726A2A92
	for <lists+devicetree@lfdr.de>; Sat, 25 Feb 2023 16:49:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229627AbjBYPtz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Feb 2023 10:49:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229491AbjBYPty (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Feb 2023 10:49:54 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36C7E1631D
        for <devicetree@vger.kernel.org>; Sat, 25 Feb 2023 07:49:53 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id r7so2090556wrz.6
        for <devicetree@vger.kernel.org>; Sat, 25 Feb 2023 07:49:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3v+zLEEMVRDjjEuJHvgcVxK9taA8dbVQ4AG71wFyhd8=;
        b=iAcnvkTybOAGhfeTZ98pJgGwm09c2rzMyejsXjbCmOubMcuRRq4g2r9s1pvbur9gl7
         pE6YXM96hmrwJq/ko75FauOiLQSqb+7yRnpgOI1yQgco4r8pi/JMJ7EqZ+Y6AEo6VzTI
         vYaTelrDwVKHcVI3nB3sDMOIx/HqsyYxhP7UNaa1DQNR2NFpN/Ey1rFHUjFv5aglIS3X
         6WKrxhtZSo2NCoZRiJ00U9let6vKWHNEVfflPD5RJ/TJcUkRujCC4pJZrW3Kb6J7I00q
         7WSVr+YmCazB5u5rRMJfyMS89MSvzmEqyDFJcmxlHZaznVwbamg0uYPVkdT1RMBdmWlg
         abrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3v+zLEEMVRDjjEuJHvgcVxK9taA8dbVQ4AG71wFyhd8=;
        b=GCMnYnw5/K7K7p3zbLYdInOB2JhVzGZkcLpAEi4+GPYRpdjHu4EUhM4UqYit4k9Bk6
         kRVeXnCu4MI6leYqJhkjjW/ifv5i8RqGbBjrBVao7Le5y+nGDr6wUfhoSEO5J6Fo+D2I
         QJvREgXObGWAFK8jL+seUiKUk1cpoAnDddqtNpyCrVC5aYEYu+dXe4U65Wvu5X/IZGWz
         y1B6cuEuulVWu+fUerN+K4Av37axEj28oc/SDbeGRc+2MjUY+sRQiRbmy84ne0IN2klM
         Uq/iy8H2444vr4KSoN9xHotmewHc23s8E1o6ESQeL2bC2omHWbyBEsYTmsP2azatcoZ4
         m4KQ==
X-Gm-Message-State: AO0yUKU2oYFpKGfnTKy9Bhm3hKFQYLV91Fvd2Vxjhc8pjI3R7oZzDgE7
        Os0qoXTRnMPEURiYMS1WNrc7LQ==
X-Google-Smtp-Source: AK7set929uUZu06FWfMnuHq4k0yuaz+Z4TLK2zhFL3exCt+2HncnXppAr3dfI/loPhSQm8twUZSFnw==
X-Received: by 2002:a05:6000:1d95:b0:2c7:e48:8ca3 with SMTP id bk21-20020a0560001d9500b002c70e488ca3mr1999903wrb.0.1677340191706;
        Sat, 25 Feb 2023 07:49:51 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id w9-20020adfee49000000b002c7107ce17fsm2173691wro.3.2023.02.25.07.49.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Feb 2023 07:49:51 -0800 (PST)
Message-ID: <af766b65-ae00-e2e9-09f9-9ddf6d9d5e21@linaro.org>
Date:   Sat, 25 Feb 2023 16:49:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] ARM64: dts: debix model-a: enable hdmi
Content-Language: en-US
To:     Hardevsinh Palaniya <hardevsinh.palaniya@siliconsignals.io>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
Cc:     "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        "linux-imx@nxp.com" <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <MA0PR01MB7145D1E9382C7F91197B259FFFA99@MA0PR01MB7145.INDPRD01.PROD.OUTLOOK.COM>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <MA0PR01MB7145D1E9382C7F91197B259FFFA99@MA0PR01MB7145.INDPRD01.PROD.OUTLOOK.COM>
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

On 25/02/2023 15:25, Hardevsinh Palaniya wrote:
> From: HardevSinh Palaniya <hardevsinh.palaniya@siliconsignals.io>
> Date: Sat, 25 Feb 2023 19:38:20 +0530
> Subject: [PATCH] arm64: dts: debix model-a: enable hdmi

Your patch is corrupted... See above.

> 
> Enable HDMI support for Polyhex Debix Model A Board

Use subject prefixes matching the subsystem (which you can get for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching).

> 
> Signed-off-by: HardevSinh Palaniya <hardevsinh.palaniya@siliconsignals.io>
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> index 2876d18f2a38..bc2515113ae3 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> @@ -45,6 +45,43 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
>  	};
>  };
>  
> +

No need for two blank lines, but one.


> +&irqsteer_hdmi {
> +	status = "okay";
> +};
> +
> +&hdmi_blk_ctrl {
> +	status = "okay";
> +};
> +
> +&hdmi_pavi {
> +	status = "okay";
> +};
> +
> +&hdmi {
> +	status = "okay";
> +};
> +
> +&hdmiphy {
> +	status = "okay";
> +};
> +
> +&lcdif1 {
> +	status = "okay";
> +};
> +
> +&lcdif2 {
> +	status = "okay";
> +};
> +
> +&lcdif3 {
> +	status = "okay";
> +
> +	thres-low  = <1 2>;             /* (FIFO * 1 / 2) */
> +	thres-high = <3 4>;             /* (FIFO * 3 / 4) */
> +};
> +
> +

Same problem.

>  &A53_0 {
>  	cpu-supply = <&buck2>;
>  };

Best regards,
Krzysztof

