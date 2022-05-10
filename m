Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F58F52251D
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 21:59:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232491AbiEJT70 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 15:59:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232705AbiEJT7V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 15:59:21 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B0B229839D
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 12:59:19 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0042AB60;
        Tue, 10 May 2022 21:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1652212756;
        bh=VnHTc7MNj7HVzFcbXik+9OgFP5oxXbOik9ebURSeNQs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=oBtM2gRSaaxlNsKeOugN/MIokH3MlU2tnpEnTwCWjpHGUuHnyQdzxMu1lr4oFGSIq
         hViOu/H6TcJMzM7h5E4GewCO4hmkoHR4L9zflUSD4DOcJ1u8zoQwHrXIEJySCrXWkt
         z1gzKd1tNZlnvnuUNgC9vmvqhcgX0Qx+RLy+gAXM=
Date:   Tue, 10 May 2022 22:59:10 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v4 03/11] dt-bindings: soc: Add i.MX8MP media block
 control DT bindings
Message-ID: <YnrEDq3f+fhCgE2R@pendragon.ideasonboard.com>
References: <20220406153402.1265474-1-l.stach@pengutronix.de>
 <20220406153402.1265474-4-l.stach@pengutronix.de>
 <CAL_JsqJBxWhJpEp6f2kenjX=eOq6MPXTY1w-Jp8zpF7RwQAT1w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAL_JsqJBxWhJpEp6f2kenjX=eOq6MPXTY1w-Jp8zpF7RwQAT1w@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 09, 2022 at 07:39:22AM -0500, Rob Herring wrote:
> On Wed, Apr 6, 2022 at 10:34 AM Lucas Stach <l.stach@pengutronix.de> wrote:
> >
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
> > Reviewed-by: Marek Vasut <marex@denx.de>
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  .../soc/imx/fsl,imx8mp-media-blk-ctrl.yaml    | 104 ++++++++++++++++++
> >  include/dt-bindings/power/imx8mp-power.h      |  10 ++
> >  2 files changed, 114 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> 
> This is now failing in linux-next:
> 
> /builds/robherring/linux-dt/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.example.dtb:
> blk-ctl@32ec0000: power-domain-names:7: 'isp' was expected
>  From schema: /builds/robherring/linux-dt/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml

I'm not sure how that went past my tests :-S Sorry about it, I'll submit
a fix shortly.

-- 
Regards,

Laurent Pinchart
