Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD116621D82
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 21:17:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229547AbiKHURL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 15:17:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229496AbiKHURK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 15:17:10 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3DC95D6A5
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 12:17:09 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id t25so41495640ejb.8
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 12:17:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ivwUB3TxkpDuXJp908hzufuq7Rzh5RQ7MUC0v+GMgWk=;
        b=ilv6qw5K1ifcsexTZ+5hx382QXZdLdSlBhVtcaH7Qe3E84M0uMSWBdwNB2nYEXmSW7
         0YAeOOJZdLhmbvzZzZvew+PH+KtijX0/omqMH4g8tAY0HDk5ar9TRoWJTNKYyS2LH9Ya
         3eOHzyid1l/sUWMSIVW4QHAdPBBD5ZnroImqonAhzJa0ZS4q+2ZH+pb1x7M/5YpuIiFQ
         sFg0BmVJ0w6EknYt1OEMbZossX0YDRvnwRU8lF/wtz2cfiJjAKWnr2QZ/2g7enCN2OV+
         7HMNgOv0xNKCUbhpWU4/aOSUpETPwmw9BvzWgetAqDGbb49bImyNsQmAT1J9BRcHOves
         leAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ivwUB3TxkpDuXJp908hzufuq7Rzh5RQ7MUC0v+GMgWk=;
        b=c8MkHpesWzQHWZGe6B76HyL2JYx57rs8YAHgWNDmCi0X6c+fyc1qfKwi/LofJEIMgQ
         JyLx57hNY5g6qf8KVkvOSP9HUqKkAIMPB7mlNK8k0+nGu4OAfOI/It7FdhOGn8u8jWfu
         dX9HWJ/OtR7z7iQNWFQGVLiibt6E3Thgjehs1sbVmJpc08G1+RxtzdWqKLhtsxPrs1dD
         ZNxt0nXZd1fdh3+zDyRhq7NvmQy7toIwNJJX+gVmjj5SynhZyKWgFukM9XsnASY9bTCt
         uzBZ14zYbATOzcaEcAsSRwLYnFq/sUMZ7IKLwVpVlbFfJ72GjJkMvCxYfCi9OSu1zy9h
         ajpA==
X-Gm-Message-State: ACrzQf2GZ20BBDbaF4wrPnRgwcg5u9WLNPKhQZgBZU8T1fFGgtgnyFea
        oKtc/GLVbS+StRkDRo30pQo=
X-Google-Smtp-Source: AMsMyM5XME2aLqGdEtthfDbkl7Nt0teZhhJw2xyRcPdmpepms+XKEWqHLMMUNzZ7r12DpZfATHUYSw==
X-Received: by 2002:a17:907:8a1c:b0:7ae:1e64:aa5 with SMTP id sc28-20020a1709078a1c00b007ae1e640aa5mr27831925ejc.119.1667938628275;
        Tue, 08 Nov 2022 12:17:08 -0800 (PST)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id et19-20020a170907295300b0078df26efb7dsm4969959ejc.107.2022.11.08.12.17.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 12:17:07 -0800 (PST)
Message-ID: <137ac777-9ab4-3b3b-6155-99d77cfab30b@gmail.com>
Date:   Tue, 8 Nov 2022 21:17:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v7 06/10] ARM: dts: rockchip: Add Rockchip RV1126 SoC
To:     Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jon Lin <jon.lin@rock-chips.com>,
        Sugar Zhang <sugar.zhang@rock-chips.com>
References: <20221108041400.157052-1-jagan@edgeble.ai>
 <20221108041400.157052-7-jagan@edgeble.ai>
Content-Language: en-US
From:   Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20221108041400.157052-7-jagan@edgeble.ai>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jagan, Heiko,

Have a look at some comment below.

Johan

On 11/8/22 05:13, Jagan Teki wrote:
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

[..]

> +	uart0: serial@ff560000 {
> +		compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
> +		reg = <0xff560000 0x100>;
> +		interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
> +		clock-frequency = <24000000>;
> +		clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
> +		clock-names = "baudclk", "apb_pclk";

> +		dmas = <&dmac 5>, <&dmac 4>;

		dma-names = "tx", "rx";

DT describes hardware.
Maybe add some dma-names ?

===

4 UART0 RX High level
5 UART0 TX High level

6 UART1 RX High level
7 UART1 TX High level

8 UART2 RX High level
9 UART2 TX High level

10 UART3 RX High level
11 UART3 TX High level

12 UART4 RX High level
13 UART4 TX High level

14 UART5 RX High level
15 UART5 TX High level

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&uart0_xfer>;
> +		reg-shift = <2>;
> +		reg-io-width = <4>;
> +		status = "disabled";
> +	};


[..]


> +
> +	timer: timer@ff660000 {

timer0: timer@ff660000 {

This is the first of 6 timers. Change label.

> +		compatible = "rockchip,rv1126-timer", "rockchip,rk3288-timer";
> +		reg = <0xff660000 0x20>;
> +		interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru PCLK_TIMER>, <&cru CLK_TIMER0>;
> +		clock-names = "pclk", "timer";
> +	};

Add possible more timer nodes ?

rv1126 TRM page 727:
descending Timers(Timer0~4)

incremental Timers(Timer5 and STimer0~1)

===

Question for Heiko:
Do we need a different compatible string for Timer5 ?

 "rockchip,rv1126-timer-inc" ??

===

SPI irq addr 56-32=24

56 timer0_int High level
57 timer1_int High level
58 timer2_int High level
59 timer3_int High level
60 timer4_int High level
61 timer5_int High level

