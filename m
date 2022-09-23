Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EA2F5E8182
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 20:08:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232775AbiIWSI3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 14:08:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232559AbiIWSIC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 14:08:02 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5AC315220F
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 11:05:44 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id o2so1447190lfc.10
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 11:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=fczxGG7vmYXPh9ePkly/PPhV511YdOBBp4v1Ysrm064=;
        b=iV3WLkWiw8PVKJfXEsQ7PtptmVbYgRVJd7Bbf54IomPZTddQy75AtMcSKco4TfiXsA
         c77oGvOmth7btInY92uRu1omS1/g7Uo1ln1fOfVyO2DxvsbuNk+oi5l9pmSTpnrTYjw5
         /N8zhzrA9hyTLuACfg9sHDcH7uE2+nqJeDsc0gL13Qq42E3Tgvi8tOnvgoPRgcS9VqG3
         a/BTM9hE7qzYlQdwTOj/BVpyjkLId32U1cmVkERCNXdxiP6IRtp8Julf4+E7ac3eXqvO
         QWtkLxy9S0Duu1IOTK5cL3x7FLEQomkTFLFvhhUhmhA1BY4NYLF9NonbgiV8LT8/VQJS
         tx3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=fczxGG7vmYXPh9ePkly/PPhV511YdOBBp4v1Ysrm064=;
        b=iKAK5/yPiT9wfPGSJANVOutcQYLL1L8K+4oBNFeXcxwnO5Hz4HvpCo/Hz7xyhpXU3a
         iVuI7TuQPQjRFFLxPs0UsoWOXEXKDywqlOxlpe1kHNccmokH88zhcylEBLGf2DfRGaC3
         v7vW1AUlKySkySH4VjcVIxiMDeOGb4ZEA0/5NPwzjAhr2SgE2th3V4i1StzkRVZt1sbh
         fw2VmZFsJ0c9IPwHLvlt+nwAUOynLKMAQKBt+mDaHKy/CPO4AN5dMYJ/9tVH/wiu1yLm
         g16dckjQ3lgXnHiGlB1FKDdSHhjxPM/nynvjXb/UJJ1hXEOa+i8tBcxQx3RkHdk/VaQ6
         t5AQ==
X-Gm-Message-State: ACrzQf0bxvMLJoZh32Zni9pkFJ+WFEuSTK6xoL2w0/C9u2CRUELuahNy
        2V/tvHcJsn2PvRzL175fM8nqRQ==
X-Google-Smtp-Source: AMsMyM7ruwnavsbgaY2EKmcQejiYpXrEBW300JhEGKmdJglh42nPkBa9bE2dx4k3W+TDtybqIZ3r0Q==
X-Received: by 2002:a05:6512:228b:b0:49e:f3d0:4ced with SMTP id f11-20020a056512228b00b0049ef3d04cedmr3509760lfu.625.1663956321500;
        Fri, 23 Sep 2022 11:05:21 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id t9-20020ac25489000000b00499bf7605afsm1548615lfk.143.2022.09.23.11.05.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Sep 2022 11:05:21 -0700 (PDT)
Message-ID: <d39b63eb-e994-ac55-ff36-145a22d3c99e@linaro.org>
Date:   Fri, 23 Sep 2022 20:05:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v3 2/2] pinctrl: nuvoton: add NPCM8XX pinctrl and GPIO
 driver
Content-Language: en-US
To:     Tomer Maimon <tmaimon77@gmail.com>, avifishman70@gmail.com,
        tali.perry1@gmail.com, joel@jms.id.au, venture@google.com,
        yuenn@google.com, benjaminfair@google.com,
        linus.walleij@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, j.neuschaefer@gmx.net,
        zhengbin13@huawei.com
Cc:     openbmc@lists.ozlabs.org, linux-gpio@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220921095053.88658-1-tmaimon77@gmail.com>
 <20220921095053.88658-3-tmaimon77@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220921095053.88658-3-tmaimon77@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 11:50, Tomer Maimon wrote:
> Add pinctrl and GPIO controller driver support to Arbel BMC NPCM8XX SoC.
> 
> Arbel BMC NPCM8XX pinctrl driver based on Poleg NPCM7XX, except the
> pin mux mapping difference the NPCM8XX GPIO supports adjust debounce
> period time.
> 
> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
> ---
>  drivers/pinctrl/nuvoton/Kconfig           |   14 +
>  drivers/pinctrl/nuvoton/Makefile          |    1 +
>  drivers/pinctrl/nuvoton/pinctrl-npcm8xx.c | 2485 +++++++++++++++++++++
>  3 files changed, 2500 insertions(+)
>  create mode 100644 drivers/pinctrl/nuvoton/pinctrl-npcm8xx.c
> 
> diff --git a/drivers/pinctrl/nuvoton/Kconfig b/drivers/pinctrl/nuvoton/Kconfig
> index 852b0d0eb08e..3a67cdb346ab 100644
> --- a/drivers/pinctrl/nuvoton/Kconfig
> +++ b/drivers/pinctrl/nuvoton/Kconfig
> @@ -31,3 +31,17 @@ config PINCTRL_NPCM7XX
>  	help
>  	  Say Y here to enable pin controller and GPIO support
>  	  for Nuvoton NPCM750/730/715/705 SoCs.
> +
> +config PINCTRL_NPCM8XX
> +	tristate "Pinctrl and GPIO driver for Nuvoton NPCM8XX"
> +	depends on ARCH_NPCM || COMPILE_TEST
> +	select PINMUX
> +	select PINCONF
> +	select GENERIC_PINCONF
> +	select GPIOLIB
> +	select GPIO_GENERIC
> +	select GPIOLIB_IRQCHIP
> +	help
> +	  Say Y or M here to enable pin controller and GPIO support for
> +	  the Nuvoton NPCM8XX SoC. This is strongly recommended when
> +	  building a kernel that will run on this chip.
> \ No newline at end of file

Fix warning.

Best regards,
Krzysztof

