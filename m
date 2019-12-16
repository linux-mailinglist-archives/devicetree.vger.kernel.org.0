Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 846A112040A
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2019 12:35:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727377AbfLPLfF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Dec 2019 06:35:05 -0500
Received: from pandora.armlinux.org.uk ([78.32.30.218]:38044 "EHLO
        pandora.armlinux.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727274AbfLPLfE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Dec 2019 06:35:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=n73CyjMCqSKZkVyvGTrxdoiHOlBdDgdbZjZVrU1/nds=; b=MqiaVdcPcT+aDlGgSmzA23X2j
        4lQ3aor0A63huFN55+D8c+fuJDw3Yu4rqaXrBrkh+0RWc4IYJ5YqCGKlGzBDdidftrXXEMLvec0Ig
        XiJiv0h/psysHKVNfzOChb/zy/1qkDtLgquM8HSpRaJMzFc3lb0QxoVHmrAAj+xG9U+J9mgZIOfLW
        SnJCibte+pAyicnUgnkgkWsP/JDdU/h3PSpsmCuLtwAM2DiBxEleMTs9ncKAa7Vn6e54AcH3uWs1f
        cv0Fk+0bogaTVXEerQCZSe30lAm8oGSnBfCJFRmj+hd++YLQxafICyWdY7FArpffMqWzO2T17FqQs
        gSmHe4P/Q==;
Received: from shell.armlinux.org.uk ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:49602)
        by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
        (Exim 4.90_1)
        (envelope-from <linux@armlinux.org.uk>)
        id 1igoeQ-00072Q-BP; Mon, 16 Dec 2019 11:34:58 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
        (envelope-from <linux@shell.armlinux.org.uk>)
        id 1igoeO-0002Ln-1S; Mon, 16 Dec 2019 11:34:56 +0000
Date:   Mon, 16 Dec 2019 11:34:56 +0000
From:   Russell King - ARM Linux admin <linux@armlinux.org.uk>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        Jon Nettleton <jon@solid-run.com>,
        Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Rabeeh Khoury <rabeeh@solid-run.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: lx2160a: add MDIO descriptions
Message-ID: <20191216113455.GF25745@shell.armlinux.org.uk>
References: <20191209120010.GG25745@shell.armlinux.org.uk>
 <E1ieHiP-0004wT-2O@rmk-PC.armlinux.org.uk>
 <20191211073330.GO15858@dragon>
 <20191216110253.GE25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191216110253.GE25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 16, 2019 at 11:02:53AM +0000, Russell King - ARM Linux admin wrote:
> On Wed, Dec 11, 2019 at 03:33:31PM +0800, Shawn Guo wrote:
> > On Mon, Dec 09, 2019 at 12:00:37PM +0000, Russell King wrote:
> > > Add MDIO descriptions to the lx2160a dtsi file, so we can use them in
> > > the SolidRun Clearfog CX platform.
> > > 
> > > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > > ---
> > >  .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 20 +++++++++++++++++++
> > >  1 file changed, 20 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > > index 0bd98f179bfa..617e1f1a2339 100644
> > > --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > > @@ -863,6 +863,26 @@
> > >  			fsl,extts-fifo;
> > >  		};
> > >  
> > > +		emdio1: mdio@8b96000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x00 0x8b96000 0x00 0x1000>;
> > > +			interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> > > +			little-endian;
> > > +			#address-cells = <0x01>;
> > > +			#size-cells = <0x00>;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		emdio2: mdio@8b97000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x00 0x8b97000 0x00 0x1000>;
> > > +			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
> > > +			little-endian;
> > > +			#address-cells = <0x01>;
> > > +			#size-cells = <0x00>;
> > > +			status = "disabled";
> > > +		};
> > > +
> > 
> > Ioana Ciornei already had a patch [1] adding emdio1, but unfortunately,
> > emdio2 was missing from there.
> > 
> > Shawn
> > 
> > [1] https://lkml.org/lkml/2019/12/4/675
> 
> Okay, I'll wait until after the next merge window before resubmitting.
> Thanks.

Just to be clear: the reasons are:
1) Ioana's patch was _not_ copied to linux-arm-kernel as it should have
   been.
2) I can't download the patch off lkml.org to sanely rebase on top of it
3) I'm not hunting around to try and find it on another archive site
4) I'm not digging about in random git trees trying to find it.

This makes it unnecessarily difficult to progress these patches.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up
