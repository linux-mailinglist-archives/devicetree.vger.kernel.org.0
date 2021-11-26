Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48E6845E915
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 09:17:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243206AbhKZIVC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 03:21:02 -0500
Received: from gloria.sntech.de ([185.11.138.130]:49520 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1359404AbhKZITC (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Nov 2021 03:19:02 -0500
Received: from ip5f5b2004.dynamic.kabel-deutschland.de ([95.91.32.4] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1mqWOX-0008Mz-Bs; Fri, 26 Nov 2021 09:15:45 +0100
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     Johan Jonker <jbx6244@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 08/12] arm64: dts: rockchip: rk356x: Add VOP2 nodes
Date:   Fri, 26 Nov 2021 09:15:44 +0100
Message-ID: <2143457.uCsENmBeE3@diego>
In-Reply-To: <20211126074021.GH28260@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de> <8451aeb1-03c9-6c90-c95e-c4a76e2159b8@gmail.com> <20211126074021.GH28260@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Freitag, 26. November 2021, 08:40:21 CET schrieb Sascha Hauer:
> On Thu, Nov 25, 2021 at 09:25:28PM +0100, Johan Jonker wrote:
> > Hi Sascha,
> > 
> > 
> > On 11/17/21 3:33 PM, Sascha Hauer wrote:
> > > The VOP2 is the display output controller on the RK3568. Add the node
> > > for it to the dtsi file along with the required display-subsystem node
> > > and the iommu node.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 52 ++++++++++++++++++++++++
> > >  1 file changed, 52 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > > index 46d9552f60284..6ebf7c14e096a 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > > +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > > @@ -447,6 +447,58 @@ gmac1_mtl_tx_setup: tx-queues-config {
> > >  		};
> > >  	};
> > >  
> > 
> > > +	display_subsystem: display-subsystem {
> > > +		compatible = "rockchip,display-subsystem";
> > > +		ports = <&vop_out>;
> > > +	};
> > 
> > Some DT sort rules:
> > 
> > For nodes:
> > Sort things without reg alphabetical first,
> > then sort the rest by reg address.
> > 
> > > +
> > > +	vop: vop@fe040000 {
> > 
> > > +		compatible = "rockchip,rk3568-vop";
> > 
> > From rockchip-vop2.yaml:
> > +properties:
> > +  compatible:
> > +    enum:
> > 
> > +      - rockchip,rk3568-vop
> > +      - rockchip,rk3566-vop
> > 
> > Maybe sort yaml compatibles in alphabetical order.
> > 
> > rockchip,rk3566-vop is not used in the dtsi I think.
> > 
> > Comment by Andy Yan:
> > > 
> > > But take care that the vop on rk3566 has a special limitation: there are 
> > > three
> > > 
> > > windows(Cluster1/Esmart1/Smart1) that have a mirror lock, that means they
> > > 
> > > can't be programed framebuffer address independently , they can only
> > > 
> > > share framebuffer address with Cluster0/Esmart0/Smart0.
> > 
> > Question:
> > Given Andy's comment could someone explain weather the vop and hdmi
> > nodes should be in rk3566.dtsi and rk3568.dtsi with an extra
> > rockchip,rk3566-dw-hdmi compatible?
> 
> We could put the vop/hdmi nodes into rk356x.dtsi and just add the
> compatible properties to rk3566.dtsi and rk3568.dtsi.

sounds about right. We have similar solutions in place in other socs.

Heiko



