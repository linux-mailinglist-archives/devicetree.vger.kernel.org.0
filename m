Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5FEF2539863
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 23:02:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232635AbiEaVCs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 17:02:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346950AbiEaVCr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 17:02:47 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8B4B8E19D
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 14:02:46 -0700 (PDT)
Received: from pendragon.ideasonboard.com (lmontsouris-659-1-41-236.w92-154.abo.wanadoo.fr [92.154.76.236])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id EB4485BA;
        Tue, 31 May 2022 23:02:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1654030964;
        bh=FXArs8ScxzgO+QgXzq/hXpSgwRr3+22eaAAO92pkKDk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Pn8knENyd/ilMDhLRbzIM4g+eX2enXvZ0d7kXnAR/e2RWt/cvxAHFwG2pezJ21E/W
         Cst3laHmoVI9L+yWpN7H33/9zpr/aRzyNSDL2YF3gZX8OpkWF726MO9SmzyY/YkIzj
         v5AEWz26bE6ZDeWS7gCFOXFAF/1WyZEbnvorLuMY=
Date:   Wed, 1 Jun 2022 00:02:39 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Paul Elder <paul.elder@ideasonboard.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: soc: imx8mp-media-blk-ctrl: Fix DT example
Message-ID: <YpaCb5iZYY0fbkw9@pendragon.ideasonboard.com>
References: <20220510200543.13482-1-laurent.pinchart@ideasonboard.com>
 <20220531135639.GA1659604-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220531135639.GA1659604-robh@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 31, 2022 at 08:56:39AM -0500, Rob Herring wrote:
> On Tue, 10 May 2022 23:05:43 +0300, Laurent Pinchart wrote:
> > The DT example incorrectly names the ISP power domain "isp1" instead of
> > "isp". This causes a validation failure:
> > 
> > Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.example.dtb: blk-ctl@32ec0000: power-domain-names:7: 'isp' was expected
> >         From schema: Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> > 
> > Fix it.
> > 
> > Fixes: 584d6dd668e2 ("dt-bindings: soc: Add i.MX8MP media block control DT bindings")
> > Reported-by: Rob Herring <robh+dt@kernel.org>
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> > Shawn, this fixes an issue in linux-next, could you please apply the
> > patch to your imx/bindings branch for v5.19 ?
> > ---
> >  .../devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml  | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> 
> Now failing in Linus' tree and linux-next and no response, so I've 
> applied.

Thanks Rob.

-- 
Regards,

Laurent Pinchart
