Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E30F0710A09
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 12:26:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238509AbjEYK0g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 06:26:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234832AbjEYK0f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 06:26:35 -0400
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::225])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21EDF10B
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 03:26:33 -0700 (PDT)
X-GND-Sasl: luca.ceresoli@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1685010392;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=iu0POdjk++H35cXbE2Ee+74QXFJBhyTZ9PeOZkCq18o=;
        b=GXyF5OzUaELP8Bh8Ujww8pWQ7q3IZjy10QUyrWKawyjtr3MMCD98gyNFRyYORJZSEyhw6k
        8jEty/5l04K82Ge1Jafn6I7+5bG/j92QWPF3y+/QQi3axpwxsbe9z/TQI71KMRNPwtCwrU
        1G+8+oGyc0j0DEVcZkUZs4A+nKda5fCArtthsBvkIY7pUznzmY9QTREaBwFJw1Ph+Oasf/
        OPXtozyzthJkvfSCVjndVhogqB6ngq1wo656OcSWJj05aCWBXayCPvLGZ5oDg+VRns78mo
        y8J/W0gfFg1vmiviek1gIgff8uTD1iE1j/ulBAwzW9j0//yhFtQgMu86jqjIxg==
X-GND-Sasl: luca.ceresoli@bootlin.com
X-GND-Sasl: luca.ceresoli@bootlin.com
X-GND-Sasl: luca.ceresoli@bootlin.com
X-GND-Sasl: luca.ceresoli@bootlin.com
X-GND-Sasl: luca.ceresoli@bootlin.com
X-GND-Sasl: luca.ceresoli@bootlin.com
X-GND-Sasl: luca.ceresoli@bootlin.com
X-GND-Sasl: luca.ceresoli@bootlin.com
X-GND-Sasl: luca.ceresoli@bootlin.com
X-GND-Sasl: luca.ceresoli@bootlin.com
X-GND-Sasl: luca.ceresoli@bootlin.com
X-GND-Sasl: luca.ceresoli@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 0C0E31C0008;
        Thu, 25 May 2023 10:26:29 +0000 (UTC)
Date:   Thu, 25 May 2023 12:26:28 +0200
From:   Luca Ceresoli <luca.ceresoli@bootlin.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>,
        Kieran Bingham <kieran.bingham@ideasonboard.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de, kernel@pengutronix.de,
        Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: imx8mp-evk: enable HDMI
Message-ID: <20230525122628.13b0f28b@booty>
In-Reply-To: <20230302163525.007503e4@booty>
References: <20220826192932.3217260-1-l.stach@pengutronix.de>
        <20220826192932.3217260-4-l.stach@pengutronix.de>
        <20230302163525.007503e4@booty>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Lucas,

On Thu, 2 Mar 2023 16:35:25 +0100
Luca Ceresoli <luca.ceresoli@bootlin.com> wrote:

> Hello Lucas,
> 
> On Fri, 26 Aug 2022 21:29:32 +0200
> Lucas Stach <l.stach@pengutronix.de> wrote:
> 
> > Enable the DT nodes for HDMI TX and PHY and add the pinctrl for the few
> > involved pins that are configurable.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>  

Any updates to these patches? I haven't found any v2 on the list.

> I'm joining late to this party... Is this the latest version of this
> series? I haven't found any more recent, but if it is not the case
> would you point me to the most recent one please?
> 
> > +	pinctrl_hdmi: hdmigrp {
> > +		fsl,pins = <
> > +			MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL	0x1c3
> > +			MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA	0x1c3  
> 
> Is the low nibble (0x3) right?BIT(0) is reserved according too the
> reference manual.
> 
> Also, all the non-reserved bits in that nibble are bits 1 and 2, which
> set the drive strength. For an I2C line it seems that the minimum drive
> strength (0x0) should be enough for an I2C line: with any drive
> strength setting the supported frequency is >= 65 MHz.
> 
> > +			MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD		0x19
> > +			MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC		0x19  
> 
> Here as well, bits 0 and 3 are reserved.

About these pinctrls, I am using these settings on the MSC SM2-MB-EP1
board and they appear to be working just as those you are using (but I
haven't tested CEC):

  MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL     0x1c2
  MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA     0x1c2
  MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC         0x10
  MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD         0x10

Best regards,
Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
