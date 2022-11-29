Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 512B563C74C
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 19:41:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229820AbiK2Slq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 13:41:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236084AbiK2Sln (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 13:41:43 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6E3D5D69B
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 10:41:42 -0800 (PST)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 724E74E6;
        Tue, 29 Nov 2022 19:41:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1669747300;
        bh=ebxVCwZt3kwf13qYwc3wFQXHD5yQGXK3fvDmjW9blCg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Vgz9F3lWPzOebNMDOXRRGEyTJ0J9LUMks043bZKXDu/7Rv6+pY4iu3Snoi6MGkjX6
         lVlh9HvWqEnXUpTbkA53X0exvmZFdpoGFSTJjs7/2KVOq8/G1mCmvb54FParaib8CZ
         rD5KbTMfYCEuIcBlnwHO6jOx5aisEzBp0dDopyBQ=
Date:   Tue, 29 Nov 2022 20:41:25 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Francesco Dolcini <francesco@dolcini.it>
Cc:     linux-arm-kernel@lists.infradead.org,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org,
        Stefan Eichenberger <stefan.eichenberger@toradex.com>
Subject: Re: [PATCH v2 0/2] arm64: dts: imx8mp-verdin: Add DSI Bridges
Message-ID: <Y4ZSVfWvr2MXxcoD@pendragon.ideasonboard.com>
References: <20221129144412.37497-1-francesco@dolcini.it>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20221129144412.37497-1-francesco@dolcini.it>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Francisco,

On Tue, Nov 29, 2022 at 03:44:10PM +0100, Francesco Dolcini wrote:
> From: Francesco Dolcini <francesco.dolcini@toradex.com>
> 
> This series add DSI to HDMI and DSI to LVDS functionality to the Verdin iMX8M
> Plus device tree.
> 
> Previous v1 [1] triggered some discussion with Laurent since these bridges are not
> strictly part of the SoM, but are part of the whole board that is made out of
> SoM + Carrier Board (e.g. Yavia [2]) or SoM + Carrier Board + Adapter
> (e.g. Dahlia [3]). For this reason they are disabled by default.
> 
> I have not addressed his concerns here apart for the explanation I gave him in
> the previous discussion thread, I do still believe that this could be merged as
> it is.

I still think those should not be part of the SoM .dtsi if the
peripherals are not in the SoM. I would model them either as part of the
carrier board, or as overlays, depending on the case. It would be fine
creating a .dtsi that is included by both carrier board .dts and overlay
.dts.

The final decision belongs to the maintainers, I'm only a reviewer :-)

> This series is based on next-20221129.
> 
> Francesco
> 
> [1] https://lore.kernel.org/all/20220905211703.GA6180@francesco-nb.int.toradex.com/
> [2] https://www.toradex.com/products/carrier-board/yavia
> [3] https://www.toradex.com/products/carrier-board/dahlia-carrier-board-kit
> 
> v2: 
>  - Added HDMI hot plug detect GPIO
> 
> Max Krummenacher (2):
>   arm64: dts: imx8mp-verdin: add dsi to hdmi functionality
>   arm64: dts: imx8mp-verdin: add dsi to lvds functionality
> 
>  .../boot/dts/freescale/imx8mp-verdin.dtsi     | 21 ++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)

-- 
Regards,

Laurent Pinchart
