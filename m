Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48A58465275
	for <lists+devicetree@lfdr.de>; Wed,  1 Dec 2021 17:05:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351152AbhLAQI5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Dec 2021 11:08:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351355AbhLAQIq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Dec 2021 11:08:46 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24A3DC061759
        for <devicetree@vger.kernel.org>; Wed,  1 Dec 2021 08:05:01 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1msS6G-00018X-SS; Wed, 01 Dec 2021 17:04:52 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1msS6D-0007gg-9U; Wed, 01 Dec 2021 17:04:49 +0100
Date:   Wed, 1 Dec 2021 17:04:49 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Rob Herring <robh@kernel.org>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 09/12] arm64: dts: rockchip: rk356x: Add HDMI nodes
Message-ID: <20211201160449.GF25697@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <20211117143347.314294-10-s.hauer@pengutronix.de>
 <CAL_JsqJH4NZkte_2w9i1zf9UrkYZx3du4ja5i__Vzki5p13zBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqJH4NZkte_2w9i1zf9UrkYZx3du4ja5i__Vzki5p13zBQ@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 17:03:19 up 286 days, 19:27, 150 users,  load average: 0.49, 0.50,
 0.37
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 17, 2021 at 09:13:33AM -0600, Rob Herring wrote:
> On Wed, Nov 17, 2021 at 8:34 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > Add support for the HDMI port found on RK3568.
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 65 ++++++++++++++++++++++++
> >  1 file changed, 65 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > index 6ebf7c14e096a..53be61a7ce595 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > @@ -472,18 +472,36 @@ vp0: port@0 {
> >                                 #address-cells = <1>;
> >                                 #size-cells = <0>;
> >                                 reg = <0>;
> > +
> > +                               vp0_out_hdmi: endpoint@0 {
> > +                                       reg = <0>;
> > +                                       remote-endpoint = <&hdmi_in_vp0>;
> > +                                       status = "disabled";
> > +                               };
> >                         };
> >
> >                         vp1: port@1 {
> >                                 #address-cells = <1>;
> >                                 #size-cells = <0>;
> >                                 reg = <1>;
> > +
> > +                               vp1_out_hdmi: endpoint@0 {
> > +                                       reg = <0>;
> > +                                       remote-endpoint = <&hdmi_in_vp1>;
> > +                                       status = "disabled";
> > +                               };
> >                         };
> >
> >                         vp2: port@2 {
> >                                 #address-cells = <1>;
> >                                 #size-cells = <0>;
> >                                 reg = <2>;
> > +
> > +                               vp2_out_hdmi: endpoint@0 {
> > +                                       reg = <0>;
> > +                                       remote-endpoint = <&hdmi_in_vp2>;
> > +                                       status = "disabled";
> > +                               };
> >                         };
> >                 };
> >         };
> > @@ -499,6 +517,53 @@ vop_mmu: iommu@fe043e00 {
> >                 status = "disabled";
> >         };
> >
> > +       hdmi: hdmi@fe0a0000 {
> > +               compatible = "rockchip,rk3568-dw-hdmi";
> > +               reg = <0x0 0xfe0a0000 0x0 0x20000>;
> > +               interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
> > +               clocks = <&cru PCLK_HDMI_HOST>,
> > +                        <&cru CLK_HDMI_SFR>,
> > +                        <&cru CLK_HDMI_CEC>,
> > +                        <&cru HCLK_VOP>;
> > +               clock-names = "iahb", "isfr", "cec", "hclk";
> > +               power-domains = <&power RK3568_PD_VO>;
> > +               reg-io-width = <4>;
> > +               rockchip,grf = <&grf>;
> > +               #sound-dai-cells = <0>;
> > +               pinctrl-names = "default";
> > +               pinctrl-0 = <&hdmitx_scl &hdmitx_sda &hdmitxm0_cec>;
> > +               status = "disabled";
> > +
> > +               ports {
> > +                       #address-cells = <1>;
> > +                       #size-cells = <0>;
> > +
> > +                       hdmi_in: port@0 {
> 
> 
> The schema says there is only 1 'port' node. Please run schema
> validation when making DT changes.
> 
> However, an HDMI bridge should also define an output port to a
> connector node (or another bridge). So the fix is to allow 'port@0'
> and add an output port.

The rockchip bindings traditionally don't have a connector explicitly
specified in their device trees. I'll stick to that for the next round.
If necessary I'll look later what it takes to add a connector node.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
