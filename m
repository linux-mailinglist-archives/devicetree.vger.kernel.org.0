Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B2394F8F4A
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 09:13:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229697AbiDHHPf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 03:15:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229698AbiDHHPc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 03:15:32 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 493D1214048
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 00:13:27 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id p15so15460136ejc.7
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 00:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=7EjkArby+YXeQWnUCkFmhxaHZGauplRCYZjUw5rv+0E=;
        b=P3LNs91PmjyMcGXqs/1qd6aAe2pOkmQxK2rpdZbLEkBXDUDRk1fTEc9BkEXcXU5Vb3
         /dJlnetRZAdhTIaUdabV8GVVwltmE/N2sndujl+MwI3vTYlyDtARgSTA76FwOFTSVdTN
         6Atdx5uuBt5qm+yTZJAkE5VhEmA8DHYlFY2qFFJWJyHusu21pSV/r5l60d8DS2bAApbq
         FzF6c+PqaqkBuH+Xz24uigvxKPryBg3zRM8mEPhDjFB3f5CTxMTdPf9oZlDPKXgU7z/i
         29Et5h7AetTRIOOB4m6cDydCNGMqD53CSbGV5M6LLC5x9qODa4fivDnEIwns/yTKVeNo
         CVjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7EjkArby+YXeQWnUCkFmhxaHZGauplRCYZjUw5rv+0E=;
        b=59zCejb5K8KzRSuKANn76TuQUWLb75QQo5yv3G6YZComRL6at+xoglqdc1ynPvIoTP
         SNBsQKp79yKayLkL0cRZcaUf990FdkbLcWvWKTsNJJO3+/bBVK7CUnDzsJdvHFWt59Fe
         M7CjQ0Nh/ST1DI2MvqmbJR8qxt20yGkFcF/3XBmbd7slUPUrwGOjsLDvaPQuFFsVdQH3
         NN6VCzjGtTsf/PCIsNBj8/tsjzy8uvsfh3MFYY0N7PAM7qDvQHb8J3JaLV00lKf6dZas
         h8uQuu4Oh0j/z/JSCWbXh7Ea1xMS+FYz7tjYEXTqIMNkQraom8cxGXGf/kxIQh8z4f2G
         QfMw==
X-Gm-Message-State: AOAM533QxumwhRJE9dOceMw8rvRehthvMXONbzF8gF8hm1osfM2wSNNA
        MrixdTVtOsDY98u+48u2C0Rssw==
X-Google-Smtp-Source: ABdhPJzgnGNDsxiLx/GHTVMUuI/MW9bJw8r0RLq06fINFbNAkHJSZCT3Ee2wL1N2t9btbxnWKy/woA==
X-Received: by 2002:a17:906:c108:b0:6e4:a223:1af9 with SMTP id do8-20020a170906c10800b006e4a2231af9mr10017771ejc.441.1649402005890;
        Fri, 08 Apr 2022 00:13:25 -0700 (PDT)
Received: from [192.168.0.187] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id c11-20020a056402120b00b004196059efd1sm10428943edw.75.2022.04.08.00.13.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Apr 2022 00:13:25 -0700 (PDT)
Message-ID: <be7fd7be-c65a-215c-df96-5a6eed52b5e7@linaro.org>
Date:   Fri, 8 Apr 2022 09:13:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 2/2] arm64: dts: imx: Add i.MX8M Plus Gateworks gw7400 dts
 support
Content-Language: en-US
To:     Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20220407210411.8167-1-tharvey@gateworks.com>
 <20220407210411.8167-2-tharvey@gateworks.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220407210411.8167-2-tharvey@gateworks.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/04/2022 23:04, Tim Harvey wrote:
> The Gateworks GW7400 is an ARM based single board computer (SBC)
> featuring:
>  - i.MX8M Plus SoC
>  - LPDDR4 DRAM
>  - eMMC FLASH

Thank you for your patch. There is something to discuss/improve.

(...)

> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/leds/common.h>
> +
> +#include "imx8mp.dtsi"
> +
> +/ {
> +	model = "Gateworks Venice GW74xx i.MX8MP board";
> +	compatible = "gw,imx8mp-gw74xx", "fsl,imx8mp";

Deprecated vendor prefix.

> +
> +	aliases {
> +		ethernet0 = &eqos;
> +		ethernet1 = &fec;
> +		ethernet2 = &lan1;
> +		ethernet3 = &lan2;
> +		ethernet4 = &lan3;
> +		ethernet5 = &lan4;
> +		ethernet6 = &lan5;
> +	};
> +
> +	chosen {
> +		stdout-path = &uart2;
> +	};
> +
> +	memory@40000000 {
> +		device_type = "memory";
> +		reg = <0x0 0x40000000 0 0x80000000>;
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		user-pb {

Generic node names please, so "key-0" or "user-pb-key" (although adding
specific parts is really not needed, because you have the label).

> +			label = "user_pb";
> +			gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
> +			linux,code = <BTN_0>;
> +		};
> +
> +		user-pb1x {
> +			label = "user_pb1x";
> +			linux,code = <BTN_1>;
> +			interrupt-parent = <&gsc>;
> +			interrupts = <0>;
> +		};
> +
> +		key-erased {
> +			label = "key_erased";
> +			linux,code = <BTN_2>;
> +			interrupt-parent = <&gsc>;
> +			interrupts = <1>;
> +		};
> +
> +		eeprom-wp {
> +			label = "eeprom_wp";
> +			linux,code = <BTN_3>;
> +			interrupt-parent = <&gsc>;
> +			interrupts = <2>;
> +		};
> +
> +		tamper {
> +			label = "tamper";
> +			linux,code = <BTN_4>;
> +			interrupt-parent = <&gsc>;
> +			interrupts = <5>;
> +		};
> +
> +		switch-hold {
> +			label = "switch_hold";
> +			linux,code = <BTN_5>;
> +			interrupt-parent = <&gsc>;
> +			interrupts = <7>;
> +		};
> +	};
> +
> +	led-controller {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio_leds>;
> +
> +		led-0 {
> +			function = LED_FUNCTION_STATUS;

LED_FUNCTION_HEARTBEAT

> +			color = <LED_COLOR_ID_GREEN>;
> +			gpios = <&gpio2 15 GPIO_ACTIVE_HIGH>;
> +			default-state = "on";
> +			linux,default-trigger = "heartbeat";
> +		};
> +
> +		led-1 {
> +			function = LED_FUNCTION_STATUS;
> +			color = <LED_COLOR_ID_RED>;
> +			gpios = <&gpio2 16 GPIO_ACTIVE_HIGH>;
> +			default-state = "off";
> +		};
> +	};
> +
> +	pps {
> +		compatible = "pps-gpio";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pps>;
> +		gpios = <&gpio1 12 GPIO_ACTIVE_HIGH>;
> +		status = "okay";

No need for status.

> +	};
> +

Best regards,
Krzysztof
