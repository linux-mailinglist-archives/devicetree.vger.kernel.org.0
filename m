Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 107053AE8DB
	for <lists+devicetree@lfdr.de>; Mon, 21 Jun 2021 14:15:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229617AbhFUMR1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 08:17:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229610AbhFUMR1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 08:17:27 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31F59C061574
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 05:15:13 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1lvIpb-00052m-K0; Mon, 21 Jun 2021 14:15:11 +0200
Message-ID: <fef90956fcf222cfc55a15d3e56ff158285fdbac.camel@pengutronix.de>
Subject: Re: [PATCH] dt-bindings: mxsfb: Add compatible for i.MX8MN
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>
Date:   Mon, 21 Jun 2021 14:15:09 +0200
In-Reply-To: <20210620225028.189637-1-marex@denx.de>
References: <20210620225028.189637-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Montag, dem 21.06.2021 um 00:50 +0200 schrieb Marek Vasut:
> NXP's i.MX8MN has an LCDIF as well.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> ---
>  Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> index a4c3064c778c..900a56cae80e 100644
> --- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> @@ -27,6 +27,7 @@ properties:
>                - fsl,imx6ul-lcdif
>                - fsl,imx7d-lcdif
>                - fsl,imx8mm-lcdif
> +              - fsl,imx8mn-lcdif
>                - fsl,imx8mq-lcdif
>            - const: fsl,imx6sx-lcdif
>  


