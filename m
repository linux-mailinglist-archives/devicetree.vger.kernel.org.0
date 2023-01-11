Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD5A96656A0
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 09:59:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231495AbjAKI71 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 03:59:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231968AbjAKI64 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 03:58:56 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 911701055A
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 00:58:55 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id k22-20020a05600c1c9600b003d1ee3a6289so12067627wms.2
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 00:58:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s/sspEowRBiGS0ArXJ7/c/2cS1WAi5rAtkWFaWRAZog=;
        b=ue5q28mRxJvPOFdJkThMgJyBpswNplS3EK7P9jq5LjmZDiNQVVcEOvy3qXZfCBDRlo
         MGTT4J0EJXomqICbuG9M9bp0phs6ckwuNkwDYphsuNlX7Bn7lL4VXHqKY+xbWd1PbNeZ
         tgMfGFXEpbkq45ZPt83xEYQRRAwCMk1BjA/7oZPbo0/LVCXuiJlQTWopHA0nMMzDT6ij
         wwruQ4JgMuZgtj4tx2Mc/kKahqoMy/zCuvjPTz6rqBL+SLpY0U9BeejoRmKp+BmBxXq9
         oSHI5ssVp+E10C6MN84MjBhLzgc04SI+HLMNwDYvITXZ71AkVqqzkEdMEG5r4+EKOhxt
         Tauw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s/sspEowRBiGS0ArXJ7/c/2cS1WAi5rAtkWFaWRAZog=;
        b=LLr1aJwWbIAT6wEQrz/ueV9Z2JzDB1p5es/5vEG/7RXEa2MdGtXCyKd998th7+fJoG
         QhpLNlLwABCuXgUyn5L57P4JmNY5G0nPDiWajLeusEk1K5l94mxSYpxxcnzaPuW0PpcT
         1+aYbN69uWCGLYtXGuJLNxGjkbRagJL/rdbCsDzM7plzUWZxoc7oPugR0609a42CcjU4
         pr9sHsiaGr2vs3LxI8ihPZ8x6Cx5Bkx9SxmZx7APFDL/4Kc/Z2ULkzLxhIvCeo/0Wdyr
         qrIpW88md9MhvKZI8Hu6logNFCL66yrD+F/pSh6bnIH4dPgdKyF2jmGedzMJTBJkrZgS
         5mYQ==
X-Gm-Message-State: AFqh2kqVLXnE1Vax/T/IInTdS/rxcj4KMBoPfFMNIBDZRgN7IWM1oHcE
        W6cFdGv3bCuAfsT2gnpj/a+MLA==
X-Google-Smtp-Source: AMrXdXug5Q8xfDyLZnEDph25fDyQUZ+mMjW44Qv3yxsf9jFvwXgYvGXgGloQj+PD/kkVdeoBX9abOQ==
X-Received: by 2002:a05:600c:4f84:b0:3d9:f758:e280 with SMTP id n4-20020a05600c4f8400b003d9f758e280mr5377391wmq.24.1673427534064;
        Wed, 11 Jan 2023 00:58:54 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h19-20020a05600c351300b003d9a86a13bfsm19167604wmq.28.2023.01.11.00.58.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jan 2023 00:58:53 -0800 (PST)
Message-ID: <44232168-815a-eb68-9287-d83de910bd25@linaro.org>
Date:   Wed, 11 Jan 2023 09:58:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] Support for MAX98090/91 codec in iMX8MM evk
Content-Language: en-US
To:     Hardevsinh Palaniya <hardevsinh.palaniya@siliconsignals.io>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        "linux-imx@nxp.com" <linux-imx@nxp.com>,
        "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
        "broonie@kernel.org" <broonie@kernel.org>,
        "perex@perex.cz" <perex@perex.cz>,
        "tiwai@suse.com" <tiwai@suse.com>,
        "peng.fan@nxp.com" <peng.fan@nxp.com>,
        "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
        "shengjiu.wang@nxp.com" <shengjiu.wang@nxp.com>,
        "Markus.Niebel@ew.tq-group.com" <Markus.Niebel@ew.tq-group.com>,
        "hongxing.zhu@nxp.com" <hongxing.zhu@nxp.com>,
        "tommaso.merciai@amarulasolutions.com" 
        <tommaso.merciai@amarulasolutions.com>,
        "jun.li@nxp.com" <jun.li@nxp.com>,
        "ckeepax@opensource.cirrus.com" <ckeepax@opensource.cirrus.com>,
        "rf@opensource.cirrus.com" <rf@opensource.cirrus.com>,
        "povik+lin@cutebit.org" <povik+lin@cutebit.org>,
        "pierre-louis.bossart@linux.intel.com" 
        <pierre-louis.bossart@linux.intel.com>,
        "james.schulman@cirrus.com" <james.schulman@cirrus.com>,
        "flatmax@flatmax.com" <flatmax@flatmax.com>,
        "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
        "ryan.lee.analog@gmail.com" <ryan.lee.analog@gmail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>
References: <MA0PR01MB7145CB5A2D487FB713CD7C01FFFC9@MA0PR01MB7145.INDPRD01.PROD.OUTLOOK.COM>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <MA0PR01MB7145CB5A2D487FB713CD7C01FFFC9@MA0PR01MB7145.INDPRD01.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/01/2023 08:16, Hardevsinh Palaniya wrote:
> From: Hardevsinh Palaniya <hardevsinh.palaniya@siliconsignals.io>
> Date: Sat, 7 Jan 2023 17:08:28 +0530
> Subject: [PATCH] Support for MAX98090/91 codec in iMX8MM evk

Use subject prefixes matching the subsystem (which you can get for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching).

> 
> - Adding node for MAX98090/91 in dts imx8mm-evk.dtsi
> - Adding tristate option in <sound/soc/codecs/Kconfig>
> 
> Signed-off-by: Hardevsinh Palaniya <hardevsinh.palaniya@siliconsignals.io>

Your CC list insane. Use get_maintainers.pl.

> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> index e0b604ac0da4..58ff63cbc930 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> @@ -132,6 +132,32 @@ simple-audio-card,codec {
>                   clocks = <&clk IMX8MM_CLK_SAI3_ROOT>;
>             };
>       };
> +
> +     sound-max98090 {
> +           compatible = "simple-audio-card";
> +           simple-audio-card,name = "max98090-audio";
> +           simple-audio-card,format = "i2s";
> +           simple-audio-card,frame-master = <&cpudai>;
> +           simple-audio-card,bitclock-master = <&cpudai>;
> +           simple-audio-card,widgets = "Speakers", "Speakers";
> +           simple-audio-card,routing =
> +                       "Speakers", "SPKR",
> +                       "Speakers", "SPKL",
> +                       "IN1", "MICBIAS",
> +                       "MIC1","IN1",
> +                       "MIC2","IN1";
> +
> +           cpudai: simple-audio-card,cpu {
> +                 sound-dai = <&sai5>;
> +                 dai-tdm-slot-num = <2>;
> +                 dai-tdm-slot-width = <32>;
> +           };
> +
> +           simple-audio-card,codec {
> +                 sound-dai = <&max98090>;
> +                 clocks = <&clk IMX8MM_CLK_SAI5_ROOT>;
> +           };
> +     };
>  };
>  
>  &A53_0 {
> @@ -339,6 +365,14 @@ &i2c3 {
>       pinctrl-0 = <&pinctrl_i2c3>;
>       status = "okay";
>  
> +     max98090: max98090@10 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +           #sound-dai-cells = <0>;
> +           compatible = "maxim,max98090";

compatible is first, then reg.

> +           reg = <0x10>;
> +           clocks = <&clk IMX8MM_CLK_SAI5_ROOT>;
> +           clock-names = "mclk";
> +     };
> +
>       pca6416: gpio@20 {
>             compatible = "ti,tca6416";
>             reg = <0x20>;
> @@ -391,6 +425,20 @@ &sai3 {
>       status = "okay";
>  };
>  
> +&sai5 {
> +     pinctrl-names = "default";
> +     pinctrl-0 = <&pinctrl_sai5>;
> +     assigned-clocks = <&clk IMX8MM_CLK_SAI5>;
> +     assigned-clock-parents = <&clk IMX8MM_AUDIO_PLL1_OUT>;
> +     assigned-clock-rates = <24576000>;
> +     clocks = <&clk IMX8MM_CLK_SAI5_IPG>, <&clk IMX8MM_CLK_DUMMY>,
> +           <&clk IMX8MM_CLK_SAI5_ROOT>, <&clk IMX8MM_CLK_DUMMY>,
> +           <&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_AUDIO_PLL1_OUT>,
> +           <&clk IMX8MM_AUDIO_PLL2_OUT>;
> +     clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3", "pll8k", "pll11k";
> +     status = "okay";
> +};
> +
>  &snvs_pwrkey {
>       status = "okay";
>  };
> @@ -552,6 +600,16 @@ MX8MM_IOMUXC_SAI3_TXD_SAI3_TX_DATA0     0xd6
>             >;
>       };
>  
> +     pinctrl_sai5: sai5grp {
> +           fsl,pins = <
> +                 MX8MM_IOMUXC_SAI5_MCLK_SAI5_MCLK        0xd6
> +                 MX8MM_IOMUXC_SAI5_RXD2_SAI5_TX_BCLK     0xd6
> +                 MX8MM_IOMUXC_SAI5_RXD1_SAI5_TX_SYNC     0xd6
> +                 MX8MM_IOMUXC_SAI5_RXD0_SAI5_RX_DATA0    0xd6
> +                 MX8MM_IOMUXC_SAI5_RXD3_SAI5_TX_DATA0    0xd6
> +           >;
> +     }
> +
>       pinctrl_typec1: typec1grp {
>             fsl,pins = <
>                   MX8MM_IOMUXC_SD1_STROBE_GPIO2_IO11  0x159
> diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
> index 0f9d71490075..efef2df362a4 100644
> --- a/sound/soc/codecs/Kconfig
> +++ b/sound/soc/codecs/Kconfig
> @@ -1009,7 +1009,7 @@ config SND_SOC_MAX98088
>       depends on I2C
>  
>  config SND_SOC_MAX98090
> -     tristate
> +     tristate "Maxim MAX98090/1, Stereo Audio Codec"

No, code cannot be mixed with DTS. This is unrelated and not explained
in commit msg.

>       depends on I2C
>  
>  config SND_SOC_MAX98095
> --
> 2.25.1

Best regards,
Krzysztof

