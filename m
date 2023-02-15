Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38BD66988C4
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 00:28:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229656AbjBOX2w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Feb 2023 18:28:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229493AbjBOX2v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Feb 2023 18:28:51 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E92AA4345F
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 15:28:49 -0800 (PST)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 14F0E10B;
        Thu, 16 Feb 2023 00:28:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1676503728;
        bh=/ASo9q2DOr5dnNQywNkrGAYxylceJCXdEkLg3gFXN3Y=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=b5YbItOFyPCOO7Tsy4aCIt3TLicIrxij5ielLprjG+8ReY2CJsbmP77oqTi0hKddr
         IkQatSAXur3w5KrhB91gdey+hUi71eRrv1Ik5WvuJv5EMfVUpo9If/IBe5MCl9nOWA
         0fJnK7SxLi75KBwkCjUMQSvi7IusD1vRtxivYj2A=
Date:   Thu, 16 Feb 2023 01:28:47 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Teresa Remmet <T.Remmet@phytec.de>
Cc:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "linux-imx@nxp.com" <linux-imx@nxp.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: freescale: imx8mm-phyboard: Add I2C4
 pinmuxing
Message-ID: <Y+1qr7LWjwnyxuNd@pendragon.ideasonboard.com>
References: <20230129170136.14506-1-laurent.pinchart@ideasonboard.com>
 <c5019bcb019ff85722773fc5fb9f2a6d3ecfb771.camel@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <c5019bcb019ff85722773fc5fb9f2a6d3ecfb771.camel@phytec.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Teresa,

On Mon, Jan 30, 2023 at 08:57:16AM +0000, Teresa Remmet wrote:
> Hello Laurent,
> 
> thank you for your patch.
> 
> Am Sonntag, dem 29.01.2023 um 19:01 +0200 schrieb Laurent Pinchart:
> > The I2C4 bus is exposed on the camera connector. Add and select the
> > corresponding pinmux entries and set the default frequency. The device
> > is left disabled, to be enabled from camera overlays.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> >  .../dts/freescale/imx8mm-phyboard-polis-rdk.dts     | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-
> > rdk.dts b/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts
> > index 4a3df2b77b0b..17521bb911c2 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts
> > @@ -168,6 +168,12 @@ &gpio5 {
> >  		"", "ECSPI1_SS0";
> >  };
> >  
> > +&i2c4 {
> > +	clock-frequency = <400000>;
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pinctrl_i2c4>;
> > +};
> > +
> >  /* PCIe */
> >  &pcie0 {
> >  	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
> > @@ -336,6 +342,13 @@ MX8MM_IOMUXC_SAI1_RXD6_GPIO4_IO8	0x16
> >  		>;
> >  	};
> >  
> > +	pinctrl_i2c4: i2c4grp {
> > +		fsl,pins = <
> > +			MX8MM_IOMUXC_I2C4_SCL_I2C4_SCL		0x400001c3
> 
> Bit 0 of the IOMUXC_SW_PAD_CTL_PAD registers is reserved. Can you
> change this in not setting the bit?
> 
> > +			MX8MM_IOMUXC_I2C4_SDA_I2C4_SDA		0x400001c3
> 
> Same here.

Good point. I see you've fixed it recently in your BSP ;-) I'll fix this
patch and resubmit. 

> > +		>;
> > +	};
> > +
> >  	pinctrl_leds: leds1grp {
> >  		fsl,pins = <
> >  			MX8MM_IOMUXC_GPIO1_IO01_GPIO1_IO1	0x16

-- 
Regards,

Laurent Pinchart
