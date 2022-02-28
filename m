Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 298CF4C6342
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 07:41:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229579AbiB1Glq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 01:41:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233086AbiB1Glp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 01:41:45 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E499B673C4
        for <devicetree@vger.kernel.org>; Sun, 27 Feb 2022 22:41:06 -0800 (PST)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id A7CFB486;
        Mon, 28 Feb 2022 07:41:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1646030463;
        bh=edO0zZGShhP8jnTdxIT2KdVMZRlFPKdVXexWbZmjH8I=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=W80sQ5a/F+lzv3KFXp90NwYyXGegLiPguwkx3prMpNyQc6lLvngx05dvE/2wpcZPo
         QYsndbZcSeQ8LEtSd7Gma/FaBhV5JrF6l0+dN213jhtcTkB7PpC+8Px3WM3Ui7y8aP
         f932ODXnIeYbbLWCAwBLRoPbudsXA87mlNA8svVg=
Date:   Mon, 28 Feb 2022 08:40:52 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Robby Cai <robby.cai@nxp.com>, Sam Ravnborg <sam@ravnborg.org>,
        Stefan Agner <stefan@agner.ch>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/9] dt-bindings: mxsfb: Add compatible for i.MX8MP
Message-ID: <YhxudFK69MYzmcRz@pendragon.ideasonboard.com>
References: <20220228004605.367040-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220228004605.367040-1-marex@denx.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

Thank you for the patch.

On Mon, Feb 28, 2022 at 01:45:57AM +0100, Marek Vasut wrote:
> Add compatible string for i.MX8MP LCDIF variant. This is called LCDIFv3
> and is completely different from the LCDIFv3 found in i.MX23 in that it
> has a completely scrambled register layout compared to all previous LCDIF
> variants. The new LCDIFv3 also supports 36bit address space. However,
> except for the complete bit reshuffling, this is still LCDIF and it still
> works like one.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Robby Cai <robby.cai@nxp.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Stefan Agner <stefan@agner.ch>
> Cc: devicetree@vger.kernel.org
> ---
>  Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> index 900a56cae80e6..9831ab53a053d 100644
> --- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> @@ -28,6 +28,7 @@ properties:
>                - fsl,imx7d-lcdif
>                - fsl,imx8mm-lcdif
>                - fsl,imx8mn-lcdif
> +              - fsl,imx8mp-lcdif

As the hardware isn't backward-compatible with any other version, I
think the new compatible string should go in the previous enum block,
not in this one. We don't want the imx6sx fallback.

>                - fsl,imx8mq-lcdif
>            - const: fsl,imx6sx-lcdif
>  

-- 
Regards,

Laurent Pinchart
