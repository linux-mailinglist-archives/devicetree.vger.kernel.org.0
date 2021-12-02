Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 575BD4666E8
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 16:41:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347998AbhLBPoy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Dec 2021 10:44:54 -0500
Received: from gloria.sntech.de ([185.11.138.130]:33640 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1359094AbhLBPow (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 2 Dec 2021 10:44:52 -0500
Received: from ip4d17a2ab.dynamic.kabel-deutschland.de ([77.23.162.171] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1msoD1-0000g5-2c; Thu, 02 Dec 2021 16:41:19 +0100
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     Rob Herring <robh@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 10/12] arm64: dts: rockchip: rk3568-evb: Enable VOP2 and hdmi
Date:   Thu, 02 Dec 2021 16:41:17 +0100
Message-ID: <6427725.puVkvWICD3@diego>
In-Reply-To: <20211202153449.GG25697@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de> <CAL_JsqL7C32FB47=xfUtndtCvfOQx7f3Gq0O0FqZxRoeS1fNSQ@mail.gmail.com> <20211202153449.GG25697@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sascha,

Am Donnerstag, 2. Dezember 2021, 16:34:49 CET schrieb Sascha Hauer:
> On Wed, Nov 17, 2021 at 09:19:38AM -0600, Rob Herring wrote:
> > On Wed, Nov 17, 2021 at 8:34 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > >
> > > This enabled the VOP2 display controller along with hdmi and the
> > > required port routes which is enough to get a picture out of the
> > > hdmi port of the board.
> > >
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 24 +++++++++++++++++++
> > >  1 file changed, 24 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> > > index 184e2aa2416af..156e001492173 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> > > @@ -106,6 +106,12 @@ &gmac1m1_rgmii_clk
> > >         status = "okay";
> > >  };
> > >
> > > +&hdmi {
> > > +       status = "okay";
> > > +       avdd-0v9-supply = <&vdda0v9_image>;
> > > +       avdd-1v8-supply = <&vcca1v8_image>;
> > > +};
> > > +
> > >  &i2c0 {
> > >         status = "okay";
> > >
> > > @@ -390,3 +396,21 @@ &sdmmc0 {
> > >  &uart2 {
> > >         status = "okay";
> > >  };
> > > +
> > > +&vop {
> > > +       status = "okay";
> > > +       assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
> > > +       assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
> > > +};
> > > +
> > > +&vop_mmu {
> > > +       status = "okay";
> > > +};
> > > +
> > > +&hdmi_in_vp0 {
> > > +       status = "okay";
> > > +};
> > > +
> > > +&vp0_out_hdmi {
> > > +       status = "okay";
> > > +};
> > 
> > You can accomplish the same thing already with:
> > 
> > &vp0_out_hdmi {
> >   remote-endpoint = <&hdmi_in_vp0>;
> > };
> 
> My idea was to describe all possible connections in the dtsi file and
> let the board dts writer only en/disable the needed connections. When
> the connections are specified in the dts file then writing it is more
> difficult and error prone.
> 
> > 
> > or:
> > 
> > &vp0_out_hdmi {
> >   /delete-property/ remote-endpoint;
> > };
> 
> With this I have to change all connections that I don't need. With
> status = "okay" I have to change all connections that I actually do
> need, which will be much easier to read and write.
> 
> I'll stick to the status = "okay" method for the next round, maybe I can
> still convince you ;)
> 
> If it's the 'status' property you don't like being used when it's not a
> device that is enabled/disabled, then every other name would be fine
> with me as well.

hmm, we do have code in the rockchip drm-driver to find out
if the device at the end of a graph-connection is disabled or not [0] ,
So on previous Rockchip socs, there are already all connections
established, and the driver weeds out the disabled ones.

So I'm wondering what is missing to use that in a vop2 context?


Heiko

[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/rockchip/rockchip_drm_drv.c#n274


