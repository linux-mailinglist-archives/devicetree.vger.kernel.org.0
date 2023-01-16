Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F276066BD24
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 12:47:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229762AbjAPLrv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 06:47:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229997AbjAPLr3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 06:47:29 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AD82658B
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 03:47:28 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 8797284F3E;
        Mon, 16 Jan 2023 12:47:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1673869646;
        bh=ZPNr2ijDvtRwTG+OcLNDp9LTAHXzngxuBv3knmcG3ZY=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=ph9wvosBpg/LIpQ88nv8DCsZoQaNKzuvYSN3+wUtgd6ksH3QOQpuNs2dHP/ueuXDY
         MsVzwGnHqNxmE7JK56OOnuuSsTwsqN69f5yPbynnZ9GmzxPKg2pjZToNORorZuTFwj
         FsiZ7KfO3JuWy66y6N3ELFJEHZ2XB0YeZmRT4VRPMtAQE1H9vVpWxsr1ZO69ak5JSM
         dlkvQDYNWrzT04rRivaRw1Q0ADULu0MGUq+MsUHza3rCjbP05wf4pbd2iBwxJK7+HA
         hcOloA14pCkCeBxxYdkHnZ0yqm5Bxeh0/oA2/AqkjkKB0Fbc9sZJERKIYSt9RSJcTE
         Ngxo0M04h3QCQ==
Message-ID: <1166a1e3-14ea-f858-1073-59e55571fa86@denx.de>
Date:   Mon, 16 Jan 2023 12:47:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 2/2] arm64: dts: imx8mp: Add support for Data Modul i.MX8M
 Plus eDM SBC
Content-Language: en-US
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
 <0ef9774e-4d0a-e71e-ede1-c0252bab3170@denx.de>
 <42cf3742-e33d-a1fb-205b-6ed7f07d2b91@kontron.de>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <42cf3742-e33d-a1fb-205b-6ed7f07d2b91@kontron.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 1/16/23 12:34, Frieder Schrempf wrote:

Hi,

>> Current practice does not match this statement however, notice how they
>> are all gpio 1 4 :
>>
>> $ git grep sd-vsel-gpios
>> Documentation/devicetree/bindings/regulator/nxp,pca9450-regulator.yaml:
>> sd-vsel-gpios:
>> arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi: sd-vsel-gpios =
>> <&gpio1 4 GPIO_ACTIVE_HIGH>;
>> arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts:
>> sd-vsel-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
>> arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi: sd-vsel-gpios =
>> <&gpio1 4 GPIO_ACTIVE_HIGH>;
>> arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi: sd-vsel-gpios =
>> <&gpio1 4 GPIO_ACTIVE_HIGH>;
> 
> Yes, but these are probably all copy-pasted from somewhere. Maybe from
> my original Kontron DT (before [1]) where I was actually using
> sd-vsel-gpios.
> But these DTs all mux the VSELECT signal to the GPIO1_IO04 pad, so
> sd-vsel-gpios is useless.

Maybe we should just scrub them all then ?
