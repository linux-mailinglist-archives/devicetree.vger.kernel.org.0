Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09742621BA0
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 19:14:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233817AbiKHSOF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 13:14:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234725AbiKHSNo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 13:13:44 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA57A1583B
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 10:13:31 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id p8so22305984lfu.11
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 10:13:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HbRy3Yn8zVIZMpnViCKLzdpGPVd73KtafUDM0aTDS/o=;
        b=XRPzAuFK8UDVqtzd6xneMNHNxOpFkeuZF8TeJ6/2tO1pAlFuW6Hnddef+UE5EZsDxR
         +tOuD/jgdBHMhYW+nqLTI+L0v7eIdxrEoeqOPqmuBjcyVzI/+jbgWrjNwHya2S79Cvf7
         gO92uhoM5XeMe5b0VF63OmvWB/R6mhQ9D9JHKZf+Q+HXzxhapVuyYsB/YLfOvmycpplp
         BrbxodIfCB3wyxGll5w34MUr++JswmjhzH9ILOHieAXMRo9ILQ3rDBUSuwIt4EllIaG+
         INSMKw8cilt3UasjJP3HzIHoGy0qgk7GD8PAe8cWxrDxKABCDiHTG4m2SYjEqGEaJkQw
         7iOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HbRy3Yn8zVIZMpnViCKLzdpGPVd73KtafUDM0aTDS/o=;
        b=cN6/ohyrpLsWtwrPftAV1zKuBhgPNBlb8EY2PAeRWYfN5bXJTTGeSA0T1lQPisJ4CN
         JDLSemY3lyqdYYumE1qnuZBP0HJZC2ZFtz77TzpzUvtLf1MsJWnIP+smR/gFAZInjsJw
         HccpPfFQvfGHx7dp85oZV9r5ZFdM9ZyDCHSifZDtb0g5bSXAjCHvWi2DOHKP7tMT8cnB
         Qihqc3/Wb2mSIMVa2svLA4iPIt80lonS2PlJTEFxfe55ijjFo0oTuDXVj1NCGp2mjPBC
         QH9W33AMV1MIypiLDW05vR4Y2s5w5PS4v4KFCjbD3e3QPnQQu9nnwwbcfm/M7lQy7W1/
         H9TA==
X-Gm-Message-State: ACrzQf3UBhfXMRk1UUiQ2MHancLZQxAPukJ3MclFtCfzN4aKarB86w0y
        RKabx6G+gS8TRPLLVWt62dacWw==
X-Google-Smtp-Source: AMsMyM5WEfVa3N0n9y2WWZhW7PbtyhtoV6F6Bcn3Fp7VEJ4rOKVkNBpcv0lO4QNFZIqAyD/V1XssWw==
X-Received: by 2002:a05:6512:3b10:b0:4a4:74c5:de39 with SMTP id f16-20020a0565123b1000b004a474c5de39mr19092399lfv.626.1667931209772;
        Tue, 08 Nov 2022 10:13:29 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id f10-20020a05651232ca00b004a4754c5db5sm1861383lfg.244.2022.11.08.10.13.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 10:13:28 -0800 (PST)
Message-ID: <429df965-bd4a-afa4-e66c-6907677fbf8c@linaro.org>
Date:   Tue, 8 Nov 2022 19:13:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v7 06/10] ARM: dts: rockchip: Add Rockchip RV1126 SoC
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>,
        Jon Lin <jon.lin@rock-chips.com>,
        Sugar Zhang <sugar.zhang@rock-chips.com>
References: <20221108041400.157052-1-jagan@edgeble.ai>
 <20221108041400.157052-7-jagan@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221108041400.157052-7-jagan@edgeble.ai>
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

On 08/11/2022 05:13, Jagan Teki wrote:
> RV1126 is a high-performance vision processor SoC for IPC/CVR,
> especially for AI related application.
> 
> It is based on quad-core ARM Cortex-A7 32-bit core which integrates
> NEON and FPU. There is a 32KB I-cache and 32KB D-cache for each core
> and 512KB unified L2 cache. It has build-in NPU supports INT8/INT16
> hybrid operation and computing power is up to 2.0TOPs.
> 
> This patch add basic core dtsi support.
> 
> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v7:
> - fix dtbs_check
> - rearrange nodes
> - remove Edegble in license text
> Changes for v6:
> - add psci node
> Changes for v5:
> - none
> Changes for v4:
> - update i2c0
> - rebase on -next
> Changes for v3:
> - update cru and power file names
> Changes for v2:
> - split pinctrl in separate patch
> 
>  arch/arm/boot/dts/rv1126.dtsi | 438 ++++++++++++++++++++++++++++++++++
>  1 file changed, 438 insertions(+)
>  create mode 100644 arch/arm/boot/dts/rv1126.dtsi
> 
> diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
> new file mode 100644
> index 000000000000..a485420551f5
> --- /dev/null
> +++ b/arch/arm/boot/dts/rv1126.dtsi
> @@ -0,0 +1,438 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
> + */
> +
> +#include <dt-bindings/clock/rockchip,rv1126-cru.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/power/rockchip,rv1126-power.h>
> +#include <dt-bindings/soc/rockchip,boot-mode.h>
> +
> +/ {
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	compatible = "rockchip,rv1126";
> +
> +	interrupt-parent = <&gic>;
> +
> +	aliases {
> +		i2c0 = &i2c0;
> +		serial0 = &uart0;
> +		serial1 = &uart1;
> +		serial2 = &uart2;
> +		serial3 = &uart3;
> +		serial4 = &uart4;
> +		serial5 = &uart5;

These are not properties of a SoC but board. They depend on the
particular routing on the board... unless this SoC is an exception from
all others?

> +	};
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +

(...)

> +
> +	uart5: serial@ff5a0000 {
> +		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
> +		reg = <0xff5a0000 0x100>;
> +		interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
> +		clock-frequency = <24000000>;
> +		clocks = <&cru SCLK_UART5>, <&cru PCLK_UART5>;
> +		dmas = <&dmac 15>, <&dmac 14>;
> +		clock-names = "baudclk", "apb_pclk";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&uart5m0_xfer>;
> +		reg-shift = <2>;
> +		reg-io-width = <4>;
> +		status = "disabled";
> +	};
> +
> +	saradc: saradc@ff5e0000 {

Node names should be generic, so adc.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +		compatible = "rockchip,rv1126-saradc", "rockchip,rk3399-saradc";
> +		reg = <0xff5e0000 0x100>;
> +		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> +		#io-channel-cells = <1>;
> +		clocks = <&cru CLK_SARADC>, <&cru PCLK_SARADC>;
> +		clock-names = "saradc", "apb_pclk";
> +		resets = <&cru SRST_SARADC_P>;
> +		reset-names = "saradc-apb";
> +		status = "disabled";
> +	};
> +




Best regards,
Krzysztof

