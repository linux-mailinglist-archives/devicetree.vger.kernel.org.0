Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D33F701B50
	for <lists+devicetree@lfdr.de>; Sun, 14 May 2023 05:08:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229492AbjENDIQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 May 2023 23:08:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229447AbjENDIP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 May 2023 23:08:15 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 526D51BDC
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 20:08:14 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DA2F260FF9
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 03:08:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92F85C433D2;
        Sun, 14 May 2023 03:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684033693;
        bh=mmqMwr9pWCPxUV1kSz62ZWC5tg5V/FJb1PWtJX2b+IM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=nAIBEUs0yFCgP/0KDFJZ/0COiMHF8Wgv9Gba9STPhg2zwqgORZ555uqez8uQyegcZ
         FSrVMQbwNdH4xWedzQc+0Xx+ZbLbaQmbw9fbw9epWuX3xtsAlxEcymEXTtMfy7/O1h
         srlNZtA16+feJ0v907IihUqJtNH1gDQyTvZqOyBeeU5jC7zePW21sQOa3EJ6maEMAv
         Smy6Rd070zuMRHQtfRsmKdZtXyKX0KI3kIpIvfaTJG3lP/AhvbRySj/0MmM6qfw5Nt
         C/ltqLBSdSsmkNNEfGCbw9elLq1hVgvk5OvQBVBDEOzWQNnClNkbXMunv0E8IX7LMd
         i0cvmEQNvKTTA==
Date:   Sun, 14 May 2023 11:08:02 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Xu Yang <xu.yang_2@nxp.com>
Cc:     will@kernel.org, mark.rutland@arm.com, frank.li@nxp.com,
        festevam@gmail.com, robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Subject: Re: [PATCH v2 3/3] arm64: dts: imx93: add ddr performance monitor
 node
Message-ID: <20230514030802.GL727834@dragon>
References: <20230418102910.2065651-1-xu.yang_2@nxp.com>
 <20230418102910.2065651-3-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230418102910.2065651-3-xu.yang_2@nxp.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 18, 2023 at 06:29:10PM +0800, Xu Yang wrote:
> Add performance monitor.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

Please send DTS changes in a separate series after drivers/bindings
changes are accepted.

Shawn

> 
> ---
> Changes from v2:
> - no change
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
> index 2076f9c9983a..be8a581c7454 100644
> --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> @@ -725,5 +725,11 @@ media_blk_ctrl: system-controller@4ac10000 {
>  			#power-domain-cells = <1>;
>  			status = "disabled";
>  		};
> +
> +		ddr-pmu@4e300dc0 {
> +			compatible = "fsl,imx93-ddr-pmu";
> +			reg = <0x4e300dc0 0x200>;
> +			interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> +		};
>  	};
>  };
> -- 
> 2.34.1
> 
