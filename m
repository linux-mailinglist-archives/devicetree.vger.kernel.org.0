Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3094454A2C
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 16:41:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238459AbhKQPok (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 10:44:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238514AbhKQPoi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 10:44:38 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C745C061570
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 07:41:39 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1mnN40-0008Dd-MS; Wed, 17 Nov 2021 16:41:32 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1mnN3x-00057n-D4; Wed, 17 Nov 2021 16:41:29 +0100
Date:   Wed, 17 Nov 2021 16:41:29 +0100
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
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
Message-ID: <20211117154129.GM6556@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <CAL_JsqJxJj2JT-0vN45vYyoy_Sh87NnoTfJQH-4qxRoPNwtj5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqJxJj2JT-0vN45vYyoy_Sh87NnoTfJQH-4qxRoPNwtj5Q@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:58:28 up 272 days, 18:22, 147 users,  load average: 0.17, 0.18,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 17, 2021 at 08:54:37AM -0600, Rob Herring wrote:
> On Wed, Nov 17, 2021 at 8:34 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > This series adds initial graphics support for the Rockchip RK356[68]
> > SoCs.  Graphics support is based around the VOP2 controller which
> > replaces the VOP controller found on earlier Rockchip SoCs. The driver
> > has been tested with HDMI support included in this series and MIPI-DSI
> > which is not included because it needs some more work. The driver is
> > taken from the downstream Rockchip kernel and heavily polished, most non
> > standard features have been removed for now. I tested the driver with
> > the libdrm modetest utility and also with weston with both pixman and
> > panfrost driver support. Michael Riesch reported the driver to work on
> > the RK3566 as well, but device tree support for this SoC is not yet
> > included in this series.
> 
> Can you outline what exactly you want to disable? I don't think
> 'status' is the right way. I think between the parent device being
> disabled, an incomplete graph and user configuration choice that
> should be enough to disable parts.

The VOP2 on the RK3568 has three CRTCS, or video ports (VP) in Rockchip
nomenclature. Each of them can be connected to the different outputs,
like HDMI, MIPI-DSI and so on. In the device tree the CRTCs are
described as of-graph ports with links to the HDMI, MIPI-DSI nodes.
An example limited to HDMI looks like this:

	vop: vop@fe040000 {
		compatible = "rockchip,rk3568-vop";
		vop_out: ports {
			vp0: port@0 {
				vp0_out_hdmi: endpoint@0 {
					reg = <0>;
					remote-endpoint = <&hdmi_in_vp0>;
					status = "disabled";
				};

				... MIPI, dP, ...
			};

			vp1: port@1 {
				vp1_out_hdmi: endpoint@0 {
					reg = <0>;
					remote-endpoint = <&hdmi_in_vp1>;
					status = "disabled";
				};

				... MIPI, dP, ...
			};

			vp2: port@2 {
				...
			};
		};
	};

	hdmi: hdmi@fe0a0000 {
		compatible = "rockchip,rk3568-dw-hdmi";
		ports {
			hdmi_in: port@0 {
				hdmi_in_vp0: endpoint@0 {
					reg = <0>;
					remote-endpoint = <&vp0_out_hdmi>;
					status = "disabled";
				};

				hdmi_in_vp1: endpoint@1 {
					reg = <1>;
					remote-endpoint = <&vp1_out_hdmi>;
					status = "disabled";
				};

				...
			};
		};
	};

Theoretically every VP can be routed to every output, but depending on
the board there are some constraints. For example for the three vps
there are only two PLLs for the pixel clock, and the HDMI port is
hardwired to one single PLL. To avoid different VPs setting conflicting
rates on a PLL we can only allow a subset of the possible routes.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
