Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 473F065F5CD
	for <lists+devicetree@lfdr.de>; Thu,  5 Jan 2023 22:30:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230402AbjAEVao (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Jan 2023 16:30:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235890AbjAEVa0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Jan 2023 16:30:26 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 002F463F71
        for <devicetree@vger.kernel.org>; Thu,  5 Jan 2023 13:30:21 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 9E2DF85463;
        Thu,  5 Jan 2023 22:30:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1672954219;
        bh=imLB1gyMHx+j/M8/EXidbXCt0s7DCRX2J/FPotJ3VKs=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=ODyGHU6wx2r55TdMKnwkSuNazV07zOIbI9CcGMvERGaLW6f84QRLuoKczZS3s/aFR
         uL2Tcb9YSvT+/+nhsLX8SehJ2Sfx49IlAUK63LyzsTdB3q2USQRt9IJKL/b2Uh2pkn
         RBqLBOgQBAK0JcCrmtpD/fCXRAoVGcr2XGTtsknn1aPtiVpks3d+LmbJV/8OEvvACl
         vtfUlDh8Evb/0Vfq0rgwUwvsV3WJnOPowmII2NFFYFUJn1MJ7iLSa/VsUVU/JJpf+Q
         WPEtJQ43j6gPz44uUL6qL6u/FwJvwJDJsNe39rP15CzMXdhIUGDI38R1EjPck8WpnT
         KVZEBATpIeN4A==
Message-ID: <cf51865b-4a3e-09fa-b342-cc4db491f17b@denx.de>
Date:   Thu, 5 Jan 2023 22:30:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 2/2] arm64: dts: imx8mp: Add support for Data Modul i.MX8M
 Plus eDM SBC
Content-Language: en-US
To:     Shawn Guo <shawnguo@kernel.org>
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
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230101040036.GU6112@T480>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-7.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1/1/23 05:00, Shawn Guo wrote:

[...]

>> +	panel: panel {
> 
> No compatible?

The compatible string is filled in by expansion module DT overlay, so no 
default compatible string in the panel node here. The panel interface is 
the same for all panels that can be atteched to this board, so the panel 
node is common for all DTOs and can be in the base DT.

>> +		backlight = <&backlight>;
>> +		power-supply = <&reg_panel_vcc>;
>> +		/* Disabled by default, unless display board plugged in. */
>> +		status = "disabled";
>> +	};
>> +
>> +	reg_panel_vcc: regulator-panel-vcc {
>> +		compatible = "regulator-fixed";
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&pinctrl_panel_vcc_reg>;
>> +		regulator-name = "PANEL_VCC";
>> +		regulator-min-microvolt = <5000000>;
>> +		regulator-max-microvolt = <5000000>;
>> +		gpio = <&gpio3 6 0>;
> 
> GPIO_ACTIVE_HIGH?

No, the 0 is correct and you're not the first one to wonder about this 
oddity.

See drivers/gpio/gpiolib-of.c :

  203 /*
  204  * The regulator GPIO handles are specified such that the
  205  * presence or absence of "enable-active-high" solely controls
  206  * the polarity of the GPIO line. Any phandle flags must
  207  * be actively ignored.
  208  */
  209 #if IS_ENABLED(CONFIG_REGULATOR_FIXED_VOLTAGE)
  210     { "regulator-fixed",   "gpios",    "enable-active-high" },
  211     { "regulator-fixed",   "gpio",     "enable-active-high" },

[...]
