Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49F766AB67B
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 07:43:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229702AbjCFGnL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 01:43:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229633AbjCFGnL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 01:43:11 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0E28210E
        for <devicetree@vger.kernel.org>; Sun,  5 Mar 2023 22:43:09 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id ay14so30427556edb.11
        for <devicetree@vger.kernel.org>; Sun, 05 Mar 2023 22:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678084988;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9rsbgKfx5oRfoFWITv64T8EhxzFwoZLrxr8at+4hbXY=;
        b=SjS9N9zqbR7+pNvp6fmo2JrOEWch7IVeWcDwB6G1bloOfWtUJImtsYskrZNYCE7LXy
         rXZ6eC2qrK9eOnx/GQUj8p987jkkFsvo2zsV4nhGALkFDJdUummT050nZ/nDrSi6OTMR
         7tUVcxmelrjyMHE6ChOsHBpmatDj3RwZDLsxA3/vBtOS8ErP3oUjLOCGVPE5UYQMeqE7
         kMY5DXPJWNMuX3SsoJV6d+gZ7E/7bTItC6SHL4h5Ale1vTd72ov010tkHM4SUvB3aamY
         ZuE9A55EcaRtkN6bauoX0ShzzY6rkxhFoIFqJgZekgFjHXTKMjyPMQYFlK988mWw4Fgm
         k+AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678084988;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9rsbgKfx5oRfoFWITv64T8EhxzFwoZLrxr8at+4hbXY=;
        b=xadpc3iOxhaVOhauRsL3eW6tRZVZlIo53mJZ9/GVk0IeFOxQ4h3G4QuLkEIkmvt82j
         t9RE5/+qvHQfzNGTcVS1WsPSnIBXmoII0VF8ErFTYz8tafl8OaPKulhsUxbcIMJJn7VB
         60HARYzg2aYCW7Qq8a2URZpa3wE5qhLVO8jz6cotEejcKd2p3/M56TqCzsRVO46z7D9Q
         qFmkudTsRCpLua1abRI3jtEPy0+2B3e0pwZ16/XXb/HE7wI6AF2kTxjRI4nO3UFsNzmn
         w0uGMY8ThOnJjvaXFP63mkImFqc0W+bVTZ1zMymGsQQww4zYQHdtFJe6tbVL89sAsN4I
         rHiQ==
X-Gm-Message-State: AO0yUKVxESaQWn0a1tUoCbYiYUzs/BX5Lj7jFGV6M2MloZ/hYuz0kgZH
        a8eogViaIxTbZUPWSjHMkR3Gng==
X-Google-Smtp-Source: AK7set9ygQqXUbsXZAna3Ki9edltMlfwQDPJUhL6neXwBtJMBkPR4IVrgJ0+T0oqQ76UqJPMKLk7bQ==
X-Received: by 2002:a17:907:8b16:b0:8b1:2e7c:df49 with SMTP id sz22-20020a1709078b1600b008b12e7cdf49mr10966072ejc.7.1678084988184;
        Sun, 05 Mar 2023 22:43:08 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:d85d:5a4b:9830:fcfe? ([2a02:810d:15c0:828:d85d:5a4b:9830:fcfe])
        by smtp.gmail.com with ESMTPSA id ke18-20020a17090798f200b008c06de45e75sm4116049ejc.107.2023.03.05.22.43.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Mar 2023 22:43:07 -0800 (PST)
Message-ID: <fecb3d5c-86b7-f052-6cba-f92b45714665@linaro.org>
Date:   Mon, 6 Mar 2023 07:43:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH V3] arm64: dts: sprd: Add support for Unisoc's UMS512
Content-Language: en-US
To:     Chunyan Zhang <chunyan.zhang@unisoc.com>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Orson Zhai <orsonzhai@gmail.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>
References: <20230306060446.414986-1-chunyan.zhang@unisoc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230306060446.414986-1-chunyan.zhang@unisoc.com>
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

On 06/03/2023 07:04, Chunyan Zhang wrote:
> Add basic support for Unisoc's UMS512, with this patch,
> the board ums512-1h10 can run into console.
> 
> Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
> ---
> Changes since V2:
> * Removed redundant gpio.h from ums512-1h10.dts
> 
> Changes since v1:
> * Addressed comments:
>   - Removed earlycon bootargs;
>   - Moved up gic reg as second property;
>   - Moved two sdio nodes under to the apb bus node;
>   - Renamed node name of all fixed clocks;
>   - Fixed warnings reported by dtbs_check.

Please always mention  under --- why you do not send a binding for new
board compatible.

> ---
>  arch/arm64/boot/dts/sprd/Makefile        |   3 +-
>  arch/arm64/boot/dts/sprd/ums512-1h10.dts |  61 ++
>  arch/arm64/boot/dts/sprd/ums512.dtsi     | 911 +++++++++++++++++++++++
>  3 files changed, 974 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/boot/dts/sprd/ums512-1h10.dts
>  create mode 100644 arch/arm64/boot/dts/sprd/ums512.dtsi
> 

(...)
		};
> +
> +		apb@70000000 {
> +			compatible = "simple-bus";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges = <0 0x0 0x70000000 0x10000000>;
> +
> +			uart0: serial@0 {
> +				compatible = "sprd,ums512-uart",
> +					     "sprd,sc9836-uart";
> +				reg = <0x0 0x100>;
> +				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&ext_26m>;
> +				status = "disabled";
> +			};
> +
> +			uart1: serial@100000 {
> +				compatible = "sprd,ums512-uart",
> +					     "sprd,sc9836-uart";
> +				reg = <0x100000 0x100>;
> +				interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&ext_26m>;
> +				status = "disabled";
> +			};
> +
> +			sdio0: sdio@1100000 {

Isn't the node name required to be "mmc"?

> +				compatible = "sprd,sdhci-r11";
> +				reg = <0x1100000 0x1000>;
> +				interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
> +				clock-names = "sdio", "enable";
> +				clocks = <&ap_clk CLK_SDIO0_2X>,
> +					 <&apapb_gate CLK_SDIO0_EB>;
> +				assigned-clocks = <&ap_clk CLK_SDIO0_2X>;
> +				assigned-clock-parents = <&pll1 CLK_RPLL>;
> +				status = "disabled";
> +			};
> +
> +			sdio3: sdio@1400000 {

Same problem.


Best regards,
Krzysztof

