Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D898C2EA3DE
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 04:21:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728198AbhAEDUa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 22:20:30 -0500
Received: from mail.kernel.org ([198.145.29.99]:35476 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728155AbhAEDUa (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 4 Jan 2021 22:20:30 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4F6F522573;
        Tue,  5 Jan 2021 03:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1609816789;
        bh=V0yblTLHGRshTSGe68v3ZTuncJVDS9VdooS2mDuG+f0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=uFHkRtB5g4iplLBP5Kmi3SLSe3Mzo2eukVA6E/r0U71S1vrrXgRPnRNhBLBGUfQUc
         5PW7s//0daeJybbmE2rc2+k0THw5A5f6BR+rzAyQ9Z1+vYbMk2RFivO2OhUwxF4itm
         Hte7qnXHQTAK8MRvBzTcO0gZdOlDMT/7iqDNjZ0DQlvoEVvFAZ1poU7QFLBubvnKuO
         WJ8tISg41sp/j+zKJKueL0j8hJ7GKd0YXjWe1u2YCIVbO4kjrm6YG2Yics6yYMxOyw
         36ATsdIaCGWqZCs/C/iE289nMwFtS5gU8y/7xmdmH8kznAZvPTUwVHKyi3vQDcmRup
         emyIBPylye9Gg==
Date:   Tue, 5 Jan 2021 11:19:44 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Yangbo Lu <yangbo.lu@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Li Yang <leoyang.li@nxp.com>,
        Vladimir Oltean <vladimir.oltean@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Michael Walle <michael@walle.cc>
Subject: Re: [v2] arm64: dts: freescale: use fixed index mmcN for NXP
 layerscape reference boards
Message-ID: <20210105031943.GM4142@dragon>
References: <20210105031122.9847-1-yangbo.lu@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210105031122.9847-1-yangbo.lu@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 05, 2021 at 11:11:22AM +0800, Yangbo Lu wrote:
> The eSDHC driver has converted to use asynchronous probe.
> Let's use fixed index mmcN for eSDHC controllers, so that
> we can ignore the effect on usage, and avoid problem on
> previous use cases with fixed index mmcblkN.
> 
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> ---
> Changes for v2:
> 	- Dropped changes for ls1012afrwy.
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts | 5 +++++
>  arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts | 5 +++++
>  arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts | 2 ++
>  arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts | 2 ++
>  arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts | 2 ++
>  5 files changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts
> index 449475a..e22c5e7 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts
> @@ -13,6 +13,11 @@
>  	model = "LS1012A QDS Board";
>  	compatible = "fsl,ls1012a-qds", "fsl,ls1012a";
>  
> +	aliases {
> +		mmc0 = &esdhc0;
> +		mmc1 = &esdhc1;
> +	};
> +
>  	sys_mclk: clock-mclk {
>  		compatible = "fixed-clock";
>  		#clock-cells = <0>;
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts
> index d45c176..f939d65 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts
> @@ -12,6 +12,11 @@
>  / {
>  	model = "LS1012A RDB Board";
>  	compatible = "fsl,ls1012a-rdb", "fsl,ls1012a";
> +
> +	aliases {
> +		mmc0 = &esdhc0;
> +		mmc1 = &esdhc1;
> +	};
>  };
>  
>  &duart0 {
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts
> index 2d1fe6c..4ec1a4c 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts
> @@ -15,6 +15,8 @@
>  	aliases {
>  		crypto = &crypto;
>  		serial0 = &uart0;
> +		mmc0 = &esdhc0;
> +		mmc1 = &esdhc1;

Sorry I did not catch this in v1 review, but the aliases list should be
alphabetically sorted.

Shawn

>  	};
>  
>  	chosen {
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
> index 7723ad5..bdb3b04 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
> @@ -15,6 +15,8 @@
>  	aliases {
>  		crypto = &crypto;
>  		serial0 = &uart0;
> +		mmc0 = &esdhc0;
> +		mmc1 = &esdhc1;
>  	};
>  
>  	chosen {
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts
> index 9178684..69e99cb 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts
> @@ -15,6 +15,8 @@
>  	aliases {
>  		crypto = &crypto;
>  		serial0 = &uart0;
> +		mmc0 = &esdhc0;
> +		mmc1 = &esdhc1;
>  	};
>  
>  	chosen {
> -- 
> 2.7.4
> 
