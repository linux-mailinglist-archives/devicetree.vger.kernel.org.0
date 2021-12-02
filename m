Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79020466697
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 16:35:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347762AbhLBPi1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Dec 2021 10:38:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347193AbhLBPi1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Dec 2021 10:38:27 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DCF5C06174A
        for <devicetree@vger.kernel.org>; Thu,  2 Dec 2021 07:35:04 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1mso6o-0003wx-BZ; Thu, 02 Dec 2021 16:34:54 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1mso6j-0002L9-NR; Thu, 02 Dec 2021 16:34:49 +0100
Date:   Thu, 2 Dec 2021 16:34:49 +0100
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
Subject: Re: [PATCH 10/12] arm64: dts: rockchip: rk3568-evb: Enable VOP2 and
 hdmi
Message-ID: <20211202153449.GG25697@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <20211117143347.314294-11-s.hauer@pengutronix.de>
 <CAL_JsqL7C32FB47=xfUtndtCvfOQx7f3Gq0O0FqZxRoeS1fNSQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqL7C32FB47=xfUtndtCvfOQx7f3Gq0O0FqZxRoeS1fNSQ@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:25:33 up 287 days, 18:49, 150 users,  load average: 0.12, 0.11,
 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 17, 2021 at 09:19:38AM -0600, Rob Herring wrote:
> On Wed, Nov 17, 2021 at 8:34 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > This enabled the VOP2 display controller along with hdmi and the
> > required port routes which is enough to get a picture out of the
> > hdmi port of the board.
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 24 +++++++++++++++++++
> >  1 file changed, 24 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> > index 184e2aa2416af..156e001492173 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> > @@ -106,6 +106,12 @@ &gmac1m1_rgmii_clk
> >         status = "okay";
> >  };
> >
> > +&hdmi {
> > +       status = "okay";
> > +       avdd-0v9-supply = <&vdda0v9_image>;
> > +       avdd-1v8-supply = <&vcca1v8_image>;
> > +};
> > +
> >  &i2c0 {
> >         status = "okay";
> >
> > @@ -390,3 +396,21 @@ &sdmmc0 {
> >  &uart2 {
> >         status = "okay";
> >  };
> > +
> > +&vop {
> > +       status = "okay";
> > +       assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
> > +       assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
> > +};
> > +
> > +&vop_mmu {
> > +       status = "okay";
> > +};
> > +
> > +&hdmi_in_vp0 {
> > +       status = "okay";
> > +};
> > +
> > +&vp0_out_hdmi {
> > +       status = "okay";
> > +};
> 
> You can accomplish the same thing already with:
> 
> &vp0_out_hdmi {
>   remote-endpoint = <&hdmi_in_vp0>;
> };

My idea was to describe all possible connections in the dtsi file and
let the board dts writer only en/disable the needed connections. When
the connections are specified in the dts file then writing it is more
difficult and error prone.

> 
> or:
> 
> &vp0_out_hdmi {
>   /delete-property/ remote-endpoint;
> };

With this I have to change all connections that I don't need. With
status = "okay" I have to change all connections that I actually do
need, which will be much easier to read and write.

I'll stick to the status = "okay" method for the next round, maybe I can
still convince you ;)

If it's the 'status' property you don't like being used when it's not a
device that is enabled/disabled, then every other name would be fine
with me as well.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
