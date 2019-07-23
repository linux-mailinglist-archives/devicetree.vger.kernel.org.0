Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B3DBC712F0
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2019 09:34:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729829AbfGWHeN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jul 2019 03:34:13 -0400
Received: from mail.kernel.org ([198.145.29.99]:55792 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729004AbfGWHeN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 23 Jul 2019 03:34:13 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 4A01F2251A;
        Tue, 23 Jul 2019 07:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1563867252;
        bh=jAakv2t5/++AhA0rABvLwtPxoCfyUmpv9jO6/OImrK4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=wu+HIYREnYMnHzdX9eXfK366q3oE47vNPZO13JYDlevfMWhDaigzHLfH0gPgAvx9c
         TaAqXEvyMSeKeEh+D+zQ2SxVMmUoEkzGSxW2eK01IssHCkqjl96DX+XcV9lZBqYV6k
         M69jGYuFZ/rgApKTLCGx9iSRhc4Hg1/ekuhcjlwU=
Date:   Tue, 23 Jul 2019 15:33:43 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>,
        Daniel Baluta <daniel.baluta@nxp.com>
Cc:     Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: Re: [PATCH] arm64: dts: imx8mq: fix SAI compatible
Message-ID: <20190723073342.GG15632@dragon>
References: <20190717095436.28154-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190717095436.28154-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Daniel for comment.

On Wed, Jul 17, 2019 at 11:54:36AM +0200, Lucas Stach wrote:
> The i.MX8M SAI block is not compatible with the i.MX6SX one, as the
> register layout has changed due to two version registers being added
> at the beginning of the address map. Remove the bogus compatible.
> 
> Fixes: 8c61538dc945 "arm64: dts: imx8mq: Add SAI2 node"

The format should be the following.  I can fix it when applying though.

Fixes: 8c61538dc945 ("arm64: dts: imx8mq: Add SAI2 node")

Shawn

> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index 9326bd4150a3..0c533c66b340 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -718,8 +718,7 @@
>  
>  			sai2: sai@308b0000 {
>  				#sound-dai-cells = <0>;
> -				compatible = "fsl,imx8mq-sai",
> -					     "fsl,imx6sx-sai";
> +				compatible = "fsl,imx8mq-sai";
>  				reg = <0x308b0000 0x10000>;
>  				interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clk IMX8MQ_CLK_SAI2_IPG>,
> -- 
> 2.20.1
> 
