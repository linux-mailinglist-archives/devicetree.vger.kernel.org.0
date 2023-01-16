Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41E6766BCD2
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 12:25:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229744AbjAPLZr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 06:25:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229727AbjAPLZq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 06:25:46 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8858C1DBA4
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 03:25:44 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id EEBCE850A6;
        Mon, 16 Jan 2023 12:25:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1673868342;
        bh=PJliKa7ggjbNYCvKBTRN/h29Fe/uVDyr0VCCplJ/Acg=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=V//Hw3UWCkas/aiBc74VnY1NZeCpokhFO0ZwOt92VMuYR+IUBF7Yi7spyjg+mKjD9
         I0fSHyzsTx3eW0htIDwaryvFFSnNYYdTJtpKjPXSLpamni73kHUfXGD4sow8Ao38z3
         IgU/CY/bewSSgSbt2CkRhoOEvYXLPj0fns76KUYGuqUOqscK76XCKWAI+LJ7k/1g2K
         Onzay9OrwyEIo69yusixOTyJ379S6vy/k/nBgoxnKWqTFlyMXYL7f4we/DOLnZlWsb
         mB4/tcvKsuhDEWatWJcX+5apIEy4V7vdoOpJsdk66eFMFb7yeQNMEQ6hgcs0w49Lin
         CY+GSR3D8WVhQ==
Message-ID: <0ef9774e-4d0a-e71e-ede1-c0252bab3170@denx.de>
Date:   Mon, 16 Jan 2023 12:25:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 2/2] arm64: dts: imx8mp: Add support for Data Modul i.MX8M
 Plus eDM SBC
To:     Frieder Schrempf <frieder.schrempf@kontron.de>,
        Ahmad Fatoum <a.fatoum@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Cc:     Denys Drozdov <denys.drozdov@toradex.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20221218051800.495932-1-marex@denx.de>
 <20221218051800.495932-2-marex@denx.de>
 <7b77825d-cbdb-0150-c30b-aa97fa39fe27@pengutronix.de>
 <748a94f5-6977-9985-a547-ef3897db4bb4@denx.de>
 <3b945215-83ae-cd3c-e863-97f71cc32622@kontron.de>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <3b945215-83ae-cd3c-e863-97f71cc32622@kontron.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1/16/23 11:51, Frieder Schrempf wrote:
> On 16.01.23 11:39, Marek Vasut wrote:
>> On 1/11/23 08:38, Ahmad Fatoum wrote:
>>> Hello Marek,
>>
>> Hi,
>>
>> [...]
>>
>>> Could you share your get_maintainers.pl invocation? I'd like to
>>> adjust the reviewer entry in MAINTAINERS, so such patches get
>>> into our kernel@pengutronix.de inbox as well.
>>
>> Plain get_maintainer -f path/to/dts
>>
>>> Some more comments below.
>>>
>>>> +    pmic: pmic@25 {
>>>> +        compatible = "nxp,pca9450c";
>>>> +        reg = <0x25>;
>>>> +        pinctrl-names = "default";
>>>> +        pinctrl-0 = <&pinctrl_pmic>;
>>>> +        interrupt-parent = <&gpio1>;
>>>> +        interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
>>>> +        sd-vsel-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
>>>
>>> Here you assume GPIO1_IO04 is muxed as GPIO.
>>>
>>>> +    pinctrl_usdhc2: usdhc2-grp {
>>>> +        fsl,pins = <
>>>> +            MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT        0xc1
>>>
>>> Here you mux it for USDHC2_VSELECT though. Is this intended?
>>
>> That's a good question, other DTs do the same thing, I suspect the
>> sd-vsel-gpios could be dropped,
> 
> The sd-vsel-gpios is only needed when the hardware has an arbitrary GPIO
> connected to the SD_VSEL signal of the PCA9450. IMHO, if SD_VSEL is
> connected to the VSELECT signal it would be better to drop sd-vsel-gpios.

Current practice does not match this statement however, notice how they 
are all gpio 1 4 :

$ git grep sd-vsel-gpios
Documentation/devicetree/bindings/regulator/nxp,pca9450-regulator.yaml: 
sd-vsel-gpios:
arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi: 
sd-vsel-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts: 
sd-vsel-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi: 
sd-vsel-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi: 
sd-vsel-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;

>> but as long as it is not outright
>> harmful, it can be used for backward compatibility to support less
>> complete OSes which may not handle the eSDHC VSELECT bit , so I figured
>> it is good to keep both options.
> 
> Would be interesting what OSes you have in mind? The eSDHC
> driver/hardware should always handle the VSELECT signal, no?

Not necessarily, but the ones I am aware of (U-Boot, Linux) do handle 
VSELECT.
