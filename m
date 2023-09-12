Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BA1B79D3BD
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 16:33:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235935AbjILOdJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 10:33:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230502AbjILOdI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 10:33:08 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D761D12E
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 07:33:04 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-307d58b3efbso5220062f8f.0
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 07:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694529183; x=1695133983; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pjOPsCL9pif2Dzo+gO6BrA45xF7z6Xufo/tepOKlI00=;
        b=LiayGyfZA/iDIfoV9WG+Ac2vnmJUdsmXdbFHdmmvDptDJFUC3aeK76p0tajVPcF/jb
         53wKiPmNTR3SIqFYeXgEKJ8mPgp8Y4+mlIf4ftObdb3MtvF+W3A4xYkF6EPjFZhwpDR3
         YabPgFoLP0fHmxWT21gGHdVd08WHGnd1SSN+7T6FHqidYhnYyrGHlh6CGBBVP9lOJJWj
         dVytxn0YBsg42gFeCII6ER6pNs317p0JHa/5Aoy3c+NAFRCXlgqC7+NxLiE/M++3Rx4I
         kIlFICXCQ7NUZSPnl6l+lOo0B5qHyW64Ui8am+bklkTz157WlD68Mb2l4GCumuTBSVeC
         9HGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694529183; x=1695133983;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pjOPsCL9pif2Dzo+gO6BrA45xF7z6Xufo/tepOKlI00=;
        b=YZIZ0WE8s8K7s3BO+gie4a3CGNWusrCHQdB1EevNNBkgrHzcYJKpizfgW5/gJzTyzm
         i4kKh5D4Pycexh6jOpcJfHkdx2oQLHTp9HFYqQWErn3CcPMQVmNK3IX9XBDGCNXJbaNq
         tjsKsXxgekJASdchjR01G9mbVVUfWWMgXMJmyXX+OC6f9o4uCh6BqU+cPoCqX4/LTNmc
         ah2Kh7JU5jgcYGQOMH1svn3VPwHrkkPRImPOvl82imcjA8xV5GNpX7JtWt7sgJ6lYVl3
         vmiw6+9PdlFcewn2sM6QemYXXuk5kK8mwYoxba+XDxT3pFR6z1ujuWxINCCxDomBC9oW
         DHCg==
X-Gm-Message-State: AOJu0YyMsEBLWN6WmgCgo3yW0qXIpoKDUtgRANt6EC2OV+xqqC/TZIdO
        bnx/XXzM1uFmG/CQ6B+ajcBoJQ==
X-Google-Smtp-Source: AGHT+IEzH8cxVUEBDoSgEVfX08++Dl8hGSYbGfvofpNJ/6AyLKoIAQHYmSI3l91W4CgRXHSmijLpYw==
X-Received: by 2002:a05:6000:18b:b0:313:e456:e64a with SMTP id p11-20020a056000018b00b00313e456e64amr9419528wrx.21.1694529183231;
        Tue, 12 Sep 2023 07:33:03 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id c16-20020a5d4150000000b00317a29af4b2sm13016744wrq.68.2023.09.12.07.33.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Sep 2023 07:33:02 -0700 (PDT)
Message-ID: <7a036d2b-ed59-f581-d018-479cc634617e@linaro.org>
Date:   Tue, 12 Sep 2023 16:32:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 2/2] arm64: dts: mediatek: add device-tree for Genio 700
 EVK board
Content-Language: en-US
To:     Macpaul Lin <macpaul.lin@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     Bear Wang <bear.wang@mediatek.com>,
        Pablo Sun <pablo.sun@mediatek.com>,
        Macpaul Lin <macpaul@gmail.com>,
        Chris-QJ Chen <chris-qj.chen@mediatek.com>
References: <20230912140613.6528-1-macpaul.lin@mediatek.com>
 <20230912140613.6528-2-macpaul.lin@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230912140613.6528-2-macpaul.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/09/2023 16:06, Macpaul Lin wrote:
> Add basic device-tree for the Genio 700 EVK board. The
> Genio 700 EVK is based on MediaTek MT8390 SoC.
> MT8390 hardware register maps are identical to MT8188.
> 
> The Genio 700 EVK has following features:
> 


...

> +
> +	sdio_fixed_1v8: regulator-3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "sdio_io";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		enable-active-high;
> +		regulator-always-on;
> +	};
> +
> +	sdio_fixed_3v3: regulator-4 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "sdio_card";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&pio 74 0>;

Use proper defines.

> +		enable-active-high;
> +		regulator-always-on;
> +	};
> +
> +	touch0_fixed_3v3: regulator-5 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "touch_3v3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&pio 119 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	usb_hub_fixed_3v3: regulator-6 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb_hub_3v3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&pio 112 0>; /* HUB_3V3_EN */
> +		startup-delay-us = <10000>;
> +		enable-active-high;
> +	};
> +
> +	usb_hub_reset_1v8: regulator-7 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb_hub_reset";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		gpio = <&pio 7 0>; /* HUB_RESET */
> +		vin-supply = <&usb_hub_fixed_3v3>;
> +	};
> +
> +	usb_p0_vbus: regulator-8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb_p0_vbus";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		gpio = <&pio 84 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	usb_p1_vbus: regulator-9 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb_p1_vbus";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		gpio = <&pio 87 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	usb_p2_vbus: regulator-10 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb_p2_vbus";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		enable-active-high;
> +	};
> +};
> +
> +&i2c0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c0_pins>;
> +	clock-frequency = <400000>;
> +	status = "okay";
> +
> +	touchscreen@5d {
> +		compatible = "goodix,gt9271";
> +		reg = <0x5d>;
> +		interrupt-parent = <&pio>;
> +		interrupts = <6 IRQ_TYPE_EDGE_RISING>;
> +		irq-gpios = <&pio 6 GPIO_ACTIVE_HIGH>;
> +		reset-gpios = <&pio 5 GPIO_ACTIVE_HIGH>;
> +		AVDD28-supply = <&touch0_fixed_3v3>;
> +		VDDIO-supply = <&mt6359_vio18_ldo_reg>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&touch_pins>;
> +	};
> +};
> +
> +&i2c1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c1_pins>;
> +	clock-frequency = <400000>;
> +	status = "okay";
> +};
> +
> +&i2c2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c2_pins>;
> +	clock-frequency = <400000>;
> +	status = "okay";
> +};
> +
> +&i2c3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c3_pins>;
> +	clock-frequency = <400000>;
> +	status = "okay";
> +};
> +
> +&i2c4 {
> +	pinctrl-names = "default", "default";

Why do you need two default entries? This should be just one, shouldn't it?



Best regards,
Krzysztof

