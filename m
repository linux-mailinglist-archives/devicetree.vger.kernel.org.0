Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D10B674F1F
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 09:09:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230341AbjATIJE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 03:09:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230017AbjATIJD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 03:09:03 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B9618875A
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 00:08:59 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id l41-20020a05600c1d2900b003daf986faaeso3038856wms.3
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 00:08:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9OrokSf5xLUFhPNFm7ghdQu62Xud4cNvFD2qvKhHXeM=;
        b=iHi8DkIThCfWFgpD4w0cfOktpid6oX3R5pbYSQalytvpZo/55ynPP2L0AvtgKUScQO
         tbBSt0VvINA4wN+Vg6hdr023VgRm3HBaeGjoJOzybX+1WVx9tJIWPFF1Ygg7wbsLE56v
         jRLMUETQ2YpC4iA7sSX5B7RsJDABe4OZNQAM5x3DEvNulEroMaDpS91iF9WrTz3SwD4V
         xT4XJEAhX4CcSlmkRBAROgBsySdpZBRNp91w4Y9Fq8RsSZ97DTn5pUN12BGBlDrTIQbx
         JuxjMBLFgbHa7u6t1DQf0M1WLysJT2ujevVWq4gbJiHLne0iRnSrmQ18vG/LD5VZta5A
         cwew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9OrokSf5xLUFhPNFm7ghdQu62Xud4cNvFD2qvKhHXeM=;
        b=wkR+UJ9m64Y0RKM8VFki0V/8IwdDI7HqFYN8ARUxjUAfCT8JFuQdWJmP/XL4mxtGmQ
         JY8dWdtJFBaVFU6hZjAIEAHno3iwP2gvrLNU+Lj/7FOpWPf2QfB02Y4ciAjOdK9WuDKd
         RB+I/eCd41dlaCrpGYlfBGQPYwO9hQRwNYTP/3+KmoBV8JjmZl/xUADNPHhNLZegsXaS
         /GhaFdnwUY/LJ8PZPBpO29BcAd7ik7dwDyboCNGyjd7L8s/QdO2FShXNRgI+GPMI+KUY
         2bpENzymGM7CTXY4h31z3bjlTmUiwo5k3qk7ddFu3Zun2HydUK/K5yCcrF/0glvY69gI
         rb/w==
X-Gm-Message-State: AFqh2koIQ/EtkguI+g2wWm4036m8JB24X2bHXBO11Tuvb/haMLCtFGJZ
        WUkxreovfu3b+hE9t9gu08WkdA==
X-Google-Smtp-Source: AMrXdXvCSwr6enaalEUArM5X46+1oKU0hdw2W+jycxnqQmf80bRB+mt3FJtIJ8OZgysC3yTZo4EZIw==
X-Received: by 2002:a05:600c:511f:b0:3da:f97b:2ab0 with SMTP id o31-20020a05600c511f00b003daf97b2ab0mr13799867wms.14.1674202137702;
        Fri, 20 Jan 2023 00:08:57 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id y18-20020a5d6152000000b002425be3c9e2sm34728992wrt.60.2023.01.20.00.08.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 00:08:57 -0800 (PST)
Message-ID: <2f833638-346a-5e79-bf39-ee4365794b82@linaro.org>
Date:   Fri, 20 Jan 2023 09:08:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v6 4/6] arm64: dts: Add i.MX8MQ PCIe EP support on EVK
 board
Content-Language: en-US
To:     Richard Zhu <hongxing.zhu@nxp.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        peng.fan@nxp.com, marex@denx.de, marcel.ziswiler@toradex.com,
        tharvey@gateworks.com, frank.li@nxp.com
Cc:     lorenzo.pieralisi@arm.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@pengutronix.de, linux-imx@nxp.com
References: <1674192352-4473-1-git-send-email-hongxing.zhu@nxp.com>
 <1674192352-4473-5-git-send-email-hongxing.zhu@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1674192352-4473-5-git-send-email-hongxing.zhu@nxp.com>
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
> Add i.MX8MQ PCIe EP support on EVK board.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mq-evk.dts | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
> index 7507548cdb16..c48b94746efb 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
> @@ -376,6 +376,17 @@ &pcie1 {
>  	status = "okay";
>  };
>  
> +&pcie1_ep {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pcie1>;
> +	clocks = <&clk IMX8MQ_CLK_PCIE2_ROOT>,
> +		 <&pcie0_refclk>,
> +		 <&clk IMX8MQ_CLK_PCIE2_PHY>,
> +		 <&clk IMX8MQ_CLK_PCIE2_AUX>;
> +	vph-supply = <&vgen5_reg>;
> +	status = "disabled";

Nope, it's useless as disabled.

Best regards,
Krzysztof

