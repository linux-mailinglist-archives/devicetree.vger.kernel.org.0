Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD9AD661D1A
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 04:57:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233886AbjAID4b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Jan 2023 22:56:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236710AbjAIDzn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Jan 2023 22:55:43 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73CA81209E
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 19:54:56 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 254A0B80CAC
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 03:54:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B52D0C433D2;
        Mon,  9 Jan 2023 03:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1673236493;
        bh=p/XxkV1EJLS7tRjTyqnzIqnXBjpV4nsiH/JLkdkvOXU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=GfjCDY3kRIrJp//aIqpUXP1+UAdEhxydeP+qDyOY7GqiHhfMIaWrYSKQLyThskRdd
         SzS5+bPSUC/dHqzgOGi1EU8/pMDL+Wzx34qiUK9oON4wqMDGPYZzuEXOKnRcsd5Nvn
         6w/7b3x8LRa3ghSKMWVNCJhTjhR+bhOd6MyqpbrcsvEmOraLmfSxfvq8tJOdmC+3Vg
         hSi/JQWJesazYLhGpf89Lrh/OptTpjbuzBXCw8Zl1RI/Z9qiMLRSV23FdJZNBN4nXJ
         zXmvswZB6z9M9DtLOfJ2t8H++dsDVosfHNN4088yWuYhFGxtenGMQtvFugsTbRK66T
         xaPCI80pyk3aw==
Date:   Mon, 9 Jan 2023 11:54:45 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
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
Subject: Re: [PATCH 2/2] arm64: dts: imx8mp: Add support for Data Modul
 i.MX8M Plus eDM SBC
Message-ID: <20230109035444.GA18301@T480>
References: <20221218051800.495932-1-marex@denx.de>
 <20221218051800.495932-2-marex@denx.de>
 <20230101040036.GU6112@T480>
 <cf51865b-4a3e-09fa-b342-cc4db491f17b@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cf51865b-4a3e-09fa-b342-cc4db491f17b@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 05, 2023 at 10:30:17PM +0100, Marek Vasut wrote:
> On 1/1/23 05:00, Shawn Guo wrote:
> 
> [...]
> 
> > > +	panel: panel {
> > 
> > No compatible?
> 
> The compatible string is filled in by expansion module DT overlay, so no
> default compatible string in the panel node here. The panel interface is the
> same for all panels that can be atteched to this board, so the panel node is
> common for all DTOs and can be in the base DT.
> 
> > > +		backlight = <&backlight>;
> > > +		power-supply = <&reg_panel_vcc>;
> > > +		/* Disabled by default, unless display board plugged in. */
> > > +		status = "disabled";
> > > +	};
> > > +
> > > +	reg_panel_vcc: regulator-panel-vcc {
> > > +		compatible = "regulator-fixed";
> > > +		pinctrl-names = "default";
> > > +		pinctrl-0 = <&pinctrl_panel_vcc_reg>;
> > > +		regulator-name = "PANEL_VCC";
> > > +		regulator-min-microvolt = <5000000>;
> > > +		regulator-max-microvolt = <5000000>;
> > > +		gpio = <&gpio3 6 0>;
> > 
> > GPIO_ACTIVE_HIGH?
> 
> No, the 0 is correct and you're not the first one to wonder about this
> oddity.

I understand that the polarity is ignored by Linux Kernel.  But it
shouldn't prevent us from describing the polarity cell with defines
for better readability.

I'm always looking for the pattern below when reviewing the device tree.

	regulator-xxx {
		compatible = "regulator-fixed";
		...
		gpio = <&gpio3 6 GPIO_ACTIVE_HIGH>;
		enable-active-high;
	}

Or for low polarity:

	regulator-xxx {
		compatible = "regulator-fixed";
		...
		gpio = <&gpio3 6 GPIO_ACTIVE_LOW>;
	}

The polarity define is helpful for me to validate whether
`enable-active-high` property should present.

Shawn

> See drivers/gpio/gpiolib-of.c :
> 
>  203 /*
>  204  * The regulator GPIO handles are specified such that the
>  205  * presence or absence of "enable-active-high" solely controls
>  206  * the polarity of the GPIO line. Any phandle flags must
>  207  * be actively ignored.
>  208  */
>  209 #if IS_ENABLED(CONFIG_REGULATOR_FIXED_VOLTAGE)
>  210     { "regulator-fixed",   "gpios",    "enable-active-high" },
>  211     { "regulator-fixed",   "gpio",     "enable-active-high" },
> 
> [...]
