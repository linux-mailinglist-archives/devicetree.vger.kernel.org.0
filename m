Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00C9B45E89B
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 08:42:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359337AbhKZHpr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 02:45:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353285AbhKZHnq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Nov 2021 02:43:46 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43352C06175F
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 23:40:34 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1mqVqL-00055I-Gi; Fri, 26 Nov 2021 08:40:25 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1mqVqH-0003zL-Jk; Fri, 26 Nov 2021 08:40:21 +0100
Date:   Fri, 26 Nov 2021 08:40:21 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 08/12] arm64: dts: rockchip: rk356x: Add VOP2 nodes
Message-ID: <20211126074021.GH28260@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <20211117143347.314294-9-s.hauer@pengutronix.de>
 <8451aeb1-03c9-6c90-c95e-c4a76e2159b8@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8451aeb1-03c9-6c90-c95e-c4a76e2159b8@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:33:04 up 281 days, 10:56, 123 users,  load average: 0.11, 0.15,
 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 25, 2021 at 09:25:28PM +0100, Johan Jonker wrote:
> Hi Sascha,
> 
> 
> On 11/17/21 3:33 PM, Sascha Hauer wrote:
> > The VOP2 is the display output controller on the RK3568. Add the node
> > for it to the dtsi file along with the required display-subsystem node
> > and the iommu node.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 52 ++++++++++++++++++++++++
> >  1 file changed, 52 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > index 46d9552f60284..6ebf7c14e096a 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > @@ -447,6 +447,58 @@ gmac1_mtl_tx_setup: tx-queues-config {
> >  		};
> >  	};
> >  
> 
> > +	display_subsystem: display-subsystem {
> > +		compatible = "rockchip,display-subsystem";
> > +		ports = <&vop_out>;
> > +	};
> 
> Some DT sort rules:
> 
> For nodes:
> Sort things without reg alphabetical first,
> then sort the rest by reg address.
> 
> > +
> > +	vop: vop@fe040000 {
> 
> > +		compatible = "rockchip,rk3568-vop";
> 
> From rockchip-vop2.yaml:
> +properties:
> +  compatible:
> +    enum:
> 
> +      - rockchip,rk3568-vop
> +      - rockchip,rk3566-vop
> 
> Maybe sort yaml compatibles in alphabetical order.
> 
> rockchip,rk3566-vop is not used in the dtsi I think.
> 
> Comment by Andy Yan:
> > 
> > But take care that the vop on rk3566 has a special limitation: there are 
> > three
> > 
> > windows(Cluster1/Esmart1/Smart1) that have a mirror lock, that means they
> > 
> > can't be programed framebuffer address independently , they can only
> > 
> > share framebuffer address with Cluster0/Esmart0/Smart0.
> 
> Question:
> Given Andy's comment could someone explain weather the vop and hdmi
> nodes should be in rk3566.dtsi and rk3568.dtsi with an extra
> rockchip,rk3566-dw-hdmi compatible?

We could put the vop/hdmi nodes into rk356x.dtsi and just add the
compatible properties to rk3566.dtsi and rk3568.dtsi.
We'll need the exact SoC type, besides the mirror lock thingy there are a
few other minor differences between the SoCs.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
