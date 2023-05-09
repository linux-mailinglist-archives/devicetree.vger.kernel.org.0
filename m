Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D8696FC736
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 14:56:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234005AbjEIM44 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 08:56:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229922AbjEIM4z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 08:56:55 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84FA7358B
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 05:56:53 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-50bd2d7ba74so58523905a12.1
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 05:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683637012; x=1686229012;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ltT5WDqiHiXa+NlkCKHkzYX00tTDEJOTIESsg/PtJ6o=;
        b=EZDWvgphpMnWIcHidfGZPOUdFj/EMT/jCbQb52rDcuWsAXGYE12zI+/55y5T6U7NQl
         khxq1aa+dClqAhoDFySM+gxMUPH+RboiJ+mJDw6f3fijZF5kmVsRuUxLjjhDAgyewscW
         Q0JJ2Qht84buCC9LpfAtAG9NSDnD6X+3VQ53UgsqlJDEqLtnFrHGdavUSdVCK+gtOFxm
         dBJ92NZYenSPNeDRqc37D0O0W8JZoj9NbJ5YSAxaduFMw4rGQ7r5BPvMSXMPFTevrbBg
         H3fvzkCRxuaD/kMm4C8NjuElDNn4JZJYLG5Qyis3CXqu3/zxpvXvHe23M1UNYUWNo5pH
         aFxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683637012; x=1686229012;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ltT5WDqiHiXa+NlkCKHkzYX00tTDEJOTIESsg/PtJ6o=;
        b=MdN1xhYeL1ANj0V0/rkKGrYrW5zEC+vn7ESv2Z6uLXUTRlHeGzwC2S7pAbQXUXQ3XS
         ux6rSQR+9wM8+vhOOpbIxUzYJ7GEDKrh0dz8Ixr/rA1/rFjDq2tjT2Er8vO6IneZ5AYM
         iZL7bRrU19S8TKSeJIDfBKUr91NdNOFOqUtV3fPrEKmdiHIDNv9ZqL8N6W6NvGoMlIEO
         u9VKmqeGaFlUbYV5+pxEF2IzwVE+o1AB6QUqrwIUaNugs2JPMw8ajcOVbnx/swZuoG2Q
         JOh9K3EIVx04j0bAeCvIwk/7f8BjqdIDO2BAUlqLimhF5s+/yOr+WMK5tt6dV1q7SwJa
         qokA==
X-Gm-Message-State: AC+VfDyILgASyR8yze7HQtx4uU7Tjv9MF3MVZdfT8Zeq+BkshQS5C0HK
        5VT72udsyYbwifEDW7GcfxIOGMzRv1NMV0VlitM=
X-Google-Smtp-Source: ACHHUZ63Vqvry1Z/FkOv8giv7vej96ODATuiAvBBUQHzv+ZImnCe07rgHPNEDcenU8O4+2nJZTSMKQ==
X-Received: by 2002:a17:906:ee8b:b0:953:834d:899b with SMTP id wt11-20020a170906ee8b00b00953834d899bmr11345252ejb.29.1683637012045;
        Tue, 09 May 2023 05:56:52 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d0d5:7818:2f46:5e76? ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id i24-20020a1709067a5800b00965aee5be9asm1315957ejo.170.2023.05.09.05.56.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 05:56:51 -0700 (PDT)
Message-ID: <003b11e2-362d-fb32-0a3a-bebae6a3c8e6@linaro.org>
Date:   Tue, 9 May 2023 14:56:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: Add device tree for the Emtop SOM IMX8MM
Content-Language: en-US
To:     Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230509111754.3301369-1-himanshu.bhavani@siliconsignals.io>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230509111754.3301369-1-himanshu.bhavani@siliconsignals.io>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/05/2023 13:17, Himanshu Bhavani wrote:
> Add a device tree file describing the Emtop SOM IMX8MM
> 
> Signed-off-by: Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>

I am pretty sure I saw this patch, so you miss proper versioning and
changelog. And since we talked about this, I feel like repeating...

> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 198fff3731ae..36590515fbc1 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -54,6 +54,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-beacon-kit.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-data-modul-edm-sbc.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-emcon-avari.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mm-emtop.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-ctouch2.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-edimm2.2.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-emtop.dts b/arch/arm64/boot/dts/freescale/imx8mm-emtop.dts
> new file mode 100644
> index 000000000000..461e1ef5dcb4
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-emtop.dts
> @@ -0,0 +1,261 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2023 Emtop
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/usb/pd.h>
> +
> +#include "imx8mm.dtsi"
> +
> +/ {
> +	model = "Emtop SOM i.MX8MM";
> +	compatible = "emtop,imx8mm-emtop", "fsl,imx8mm";

Missing bindings.

Best regards,
Krzysztof

