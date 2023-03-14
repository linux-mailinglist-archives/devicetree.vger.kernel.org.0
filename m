Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A4CB6B8B7E
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 07:46:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229813AbjCNGq5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 02:46:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229704AbjCNGq4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 02:46:56 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C3297D55C
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 23:46:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id CD26EB8189B
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 06:46:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5424AC433EF;
        Tue, 14 Mar 2023 06:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678776412;
        bh=SV9p/MYO9qY63VxctUDH+W5RbX5/DcTBNcOwre9hh4g=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=VT4hXcE/V5BFldD3kkSUnqMZU9ycY+YXiK7fr88azIhlLcZnKJaS8MAlqwHI3bsiw
         5IeLv0+urkOCmlM/YvdGkeVCtdq+ABGcAzyDmEbKy0lGap+qSoe6xZrxjMxyYrkIxZ
         UtTwL9/lQHadd14xwJhUSwopb0mA4uo+H83agoef6x7f3nfmVTcdwMFRk3MjBCD9mt
         SQbGIMhaM+UpF2NisDj9IwudOmeaRJeznhgPVcy+T4LTvlcq3OkHe9K7M1kWZkEhJc
         avnwNrF7Ek97PnVUDiocEkQ+PukdhJ1fflm5xsIcBYHI0KGOANYpHD96fg7id4BNMQ
         pBP7wGrdk10jQ==
Date:   Tue, 14 Mar 2023 14:46:45 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: imx8mp: fix address length for LCDIF2
Message-ID: <20230314064645.GU143566@dragon>
References: <20230308092420.2742432-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230308092420.2742432-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 08, 2023 at 10:24:19AM +0100, Alexander Stein wrote:
> 0x238 is the offset for PANIC0_THRES, so the length needs to be 4 bytes
> greater than that.
> 
> Fixes: 94e6197dadc9 ("arm64: dts: imx8mp: Add LCDIF2 & LDB nodes")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> Does it make sense to increase the length to 0x10000 instead which
> is the size mentioned in the memory map in the RM?

Makes sense to me.

Shawn

> 
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index a19224fe1a6a..722e36d7b420 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -1128,7 +1128,7 @@ aips4: bus@32c00000 {
>  
>  			lcdif2: display-controller@32e90000 {
>  				compatible = "fsl,imx8mp-lcdif";
> -				reg = <0x32e90000 0x238>;
> +				reg = <0x32e90000 0x23c>;
>  				interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clk IMX8MP_CLK_MEDIA_DISP2_PIX_ROOT>,
>  					 <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>,
> -- 
> 2.34.1
> 
