Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4503677773
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 10:32:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231848AbjAWJcD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 04:32:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229676AbjAWJcC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 04:32:02 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B340C18B1D
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 01:32:01 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1pJtBD-0001WN-Bh; Mon, 23 Jan 2023 10:31:55 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1pJtBC-00073Z-Jb; Mon, 23 Jan 2023 10:31:54 +0100
Date:   Mon, 23 Jan 2023 10:31:54 +0100
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     Johannes Schneider <johannes.schneider@leica-geosystems.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v8 3/3] dt-bindings: arm: fsl: Add i.MX8MM-EVKB
Message-ID: <20230123093154.u2hjt7xxoycn57w5@pengutronix.de>
References: <20230123071312.3297210-1-johannes.schneider@leica-geosystems.com>
 <20230123071312.3297210-4-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230123071312.3297210-4-johannes.schneider@leica-geosystems.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Johannes,

On 23-01-23, Johannes Schneider wrote:
> Add DT compatible strings for recent EVKs, that come with a different PMIC.
> 
> The most recent revision of the 'original' EVK CPU module is C2 and the most
> recent revision of EVKB CPU2 module is A4.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index fbfc4f99c01e..9c3a02c19847 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -818,6 +818,7 @@ properties:
>                - emtrion,emcon-mx8mm-avari # emCON-MX8MM SoM on Avari Base
>                - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
>                - fsl,imx8mm-evk            # i.MX8MM EVK Board
> +              - fsl,imx8mm-evkb           # i.MX8MM EVK Board, rev-B
								  ^
	As I mentioned within my previouse review, please drop the rev-B
	comment, so the comment looks like:

	# i.MX8MM EVKB Board

Regards,
  Marco

>                - gateworks,imx8mm-gw7904
>                - gw,imx8mm-gw71xx-0x       # i.MX8MM Gateworks Development Kit
>                - gw,imx8mm-gw72xx-0x       # i.MX8MM Gateworks Development Kit
> -- 
> 2.25.1
> 
> 
> 
