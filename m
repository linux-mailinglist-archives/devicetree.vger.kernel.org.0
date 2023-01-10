Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEF366640ED
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 13:53:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238515AbjAJMxA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 07:53:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238572AbjAJMws (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 07:52:48 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42B991D1
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 04:52:47 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 29B3E85301;
        Tue, 10 Jan 2023 13:52:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1673355165;
        bh=ewkGE/KdXw/43Wsmo0aJXFs2SvTmeTefqXDFwEqbJfo=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=SatJhbeAkO2q2vRU6fkQ2UGMfh0vkURBjbptruD5o1jokhh1sDU4iT49WoGcvcHlj
         9vyoCE+UVbfXH8hFzQG9rrHSFs/e3yYT9ykdwgoHw37ks56joP9QiGYrqOTZxlABbo
         McVcJ3SfCDgZhXTS8dCAgH2OUbbepHpMvKKvOQqQGXJJ6b+QMTh/6KxfZl1dV1M//l
         t6SmvtOSzbTsDKVyyLVs9glRNBWQH7j80a8ahLfU3cE8Yztrq+jCTnsIwi6A0iyA/T
         azTDoVXof2TJKG2aIQpwiAflkS5PTEGeJFdrw1P0gT7g59l0G494kUC3wJffr0EnMC
         XpVrOeYoDfnJg==
Message-ID: <bf2ae708-588a-d566-641b-67b47b5f5993@denx.de>
Date:   Tue, 10 Jan 2023 13:52:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 2/2] arm64: dts: imx8mp: Add support for Data Modul i.MX8M
 Plus eDM SBC
Content-Language: en-US
To:     Shawn Guo <shawnguo@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        Denys Drozdov <denys.drozdov@toradex.com>,
        Fabio Estevam <festevam@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org
References: <20221218051800.495932-1-marex@denx.de>
 <20221218051800.495932-2-marex@denx.de> <20230101040036.GU6112@T480>
 <cf51865b-4a3e-09fa-b342-cc4db491f17b@denx.de> <20230109035444.GA18301@T480>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230109035444.GA18301@T480>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1/9/23 04:54, Shawn Guo wrote:

[...]

>>>> +		backlight = <&backlight>;
>>>> +		power-supply = <&reg_panel_vcc>;
>>>> +		/* Disabled by default, unless display board plugged in. */
>>>> +		status = "disabled";
>>>> +	};
>>>> +
>>>> +	reg_panel_vcc: regulator-panel-vcc {
>>>> +		compatible = "regulator-fixed";
>>>> +		pinctrl-names = "default";
>>>> +		pinctrl-0 = <&pinctrl_panel_vcc_reg>;
>>>> +		regulator-name = "PANEL_VCC";
>>>> +		regulator-min-microvolt = <5000000>;
>>>> +		regulator-max-microvolt = <5000000>;
>>>> +		gpio = <&gpio3 6 0>;
>>>
>>> GPIO_ACTIVE_HIGH?
>>
>> No, the 0 is correct and you're not the first one to wonder about this
>> oddity.
> 
> I understand that the polarity is ignored by Linux Kernel.  But it
> shouldn't prevent us from describing the polarity cell with defines
> for better readability.
> 
> I'm always looking for the pattern below when reviewing the device tree.
> 
> 	regulator-xxx {
> 		compatible = "regulator-fixed";
> 		...
> 		gpio = <&gpio3 6 GPIO_ACTIVE_HIGH>;
> 		enable-active-high;
> 	}
> 
> Or for low polarity:
> 
> 	regulator-xxx {
> 		compatible = "regulator-fixed";
> 		...
> 		gpio = <&gpio3 6 GPIO_ACTIVE_LOW>;
> 	}
> 
> The polarity define is helpful for me to validate whether
> `enable-active-high` property should present.

Maybe the best thing we can do to resolve this is to ask GPIO maintainer 
Linus what is the preferred way of describing this in DT -- whether with 
valid GPIO flags which are ignored or with 0 instead of GPIO flags ?
