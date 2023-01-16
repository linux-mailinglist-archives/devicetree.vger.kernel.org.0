Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C48166BC01
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 11:41:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230511AbjAPKlG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 05:41:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230525AbjAPKka (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 05:40:30 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E45C61F5C0
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 02:39:17 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 295AF8532A;
        Mon, 16 Jan 2023 11:39:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1673865555;
        bh=3DlGDRvDfy9FkbG+yCdiwiSwTc67KUYJP1MaIxPZIQw=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=ja0JI6UOsr7ezXVIvW+oF05LjGXMvxbpW29Ffth31Rn1bBdgIl2OOnJtwZk8P1jb8
         IF8tbTuN1V7itQo23AcsGXOEIEAyTyy3B8e1n1yzoWGed2xdADvNxSN+4NslGLizX1
         pCI3DDy/fEoBdgCOuXA9MP3K5dx+JInbWLGUdUFV0FSdS76UAhJcBkwIuTEG+u3a9n
         mPcBZTQ2IvqLg9uOy9EJH0KQmVpQIl4KbGRBtxOkbKJ7VPJGhWgJ9DtphRtnBGiwaY
         dkUVwdviYDBDumYKKuQDHC1akujbwbeNngDx53x+ZLgwGGzu376YMkUzOC2yQTk3rJ
         6OIvz+fOlpkSQ==
Message-ID: <748a94f5-6977-9985-a547-ef3897db4bb4@denx.de>
Date:   Mon, 16 Jan 2023 11:39:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 2/2] arm64: dts: imx8mp: Add support for Data Modul i.MX8M
 Plus eDM SBC
Content-Language: en-US
To:     Ahmad Fatoum <a.fatoum@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
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
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <7b77825d-cbdb-0150-c30b-aa97fa39fe27@pengutronix.de>
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

On 1/11/23 08:38, Ahmad Fatoum wrote:
> Hello Marek,

Hi,

[...]

> Could you share your get_maintainers.pl invocation? I'd like to
> adjust the reviewer entry in MAINTAINERS, so such patches get
> into our kernel@pengutronix.de inbox as well.

Plain get_maintainer -f path/to/dts

> Some more comments below.
> 
>> +	pmic: pmic@25 {
>> +		compatible = "nxp,pca9450c";
>> +		reg = <0x25>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&pinctrl_pmic>;
>> +		interrupt-parent = <&gpio1>;
>> +		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
>> +		sd-vsel-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
> 
> Here you assume GPIO1_IO04 is muxed as GPIO.
> 
>> +	pinctrl_usdhc2: usdhc2-grp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT		0xc1
> 
> Here you mux it for USDHC2_VSELECT though. Is this intended?

That's a good question, other DTs do the same thing, I suspect the 
sd-vsel-gpios could be dropped, but as long as it is not outright 
harmful, it can be used for backward compatibility to support less 
complete OSes which may not handle the eSDHC VSELECT bit , so I figured 
it is good to keep both options.

[...]
