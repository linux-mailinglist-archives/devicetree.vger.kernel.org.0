Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9AA97120341
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2019 12:04:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727501AbfLPLDR convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 16 Dec 2019 06:03:17 -0500
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:32845 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727466AbfLPLDR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Dec 2019 06:03:17 -0500
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id DB96C24001C;
        Mon, 16 Dec 2019 11:03:13 +0000 (UTC)
Date:   Mon, 16 Dec 2019 12:03:12 +0100
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 09/12] drm/rockchip: lvds: Add PX30 support
Message-ID: <20191216120312.4aa478da@xps13>
In-Reply-To: <20191216105827.rxkfbwemkqw446jx@gilmour.lan>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
        <20191213181051.25983-10-miquel.raynal@bootlin.com>
        <20191216105827.rxkfbwemkqw446jx@gilmour.lan>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maxime,

Maxime Ripard <maxime@cerno.tech> wrote on Mon, 16 Dec 2019 11:58:27
+0100:

> Hi,
> 
> On Fri, Dec 13, 2019 at 07:10:48PM +0100, Miquel Raynal wrote:
> > +static int px30_lvds_grf_config(struct drm_encoder *encoder,
> > +				struct drm_display_mode *mode)
> > +{
> > +	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
> > +	u8 nhsync = !(mode->flags & DRM_MODE_FLAG_PHSYNC);
> > +	u8 nvsync = !(mode->flags & DRM_MODE_FLAG_PVSYNC);
> > +	u8 ndclk = !(mode->flags & DRM_MODE_FLAG_PCSYNC);
> > +	int ret;
> > +
> > +	if (lvds->output != DISPLAY_OUTPUT_LVDS) {
> > +		DRM_DEV_ERROR(lvds->dev, "Unsupported display output %d\n",
> > +			      lvds->output);
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (nhsync ^ nvsync) {
> > +		DRM_DEV_ERROR(lvds->dev, "Unsupported Hsync/Vsync polarity\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	/* Set format */
> > +	ret = regmap_update_bits(lvds->grf, PX30_LVDS_GRF_PD_VO_CON1,
> > +				 PX30_LVDS_FORMAT(lvds->format),
> > +				 PX30_LVDS_FORMAT(lvds->format));
> > +	if (ret)
> > +		return ret;
> > +
> > +	/* Control Hsync/Vsync polarity */
> > +	ret = regmap_update_bits(lvds->grf, PX30_LVDS_GRF_PD_VO_CON0,
> > +				 PX30_LVDS_TIE_CLKS(1),
> > +				 PX30_LVDS_TIE_CLKS(1));
> > +	if (ret)
> > +		return ret;
> > +
> > +	/* Set Hsync/Vsync polarity */
> > +	ret = regmap_update_bits(lvds->grf, PX30_LVDS_GRF_PD_VO_CON0,
> > +				 PX30_LVDS_INVERT_CLKS(1),
> > +				 PX30_LVDS_INVERT_CLKS(nhsync));
> > +	if (ret)
> > +		return ret;  
> 
> I don't know the hardware but it seems pretty weird to me. hsync and
> vsync in LVDS are not clocks (or even signals), they're a bit in the
> payload. Is there any explanation in the datasheet (or even a
> datasheet in the first place)?

There is no explanation about this in the PX30 TRM part 1 (public). But
you are right the naming is weird. Could the "tie clocks" thing above
mean something to you/people knowing the LVDS world?

Cheers,
Miquèl
