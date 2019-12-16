Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2ABE7120340
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2019 12:04:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727485AbfLPLDH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Dec 2019 06:03:07 -0500
Received: from pandora.armlinux.org.uk ([78.32.30.218]:37624 "EHLO
        pandora.armlinux.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727466AbfLPLDH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Dec 2019 06:03:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=XJ6t/pFlC3K5rIsLbz5VvrPkJShYdpcCpsxUEpi01j4=; b=KYxC1EQCERvt/T7I2Nuflwy4J
        THmLSXt2fNtPkDwzOGvGh7iCsyyALl5kOwP+ZXDnjlI7GusUsG3aVXqTFA0wZMcYfIyA4OEudhIri
        x6koXj2ziETizSNUviSWHw2GlMdrh4jUOiaWUNk3PVO+cmIXc/0iE5CwmXdCacMu6GgLkDuF2ArlE
        dbDJG7I3AKwrpqFmmuVyKZR+IirOo4Fbkw14WAMyr4ctAtGEfcpppGMVnonBOYtP2ii2J1MY4yJTH
        qznEhG2GMETj5nDWIzoGJB4VXGcooACTUCWMGmahSZHggv8cT8Hk6HNdTIBeCo2JLmdv/qdOeoCzF
        JzHBCIatg==;
Received: from shell.armlinux.org.uk ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:42078)
        by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
        (Exim 4.90_1)
        (envelope-from <linux@armlinux.org.uk>)
        id 1igo9P-0006r5-0L; Mon, 16 Dec 2019 11:02:55 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
        (envelope-from <linux@shell.armlinux.org.uk>)
        id 1igo9N-0002Ke-Fm; Mon, 16 Dec 2019 11:02:53 +0000
Date:   Mon, 16 Dec 2019 11:02:53 +0000
From:   Russell King - ARM Linux admin <linux@armlinux.org.uk>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Jon Nettleton <jon@solid-run.com>,
        Rabeeh Khoury <rabeeh@solid-run.com>,
        Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: lx2160a: add MDIO descriptions
Message-ID: <20191216110253.GE25745@shell.armlinux.org.uk>
References: <20191209120010.GG25745@shell.armlinux.org.uk>
 <E1ieHiP-0004wT-2O@rmk-PC.armlinux.org.uk>
 <20191211073330.GO15858@dragon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191211073330.GO15858@dragon>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 11, 2019 at 03:33:31PM +0800, Shawn Guo wrote:
> On Mon, Dec 09, 2019 at 12:00:37PM +0000, Russell King wrote:
> > Add MDIO descriptions to the lx2160a dtsi file, so we can use them in
> > the SolidRun Clearfog CX platform.
> > 
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > ---
> >  .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 20 +++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > index 0bd98f179bfa..617e1f1a2339 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > @@ -863,6 +863,26 @@
> >  			fsl,extts-fifo;
> >  		};
> >  
> > +		emdio1: mdio@8b96000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x00 0x8b96000 0x00 0x1000>;
> > +			interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> > +			little-endian;
> > +			#address-cells = <0x01>;
> > +			#size-cells = <0x00>;
> > +			status = "disabled";
> > +		};
> > +
> > +		emdio2: mdio@8b97000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x00 0x8b97000 0x00 0x1000>;
> > +			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
> > +			little-endian;
> > +			#address-cells = <0x01>;
> > +			#size-cells = <0x00>;
> > +			status = "disabled";
> > +		};
> > +
> 
> Ioana Ciornei already had a patch [1] adding emdio1, but unfortunately,
> emdio2 was missing from there.
> 
> Shawn
> 
> [1] https://lkml.org/lkml/2019/12/4/675

Okay, I'll wait until after the next merge window before resubmitting.
Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up
