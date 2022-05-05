Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0ABD451BB61
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 11:05:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234487AbiEEJJc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 05:09:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234283AbiEEJJc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 05:09:32 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E69BBF65
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 02:05:51 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nmXQe-0001Q4-00; Thu, 05 May 2022 11:05:44 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nmXQb-0007lM-D7; Thu, 05 May 2022 11:05:41 +0200
Date:   Thu, 5 May 2022 11:05:41 +0200
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Frank Wunderlich <frank-w@public-files.de>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v11 17/24] arm64: dts: rockchip: rk356x: Add HDMI nodes
Message-ID: <20220505090541.GN4012@pengutronix.de>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-18-s.hauer@pengutronix.de>
 <trinity-bfbffcba-d1ed-40f7-8f37-0c8ad9245e3c-1651740303894@3c-app-gmx-bs47>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <trinity-bfbffcba-d1ed-40f7-8f37-0c8ad9245e3c-1651740303894@3c-app-gmx-bs47>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:03:13 up 35 days, 21:32, 83 users,  load average: 0.45, 0.31,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 05, 2022 at 10:45:03AM +0200, Frank Wunderlich wrote:
> Hi,
> 
> > Gesendet: Freitag, 22. April 2022 um 09:28 Uhr
> > Von: "Sascha Hauer" <s.hauer@pengutronix.de>
> > Betreff: [PATCH v11 17/24] arm64: dts: rockchip: rk356x: Add HDMI nodes
> >
> > Add support for the HDMI port found on RK3568.
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >
> > Notes:
> >     Changes since v7:
> >     - Rename hclk to niu
> 
> clock-name no more present since v9, see below
> 
> >     Changes since v5:
> >     - Drop unnecessary #size-cells/#address-cells from nodes with only single endpoint
> >
> ...
> > --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > @@ -620,6 +620,38 @@ vop_mmu: iommu@fe043e00 {
> >  		status = "disabled";
> >  	};
> >
> > +	hdmi: hdmi@fe0a0000 {
> > +		compatible = "rockchip,rk3568-dw-hdmi";
> > +		reg = <0x0 0xfe0a0000 0x0 0x20000>;
> > +		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
> > +		clocks = <&cru PCLK_HDMI_HOST>,
> > +			 <&cru CLK_HDMI_SFR>,
> > +			 <&cru CLK_HDMI_CEC>,
> > +			 <&pmucru CLK_HDMI_REF>,
> > +			 <&cru HCLK_VO>;
> > +		clock-names = "iahb", "isfr", "cec", "ref";
> 
> noticed there are still 5 clocks, but only 4 clock-names. So i added "niu" after ref.
> maybe missing clock-name was causing my iommu page-faults...on a quick test i have not got it,
> but they came not every time.

The clock is not handled by the HDMI driver, so it shouldn't be the
cause for any failure. It should be dropped here.

Heiko, could you apply the below patch or squash it into the original
one?

Sascha

-------------------------------8<---------------------------

From 8e5f90273401d98b2202676aafd49a350c9c4abd Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 5 May 2022 10:59:48 +0200
Subject: [PATCH] arm64: dts: rockchip: rk356x: remove extra hdmi clock

HCLK_VO is not handled by the HDMI driver. This is a leftover from
earlier VOP2 series. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 1a359bbf65300..49eb45e23f8c9 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -627,8 +627,7 @@ hdmi: hdmi@fe0a0000 {
 		clocks = <&cru PCLK_HDMI_HOST>,
 			 <&cru CLK_HDMI_SFR>,
 			 <&cru CLK_HDMI_CEC>,
-			 <&pmucru CLK_HDMI_REF>,
-			 <&cru HCLK_VO>;
+			 <&pmucru CLK_HDMI_REF>;
 		clock-names = "iahb", "isfr", "cec", "ref";
 		pinctrl-names = "default";
 		pinctrl-0 = <&hdmitx_scl &hdmitx_sda &hdmitxm0_cec>;
-- 
2.30.2

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
