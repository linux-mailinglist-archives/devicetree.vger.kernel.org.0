Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09F2B6C999B
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 04:35:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231956AbjC0CfD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 22:35:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbjC0Ce7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 22:34:59 -0400
Received: from sin.source.kernel.org (sin.source.kernel.org [IPv6:2604:1380:40e1:4800::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33EB340C0
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 19:34:54 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 82D1BCE0FED
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 02:34:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F4A6C433D2;
        Mon, 27 Mar 2023 02:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1679884490;
        bh=RKyAFoiAfy1tpXFv4htb+g1YITDtmDnTBXiOMaUYGOQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mZss9+0PZYpY/r1wJ9PcKC61Ce9EGTWsSvQbJ1+t0HHLpmijNrUYv+yc6ePYxvlf1
         q1fF4nFILk+a/vPl1VYY3Wfj0akE9Vpfc9Ka3Z8NODd2LxNX5vd07fjSdTfsYThPu0
         Tp9AoamtNzGqOHcQK4J2KBWIXrq63KLXLv6tAYfoj6LX7Pg6NakcXI6wSipfvaeITd
         GG9mFZtxiGg4TdPJe1XWKLeJAv1hektT5NZWZl4BGZrw9PiqlFHqLRZPSd6kO64a2V
         /P+211AkPcBllejeaDZBXZbbywdSIqLsphM8WzeWVDmnbz52yXg7xfM6rPmzp6L7E0
         n46QmA1ByMrXg==
Date:   Mon, 27 Mar 2023 10:34:44 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: imx8mm: Fix lcdif compatible
Message-ID: <20230327023444.GF3364759@dragon>
References: <20230316140646.489626-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230316140646.489626-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 16, 2023 at 03:06:45PM +0100, Alexander Stein wrote:
> imx8mm-lcdif is compatible to imx6sx-lcdif.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Doesn't apply for me.

Shawn

> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index fedd32cfa47a..1de455ba21da 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -1120,7 +1120,7 @@ aips4: bus@32c00000 {
>  			ranges = <0x32c00000 0x32c00000 0x400000>;
>  
>  			lcdif: lcdif@32e00000 {
> -				compatible = "fsl,imx28-lcdif";
> +				compatible = "fsl,imx8mm-lcdif", "fsl,imx6sx-lcdif";
>  				reg = <0x32e00000 0x10000>;
>  				clocks = <&clk IMX8MM_CLK_LCDIF_PIXEL>,
>  					 <&clk IMX8MM_CLK_DISP_AXI_ROOT>,
> -- 
> 2.34.1
> 
