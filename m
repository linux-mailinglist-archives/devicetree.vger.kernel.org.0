Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D3C565AA5A
	for <lists+devicetree@lfdr.de>; Sun,  1 Jan 2023 16:38:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229447AbjAAPiG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Jan 2023 10:38:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbjAAPiF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Jan 2023 10:38:05 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B659E7A
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 07:38:04 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id m6so28013998lfj.11
        for <devicetree@vger.kernel.org>; Sun, 01 Jan 2023 07:38:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Nyus5NrBFWkhUqZlzZVvcdsiCdhLHFu1L5Qa+HZbLMs=;
        b=hU4CSITEpnmuUJZXUiuiJ+YrCqoxxhxNk0KDq6JzPEjeMAKUHZhE42JTYJumDgYwxL
         3Fg34JOMbqSpr6KuWPHBPsc+wklCMjz8GXVKaI+0s2gr9SLtU+QpzknBNG7DrN9OtPrY
         RGHZfdaz67G6ETYFPL4yvFn/Qg092yi3E4Lv+Ssdbj0Bi0t12jwhu99OdxqAoye1Rs8o
         ATuYDf9QSBwRueI0HS03hltD9L/+mCPfR9USL5ILOlqaVRg5Y9RNpe9GFfb0s16Rl8Jr
         zvA6mpRraLhu+q9aTczEJJV32VrE93R1ayIdV+FrNMRB6zYRrPbDGRTHzFu/NlIuwmE0
         Sf7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nyus5NrBFWkhUqZlzZVvcdsiCdhLHFu1L5Qa+HZbLMs=;
        b=5fx2e8ld9fCSSHBIcE2bF3fZmZNeNfbl89ORjfErUkjOeSCHz2tTRDjC+ogq3AXSDc
         ZkbOkDa5ciCBXn7qmPkakrWEXv+ZvMTWUVEGcMLc+Yc5BJrc7ki8UomKHFryMF6r5Tqw
         o+9OhX6ZZEkpBgix2UuxwPyMITqPdTH9o0cj0WUOBhXoLP/8L7Ugee7/SM+MDO0pMyBV
         biLGGJo6jmvrxugqfqPG+OXoTiQxJzOeaAOVbmo1f2ZuLtVVjRBdKBhfsxkkWhaNh6ZQ
         Joqzi8TxwTXcx9hNlewb5zxD4I/WVq+0f5c+w5t4xCdgzCmp9CICJqYHYr8Tn0ikJDbf
         9CrA==
X-Gm-Message-State: AFqh2krAgg6w5gOFabzKlwzy2xp/tscl/+jhRAaWEQ8IJQYR/9iJlHtZ
        s5OSPOl/QaB8uWC43WMhGjSxzQ==
X-Google-Smtp-Source: AMrXdXt5J5ZFC7KcZM0DnydAHb38+zH9P7AlJ+z1n49FRYIBtUS1ma7eN/kIMQsjCdcuat821zvG4Q==
X-Received: by 2002:ac2:5dfa:0:b0:4b5:41fa:69d8 with SMTP id z26-20020ac25dfa000000b004b541fa69d8mr11313303lfq.16.1672587482965;
        Sun, 01 Jan 2023 07:38:02 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id z9-20020a056512370900b004b55c1b5c66sm4148756lfr.157.2023.01.01.07.38.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Jan 2023 07:38:02 -0800 (PST)
Message-ID: <9d7f4e35-8d82-4de4-3a3f-630cbca9992f@linaro.org>
Date:   Sun, 1 Jan 2023 16:38:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] ARM: dts: imx: Add support for SK-iMX53 board
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230101004954.613652-1-dmitry.baryshkov@linaro.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230101004954.613652-1-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/01/2023 01:49, Dmitry Baryshkov wrote:
> Add support for the StartKit sk-imx53 board, a simple development board
> with the iMX536A SoC.
> 
> Tested and works:
> - UARTs
> - SPI
> - I2C
> - GPU
> - USB
> - uSD
> - NAND
> - Ethernet
> 
> Not tested:
> - Display
> - VPU
> - capture
> 
> Not yet working:
> - Sound
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm/boot/dts/Makefile           |   1 +
>  arch/arm/boot/dts/imx53-sk-imx53.dts | 361 +++++++++++++++++++++++++++
>  2 files changed, 362 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx53-sk-imx53.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index d08a3c450ce7..d20fd01a8d07 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -465,6 +465,7 @@ dtb-$(CONFIG_SOC_IMX53) += \
>  	imx53-ppd.dtb \
>  	imx53-qsb.dtb \
>  	imx53-qsrb.dtb \
> +	imx53-sk-imx53.dtb \
>  	imx53-smd.dtb \
>  	imx53-tx53-x03x.dtb \
>  	imx53-tx53-x13x.dtb \
> diff --git a/arch/arm/boot/dts/imx53-sk-imx53.dts b/arch/arm/boot/dts/imx53-sk-imx53.dts
> new file mode 100644
> index 000000000000..06e27a222070
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx53-sk-imx53.dts
> @@ -0,0 +1,361 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +//
> +// Copyright 2023 Linaro Ltd.
> +
> +/dts-v1/;
> +
> +#include "imx53.dtsi"
> +
> +/ {
> +	model = "StarterKit SK-iMX53 Board";
> +	compatible = "starterkit,sk-imx53", "fsl,imx53";

Missing bindings. Missing vendor prefix.



Best regards,
Krzysztof

