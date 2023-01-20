Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 565AC674F08
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 09:08:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229550AbjATIIH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 03:08:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229534AbjATIIG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 03:08:06 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE1F83D905
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 00:08:02 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id r2so4087978wrv.7
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 00:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=STHLwGZXZMHCtu+L3MSZ6vVWJEcyID79HXvNnoIUF8E=;
        b=JPJjsGVG7xNvKBsgABMXeoPgwfN/c/K03F9YjVry0PmgQ9C73vhxrwhwHGKUHB7Fqx
         LPTDXgtoUuhRwMiD0T4F4YLSlUOLoh2Ey+blMA1JXXZKX8V821CPAK7HgYWBb/VdI87W
         R1JkUsxatRn5huEOf1n8Gm4QR1F33ztX1g6kLqDt+tug1/KkuC4S+//uOx2zG/OUGChn
         ju0J+26kZ/Sj4dlnealw77Xok3ZEyQLCH10Gz7DSbS+phSh7QHQSkrrV7IJt5SO1CR2Z
         n00PTKUhFwingUNnC/WRBABuuqfBYkxhiQBI/K7sFRFXay/eo9KylQfwzoN4g7ZiNsH7
         jzGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=STHLwGZXZMHCtu+L3MSZ6vVWJEcyID79HXvNnoIUF8E=;
        b=fN51MXXFQXTwNxKGH4rThQNHEFeD+OnYToonXDfbKt6Xqrbaxqis851KS3MGDFWJ6F
         mIvEp9ubzcZmnl88nRHcoFvNXI9IT9WOgaZOrmrlJBni/RFOlRILNQJSQ+UcAozFgImj
         e/Sj2SYsTMD6euM+XnQbWSMl23ODvkjA5LjazeZZ/3oFTTRxpfdEQHfLOXejABtNKXP7
         5UbfCXwBIxwou6psNBaoNoM/zVyGbyTEIAOn1I7KWXwlIpAYFs2YiBJAGJkmfo0lMnK4
         ZFIyRbtrVgqmvXXfGy/dyVtyOoKfj/8JdMgXtlwzFg536N80SFgmqMILFy8TWZcB4ncj
         frrA==
X-Gm-Message-State: AFqh2koINppuskeh++GpBimRc+o0jYxMMR/EdHYDGN7hXt8fNGZ3R2cD
        +nYo4yWj+gPxjQmW66+mNqpVdQ==
X-Google-Smtp-Source: AMrXdXt0yUFX/LrRmQp9TEzvtBMaEkuE1Mg+XzU/8ouTVQmDD2RVmuD0+miuMHOVLGlLXZWyRMKpKQ==
X-Received: by 2002:a5d:58e8:0:b0:2be:b07:d411 with SMTP id f8-20020a5d58e8000000b002be0b07d411mr11501323wrd.3.1674202081452;
        Fri, 20 Jan 2023 00:08:01 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id f16-20020a5d50d0000000b002755e301eeasm17571099wrt.100.2023.01.20.00.07.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 00:08:01 -0800 (PST)
Message-ID: <c4733adc-4f2f-f4ff-5517-b4d2bc003ac8@linaro.org>
Date:   Fri, 20 Jan 2023 09:07:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v6 1/6] arm64: dts: Add i.MX8MM PCIe EP support
Content-Language: en-US
To:     Richard Zhu <hongxing.zhu@nxp.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        peng.fan@nxp.com, marex@denx.de, marcel.ziswiler@toradex.com,
        tharvey@gateworks.com, frank.li@nxp.com
Cc:     lorenzo.pieralisi@arm.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@pengutronix.de, linux-imx@nxp.com
References: <1674192352-4473-1-git-send-email-hongxing.zhu@nxp.com>
 <1674192352-4473-2-git-send-email-hongxing.zhu@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1674192352-4473-2-git-send-email-hongxing.zhu@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/01/2023 06:25, Richard Zhu wrote:
> Add i.MX8MM PCIe EP support.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 24 +++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 31f4548f85cf..9662aeccdb3b 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -1315,6 +1315,30 @@ pcie0: pcie@33800000 {
>  			status = "disabled";
>  		};
>  
> +		pcie0_ep: pcie_ep@33800000 {

No underscores in node names.

> +			compatible = "fsl,imx8mm-pcie-ep";

Did you test it with bindings? Does it pass without warnings?


Best regards,
Krzysztof

