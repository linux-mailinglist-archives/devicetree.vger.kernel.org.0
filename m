Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DAA0E4D4678
	for <lists+devicetree@lfdr.de>; Thu, 10 Mar 2022 13:08:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237371AbiCJMIv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Mar 2022 07:08:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237687AbiCJMIs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Mar 2022 07:08:48 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1085DE1B65
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 04:07:48 -0800 (PST)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id ED9BE4AB;
        Thu, 10 Mar 2022 13:07:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1646914066;
        bh=jpA/CfiovZWFrNw5rRhOMpPJ+rRHtCKAgdUc6AGCFgk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=O42tBCLwN1eU32C3PyxQ9zC0IvnZZE53Bf7TIEZa7RDKomOCKRX+wcdvZvvqKNd2l
         svxAttuw2W/IEf9iwBRlAFXi3MuoDG3JK55uLBAFUN0Pm5liq3rmK5nT6iQUFFx1RV
         kmULBRiTel+zF1UocKh63KqD7pXlQSGRCnnmhSIo=
Date:   Thu, 10 Mar 2022 14:07:30 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Lucas Stach <l.stach@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Subject: Re: [PATCH v3 0/7] i.MX8MP GPC and blk-ctrl
Message-ID: <YinqAq/QsW1rhJb2@pendragon.ideasonboard.com>
References: <20220228201731.3330192-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220228201731.3330192-1-l.stach@pengutronix.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Shawn,

Is there still a chance this could get merged in v5.18 ?

On Mon, Feb 28, 2022 at 09:17:24PM +0100, Lucas Stach wrote:
> Hi all,
> 
> third and hopefully last revision of this patchset. The dt-binding
> patches are dropped, as Shawn already picked them up. I fixed up all
> the review comments received by Laurent and Marek.
> 
> Regards,
> Lucas
> 
> Lucas Stach (7):
>   soc: imx: gpcv2: add PGC control register indirection
>   soc: imx: gpcv2: add support for i.MX8MP power domains
>   soc: imx: add i.MX8MP HSIO blk-ctrl
>   dt-bindings: usb: dwc3-imx8mp: add power domain property
>   arm64: dts: imx8mp: add HSIO power-domains
>   arm64: dts: imx8mp: add GPU power domains
>   arm64: dts: imx8mp: add GPU nodes
> 
>  .../bindings/usb/fsl,imx8mp-dwc3.yaml         |   6 +
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi     | 129 ++++-
>  drivers/soc/imx/Makefile                      |   1 +
>  drivers/soc/imx/gpcv2.c                       | 430 ++++++++++++++++-
>  drivers/soc/imx/imx8mp-blk-ctrl.c             | 446 ++++++++++++++++++
>  5 files changed, 994 insertions(+), 18 deletions(-)
>  create mode 100644 drivers/soc/imx/imx8mp-blk-ctrl.c

-- 
Regards,

Laurent Pinchart
