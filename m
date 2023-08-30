Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 931FF78DBF0
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 20:46:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236448AbjH3Sbt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 14:31:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243695AbjH3LbG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 07:31:06 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82C1B132
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 04:31:03 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2bcde83ce9fso82323651fa.1
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 04:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693395062; x=1693999862; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L62d2476geTvsJA6A4BBrMX7M/tX2OUjBN5Jlc4vclA=;
        b=VO31SE/TUqWuxHvPNWm2utvbUHOjb7IlEW955NaZMCjaGoRaljXFCVvxxRAxHrnrBP
         P7XxBE844I6l1pr/8VB+N9H/xrKL1fsennE4OTq/GGJLgJtgc9d0hYFIXzXxqtwS/ykr
         TD71xHHj1oICYMRl0iS0AT7gDWfz1jIXiwIzwJCQxaLhaEHMVUbaRUG9g/u3Pwwz0Txp
         IladPOteezYEPg76QWU54A3p70O38tKHw02toVFOsbRUGPGsHwmRM3uTAiE7mPqUHk4/
         F23hDnDs7+KqYrhGVGxfvxbWhv4p8TBtH3H/pkGD94qssD3WQfmjNRMXBUoEi0Rnaq68
         ocnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693395062; x=1693999862;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L62d2476geTvsJA6A4BBrMX7M/tX2OUjBN5Jlc4vclA=;
        b=enNAZ3sJFLUHxCjB6ZfBqOQzB5D9dupG6Go2/DG+j9K9sTHOe8yjjf5+UKJyXHlK1I
         xWk0JkhQP8eFi2e+E6c01FIFEkbPnuz8VyZTyV+BBgsdhZI9O3oooTIf9E5zTe0kBxZn
         lgWbcXdFtGl0Ps3it1JzKBSg+zkYt7wDgQJl5fMvN7s6GN2t+vXgK51JfIR1Q3BpK4KD
         AdHqia3F1OiDjlG+EzkNQzuDu4DyF8xT+L0F5mS4UI4X6+MLE8bIpKpWhl0ATWKWcP+S
         2e+s5pzT65l5oNF0By9nV01uwRLwCYJxmzYHu1BbLJOW30z0a7XmeTPfiBnQoQcjbLyV
         NHfA==
X-Gm-Message-State: AOJu0YxVbl05iLP28BAjLmvoSCe+gg1MF5MREqWBymcoc1gh1sL2VNxw
        LtxK2sv7cxDu9wwpCLb5xFgCIw==
X-Google-Smtp-Source: AGHT+IFsIb5/zNz7hTl02q6WO+wKxEhj5JkM6oIg9jNfHI8d3Gk4Gmyi7jIWjdHBAX1Nq5FppKTbIQ==
X-Received: by 2002:a05:651c:228:b0:2bc:b61d:44c9 with SMTP id z8-20020a05651c022800b002bcb61d44c9mr1626113ljn.53.1693395061754;
        Wed, 30 Aug 2023 04:31:01 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id q22-20020a170906361600b00982cfe1fe5dsm7103413ejb.65.2023.08.30.04.31.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Aug 2023 04:31:01 -0700 (PDT)
Message-ID: <657fcef0-8e15-0bdd-b91c-9a172e2ad391@linaro.org>
Date:   Wed, 30 Aug 2023 13:30:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 4/4] arm64: dts: mediatek: mt8195-demo: simplify mt6360
 nodes
Content-Language: en-US
To:     Macpaul Lin <macpaul.lin@mediatek.com>,
        Alexandre Mergnat <amergnat@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Fabien Parent <fparent@baylibre.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     Bear Wang <bear.wang@mediatek.com>,
        Pablo Sun <pablo.sun@mediatek.com>,
        Macpaul Lin <macpaul@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>
References: <20230825114623.16884-1-macpaul.lin@mediatek.com>
 <20230830111532.9048-1-macpaul.lin@mediatek.com>
 <20230830111532.9048-4-macpaul.lin@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230830111532.9048-4-macpaul.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/08/2023 13:15, Macpaul Lin wrote:
> The dts file for the MediaTek MT8195 demo board has been refactored
> to improve the configuration of the MT6360 multi-function PMIC.
> 
> The changes include:
>  - Addition of the mt6360.dtsi include file, which contains the common
>    configuration of the MT6360 for all mt8195 boards.
>  - Removal of the direct inclusion of the mt6360-regulator.h file.
>  - Removal of the common configuration of the MT6360 PMIC since
>    the included mt6360.dtsi is used.
>  - Add names according to the schematic of mt8195-demo board for
>    mt6360 nodes.
> 
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8195-demo.dts | 173 ++++++++-----------
>  1 file changed, 74 insertions(+), 99 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195-demo.dts b/arch/arm64/boot/dts/mediatek/mt8195-demo.dts
> index 8aea6f5d72b3..d082d679dbbe 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195-demo.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt8195-demo.dts
> @@ -11,7 +11,6 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/pinctrl/mt8195-pinfunc.h>
> -#include <dt-bindings/regulator/mediatek,mt6360-regulator.h>
>  
>  / {
>  	model = "MediaTek MT8195 demo board";
> @@ -130,103 +129,9 @@
>  	mt6360: pmic@34 {
>  		compatible = "mediatek,mt6360";
>  		reg = <0x34>;
> -		interrupt-controller;
> +		pinctrl-0 = <&mt6360_pins>;
> +		pinctrl-names = "default";
>  		interrupts-extended = <&pio 101 IRQ_TYPE_EDGE_FALLING>;
> -		interrupt-names = "IRQB";
> -
> -		charger {
> -			compatible = "mediatek,mt6360-chg";
> -			richtek,vinovp-microvolt = <14500000>;
> -
> -			otg_vbus_regulator: usb-otg-vbus-regulator {
> -				regulator-compatible = "usb-otg-vbus";
> -				regulator-name = "usb-otg-vbus";
> -				regulator-min-microvolt = <4425000>;
> -				regulator-max-microvolt = <5825000>;
> -			};
> -		};
> -
> -		regulator {
> -			compatible = "mediatek,mt6360-regulator";
> -			LDO_VIN3-supply = <&mt6360_buck2>;
> -
> -			mt6360_buck1: buck1 {

Your patchset does not look bisectable. Does not look tested, either...
Why having duplicated regulators (?) and then removing correct
regulators and keeping wrong ones?

> -				regulator-compatible = "BUCK1";
> -				regulator-name = "mt6360,buck1";
> -				regulator-min-microvolt = <300000>;
> -				regulator-max-microvolt = <1300000>;
> -				regulator-allowed-modes = <MT6360_OPMODE_NORMAL
> -							   MT6360_OPMODE_LP
> -							   MT6360_OPMODE_ULP>;
> -				regulator-always-on;
> -			};

...

>  	};
>  };
>  
> @@ -259,8 +164,8 @@
>  	cap-sd-highspeed;
>  	sd-uhs-sdr50;
>  	sd-uhs-sdr104;
> -	vmmc-supply = <&mt6360_ldo5>;
> -	vqmmc-supply = <&mt6360_ldo3>;
> +	vmmc-supply = <&mt6360_vmch_pmu_ldo5_reg>;
> +	vqmmc-supply = <&mt6360_vmc_pmu_ldo3_reg>;
>  	status = "okay";
>  };
>  
> @@ -300,6 +205,67 @@
>  	regulator-always-on;
>  };
>  
> +#include "mt6360.dtsi"

Includes are in the top part of the DTS. Sometimes bottom, but never in
the middle.


Best regards,
Krzysztof

