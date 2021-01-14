Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D290C2F5F39
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 11:49:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725982AbhANKso (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 05:48:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725954AbhANKso (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 05:48:44 -0500
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0957C061574
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 02:48:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=ZI8nJBA6YToj7X3d9J8shqlMMpoQgWifW0e1wy+7GWo=; b=oZMqWILVcB1MSbVTUqdSws3PP
        eJjP27lAmLwI2/Rn1B7jQdSq0Voc8xRWcONMVtcIPtm2tA+pfeSrFxZtUncQH4929EZom0wnGSrLX
        YmNrRUukPmUw6nGimfs6HDpZNtbOFBPjMVW+j4DLY8ZEsth1zzLEVKJ1h88pcPR2bD+O8d+CAJfWF
        vXjmEVI6EsEPeAASP43B9tS1OuxwYyXLiG1Nq/U87WZa3VUyM6LMRDXGJkJPJEqekHumOS6y3ziKF
        0hPBFAMOqmH+vsYaVsf6MKXmfzurLmzulwSo1aiETx7xEg9GyXpM3N7FL4aC+BjJmyIGj5bvG3P/L
        GIPppaSuA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:47834)
        by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <linux@armlinux.org.uk>)
        id 1l00AZ-0002Kq-Dp; Thu, 14 Jan 2021 10:47:59 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
        (envelope-from <linux@shell.armlinux.org.uk>)
        id 1l00AY-0008HK-Lo; Thu, 14 Jan 2021 10:47:58 +0000
Date:   Thu, 14 Jan 2021 10:47:58 +0000
From:   Russell King - ARM Linux admin <linux@armlinux.org.uk>
To:     Marc Kleine-Budde <mkl@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: imx6qdl-sr-som: fix some cubox-i platforms
Message-ID: <20210114104758.GQ1551@shell.armlinux.org.uk>
References: <E1kzzzC-0004lA-UB@rmk-PC.armlinux.org.uk>
 <9cf5e6d3-15c4-04d6-cdfe-dd40d5e17eb4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9cf5e6d3-15c4-04d6-cdfe-dd40d5e17eb4@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 14, 2021 at 11:37:47AM +0100, Marc Kleine-Budde wrote:
> On 1/14/21 11:36 AM, Russell King wrote:
> > The PHY address bit 2 is configured by the LED pin. Attaching a LED
> > to this pin is not sufficient to guarantee this configuration pin is
> > correctly read. This leads to some platforms having their PHY at
> > address 0 and others at address 4.
> > 
> > If there is no phy-handle specified, the FEC driver will scan the PHY
> > bus for a PHY and use that. Consequently, adding the DT configuration
> > of the PHY and the phy properties to the FEC driver broke some boards.
> > 
> > Fix this by removing the phy-handle property, and listing two PHY
> > entries for both possible PHY addresses, so that the DT configuration
> > for the PHY can be found by the PHY driver.
> > 
> > Fixes: 86b08bd5b994 ("ARM: dts: imx6-sr-som: add ethernet PHY configuration")
> > Reported-by: Christoph Mattheis <christoph.mattheis@arcor.de>
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > ---
> >  arch/arm/boot/dts/imx6qdl-sr-som.dtsi | 11 +++++++++--
> >  1 file changed, 9 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> > index b06577808ff4..bba21dfef103 100644
> > --- a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> > +++ b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> > @@ -53,7 +53,6 @@
> >  &fec {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_microsom_enet_ar8035>;
> > -	phy-handle = <&phy>;
> >  	phy-mode = "rgmii-id";
> >  	phy-reset-duration = <2>;
> >  	phy-reset-gpios = <&gpio4 15 GPIO_ACTIVE_LOW>;
> > @@ -63,7 +62,15 @@
> >  		#address-cells = <1>;
> >  		#size-cells = <0>;
> >  
> > -		phy: ethernet-phy@0 {
> > +		/*
> > +		 * The PHY can appear at either address 0 or 4 due to the
> > +		 * configuration (LED) pin not being pulled sufficiently.
> > +		 */
> > +		ethernet-phy@0 {
> > +			reg = <0>;
> > +			qca,clk-out-frequency = <125000000>;
> > +		};
> > +		ethernet-phy@4 {
> >  			reg = <0>;
>                                ^
> 4?

Yes of course, thanks for spotting so quickly.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!
