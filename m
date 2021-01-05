Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C815D2EA33B
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 03:14:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726518AbhAECNy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 21:13:54 -0500
Received: from mail.kernel.org ([198.145.29.99]:52584 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726391AbhAECNy (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 4 Jan 2021 21:13:54 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 427B722515;
        Tue,  5 Jan 2021 02:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1609812793;
        bh=XSjbKmsDOq7akswYqDLi3o0MOFJLslpegTjshoiIQFM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Md8wPjfhc36LWUn53V4lZ8Ht8N7u8ZixQyF7ayk7te46sYth6jhWLKQ5de0hwkLOj
         6Ih7gec2qq5gqm6vn2rHlR/dLA74qdJmGTMRQGLm5aljrbUNJyIWUrk/DoHjxdyv8O
         7rX6pGB5VGg1poe4CLNGaxtf04yYyR9ZperUtvua1DNEymAjqYPaDG0tBV7bDaxO0r
         go/0LtWScLuL10GCEhE+bWJZPJoHQhJkSYHkVNHCgRvnI4/1hd9pmEqgJ54HgQW4/n
         7TegmkLwWM3b+nIqTSyPMradJrKWxHrZIqvKj+fXKFf3Zntt3pIaAvszawKCoDvVm0
         qWDTOk+ptESow==
Date:   Tue, 5 Jan 2021 10:13:08 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Yangbo Lu <yangbo.lu@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Li Yang <leoyang.li@nxp.com>,
        Vladimir Oltean <vladimir.oltean@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Michael Walle <michael@walle.cc>
Subject: Re: [PATCH] arm64: dts: freescale: use fixed index mmcN for NXP
 layerscape reference boards
Message-ID: <20210105021307.GG4142@dragon>
References: <20201201032127.41681-1-yangbo.lu@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201201032127.41681-1-yangbo.lu@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 01, 2020 at 11:21:27AM +0800, Yangbo Lu wrote:
> The eSDHC driver has converted to use asynchronous probe.
> Let's use fixed index mmcN for eSDHC controllers, so that
> we can ignore the effect on usage, and avoid problem on
> previous use cases with fixed index mmcblkN.
> 
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts | 5 +++++
>  arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts  | 5 +++++
>  arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts  | 5 +++++
>  arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts  | 2 ++
>  arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts  | 2 ++
>  arch/arm64/boot/dts/freescale/fsl-lx2162a-qds.dts  | 2 ++
>  6 files changed, 21 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts b/arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts
> index 6290e2f..76b7e29 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts
> @@ -14,6 +14,11 @@
>  / {
>  	model = "LS1012A FRWY Board";
>  	compatible = "fsl,ls1012a-frwy", "fsl,ls1012a";
> +
> +	aliases {
> +		mmc0 = &esdhc0;
> +		mmc1 = &esdhc1;
> +	};

Are these esdhc devices enabled in the board dts?  I think that the
aliases are only needed for enabled devices.

Shawn

>  };
>  
>  &duart0 {
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
