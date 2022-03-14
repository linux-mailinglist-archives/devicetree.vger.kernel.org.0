Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0324C4D8818
	for <lists+devicetree@lfdr.de>; Mon, 14 Mar 2022 16:31:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235246AbiCNPdH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 11:33:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233435AbiCNPdG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 11:33:06 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF17C1AF19
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 08:31:55 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 662FE2E0;
        Mon, 14 Mar 2022 16:31:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1647271913;
        bh=cjLsMLMLLBC+rtHJuogpXwhiENyrw9S1uWicbC7/J9k=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=jfpALFxbprbXqqV/W6anJvbaT8gikDFSfnvn6xx9RHI00k0HVKQuB9/8a+2pST3ye
         5Y28fdWO7xt4pgE27GSBzi9Mq/BtK/lXG3inSdpYv/6ZhyrMWpVLo6kTMVV4XQK4Ex
         BCxENX0/31gv0SZQm1lD1HPcj8VBrBgDTddIpB9U=
Date:   Mon, 14 Mar 2022 17:31:35 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Lucas Stach <l.stach@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Subject: Re: [PATCH v3 0/7] i.MX8MP GPC and blk-ctrl
Message-ID: <Yi9f1+Y9bfOD5Vac@pendragon.ideasonboard.com>
References: <20220228201731.3330192-1-l.stach@pengutronix.de>
 <YinqAq/QsW1rhJb2@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YinqAq/QsW1rhJb2@pendragon.ideasonboard.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 10, 2022 at 02:07:32PM +0200, Laurent Pinchart wrote:
> Hi Shawn,
> 
> Is there still a chance this could get merged in v5.18 ?

Ping ? Time is running out.

> On Mon, Feb 28, 2022 at 09:17:24PM +0100, Lucas Stach wrote:
> > Hi all,
> > 
> > third and hopefully last revision of this patchset. The dt-binding
> > patches are dropped, as Shawn already picked them up. I fixed up all
> > the review comments received by Laurent and Marek.
> > 
> > Regards,
> > Lucas
> > 
> > Lucas Stach (7):
> >   soc: imx: gpcv2: add PGC control register indirection
> >   soc: imx: gpcv2: add support for i.MX8MP power domains
> >   soc: imx: add i.MX8MP HSIO blk-ctrl
> >   dt-bindings: usb: dwc3-imx8mp: add power domain property
> >   arm64: dts: imx8mp: add HSIO power-domains
> >   arm64: dts: imx8mp: add GPU power domains
> >   arm64: dts: imx8mp: add GPU nodes
> > 
> >  .../bindings/usb/fsl,imx8mp-dwc3.yaml         |   6 +
> >  arch/arm64/boot/dts/freescale/imx8mp.dtsi     | 129 ++++-
> >  drivers/soc/imx/Makefile                      |   1 +
> >  drivers/soc/imx/gpcv2.c                       | 430 ++++++++++++++++-
> >  drivers/soc/imx/imx8mp-blk-ctrl.c             | 446 ++++++++++++++++++
> >  5 files changed, 994 insertions(+), 18 deletions(-)
> >  create mode 100644 drivers/soc/imx/imx8mp-blk-ctrl.c

-- 
Regards,

Laurent Pinchart
