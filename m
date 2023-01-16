Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE19666BCE3
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 12:28:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229728AbjAPL25 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 06:28:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229891AbjAPL2U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 06:28:20 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 334EE4C1C
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 03:28:19 -0800 (PST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <a.fatoum@pengutronix.de>)
        id 1pHNeo-0002g8-GO; Mon, 16 Jan 2023 12:28:06 +0100
Message-ID: <fc62ae21-64d1-b550-e374-b7005920facc@pengutronix.de>
Date:   Mon, 16 Jan 2023 12:28:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 2/2] arm64: dts: imx8mp: Add support for Data Modul i.MX8M
 Plus eDM SBC
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Denys Drozdov <denys.drozdov@toradex.com>,
        Fabio Estevam <festevam@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
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
From:   Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <748a94f5-6977-9985-a547-ef3897db4bb4@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16.01.23 11:39, Marek Vasut wrote:
> On 1/11/23 08:38, Ahmad Fatoum wrote:
>> Could you share your get_maintainers.pl invocation? I'd like to
>> adjust the reviewer entry in MAINTAINERS, so such patches get
>> into our kernel@pengutronix.de inbox as well.
> 
> Plain get_maintainer -f path/to/dts

Ah. This doesn't contain /imx/ and thus didn't match the i.MX
MAINTAINERS entry at all. I just sent a patch to remedy this.

>>> +    pmic: pmic@25 {
>>> +        compatible = "nxp,pca9450c";
>>> +        reg = <0x25>;
>>> +        pinctrl-names = "default";
>>> +        pinctrl-0 = <&pinctrl_pmic>;
>>> +        interrupt-parent = <&gpio1>;
>>> +        interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
>>> +        sd-vsel-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
>>
>> Here you assume GPIO1_IO04 is muxed as GPIO.
>>
>>> +    pinctrl_usdhc2: usdhc2-grp {
>>> +        fsl,pins = <
>>> +            MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT        0xc1
>>
>> Here you mux it for USDHC2_VSELECT though. Is this intended?
> 
> That's a good question, other DTs do the same thing, I suspect the sd-vsel-gpios could be dropped, but as long as it is not outright harmful, it can be used for backward compatibility to support less complete OSes which may not handle the eSDHC VSELECT bit , so I figured it is good to keep both options.

I'd assume any useful software will have support for the pinctrl
binding and once you mux the pad for USDHC2_VSELECT, it's not
useful to have a device trying to use the GPIO.

Cheers,
Ahmad

> 
> [...]
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

