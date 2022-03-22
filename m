Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D95D4E48B9
	for <lists+devicetree@lfdr.de>; Tue, 22 Mar 2022 22:57:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237109AbiCVV7P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Mar 2022 17:59:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237198AbiCVV7O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Mar 2022 17:59:14 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A57896F4A8
        for <devicetree@vger.kernel.org>; Tue, 22 Mar 2022 14:57:46 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 26E0FDFA;
        Tue, 22 Mar 2022 22:57:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1647986264;
        bh=gAE39Xube/yFEa4AH8cqoScCpNo0W4bh0jKxjwaqy2Q=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=BcckQ7g9Z/3r6vP0jiZN9cyeEunWTiID9ZX7QlcBTZeQnH8t8XbANR8AljIH21Lpr
         T0GmQGn4TvgeYQl/knJms3hDHHXIV1LdsLchnyqplIhxo/6fqHosUwMCAriALDmb3U
         xVttKLAZlfz0Vi/F5njPCwOQqJ/rUao0udh9YL1E=
Date:   Tue, 22 Mar 2022 23:57:26 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: soc: Add i.MX8MP media block control
 DT bindings
Message-ID: <YjpGRpQcbKjJQJEG@pendragon.ideasonboard.com>
References: <20220322190324.12589-1-laurent.pinchart@ideasonboard.com>
 <20220322190324.12589-2-laurent.pinchart@ideasonboard.com>
 <3f7bdca8-0da7-fe2d-7bcb-9768b12bb759@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <3f7bdca8-0da7-fe2d-7bcb-9768b12bb759@denx.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On Tue, Mar 22, 2022 at 10:29:56PM +0100, Marek Vasut wrote:
> On 3/22/22 20:03, Laurent Pinchart wrote:
> > From: Paul Elder <paul.elder@ideasonboard.com>
> > 
> > The i.MX8MP Media Block Control (MEDIA BLK_CTRL) is a top-level
> > peripheral providing access to the NoC and ensuring proper power
> > sequencing of the peripherals within the MEDIAMIX domain. Add DT
> > bindings for it.
> > 
> > There is already a driver for block controls of other SoCs in the i.MX8M
> > family, so these bindings will expand upon that.
> > 
> > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> Reviewed-by: Marek Vasut <marex@denx.de>
> 
> [...]
> 
> > +        power-domain-names = "bus", "mipi-dsi1", "mipi-csi1", "lcdif1", "isi",
> > +                             "mipi-csi2", "lcdif2", "isp2", "isp1", "dwe",
> > +                             "mipi-dsi2";
> 
> Nit, I cannot say I'm a big fan of calling the power domain "mipi-csi1" 
> and "mipi-csi2", they are both MIPI CSI2, except there are two of them 
> CSI2 (#1 and #2).
> 
> Maybe mipi-csi2-1 and mipi-csi2-2 would be better ? DTTO for the LCDIF, 
> where we have lcdifv3 and then mx8mp lcdifv3 and eventually we will have 
> power domain for lcdif #3 instance in this SoC in hdmimix, so maybe some 
> lcdif-1/lcdif-2 would be a better name ?

The names come from the reference manual, at least the ones for the
second instance. We have, for instance, SFT_EN_MIPI_CSI_PCLK_RESETN and
SFT_EN_MIPI_CSI2_PCLK_RESETN. Same for DSI and LCDIF, there's DSI and
DSI2, and LCDIF and LCDIF2. The "1" suffix has been added for clarity.

This is a bit bikeshedding territory as I expect the DT node for the
media-blk-ctrl to be written once and never be touched again, so if
anyone feels strongly about using better names (whatever those better
names would be), I don't mind much.

I can submit a v3 once a consensus emerges.

-- 
Regards,

Laurent Pinchart
