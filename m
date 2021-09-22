Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9C0C413FF0
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 05:14:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230207AbhIVDQW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 23:16:22 -0400
Received: from mail.kernel.org ([198.145.29.99]:36814 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230054AbhIVDQV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 Sep 2021 23:16:21 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id D8A9261159;
        Wed, 22 Sep 2021 03:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1632280490;
        bh=LJ5nh8MQ3DdHna5aIVr3f3YwvtbLGtOL+8CrOm0x2Kk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=dMYmkZTOxNtq6jyO4L8aRFSbsdK9HnP/Xj0IaLaMKxO78vFn0yt5McFrA9CCzVHdc
         O9jbgE3FBCkaAI2tEzKGqH1xzJlZbevbLwo3kk5sOne0y+2KnOYC575+j1EzPoVF4S
         KgjNgAr8ybacwT91+bRUO0DKWUIoKL+3dQ9tC1gBTRmz1qYL8SxJOZf1MQh+1wi6XG
         7WLKXGv5Ys0rZBZT1HLhnZFEWwdF8YlrHJ1kfNbcaBjQ6qvroennOoQwd/qkL/djTs
         TXocHsclPsZ5/jzX6h2LnakcLk9PG5EUvt0iRkhPj+YYdd4jT0KfxcPQav1E/UmZQ8
         xfzF/gTy6HfgQ==
Date:   Wed, 22 Sep 2021 11:14:45 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     haibo.chen@nxp.com
Cc:     robh+dt@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, aisheng.dong@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: imx8qm: minor fix for schema dts check
Message-ID: <20210922031444.GJ10217@dragon>
References: <1629272675-7142-1-git-send-email-haibo.chen@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1629272675-7142-1-git-send-email-haibo.chen@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 18, 2021 at 03:44:35PM +0800, haibo.chen@nxp.com wrote:
> From: Haibo Chen <haibo.chen@nxp.com>
> 
> Add minor fix to pass schema dts check.

Please have separate patch for clock and compatible changes.  Also
provide schema check warning/error messages in commit log.

Shawn

> 
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
> ---
>  .../arm64/boot/dts/freescale/imx8-ss-conn.dtsi | 18 +++++++++---------
>  .../boot/dts/freescale/imx8qm-ss-conn.dtsi     |  4 ++--
>  2 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
> index a79f42a9618e..639220dbff00 100644
> --- a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
> @@ -38,9 +38,9 @@ conn_subsys: bus@5b000000 {
>  		interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
>  		reg = <0x5b010000 0x10000>;
>  		clocks = <&sdhc0_lpcg IMX_LPCG_CLK_4>,
> -			 <&sdhc0_lpcg IMX_LPCG_CLK_5>,
> -			 <&sdhc0_lpcg IMX_LPCG_CLK_0>;
> -		clock-names = "ipg", "per", "ahb";
> +			 <&sdhc0_lpcg IMX_LPCG_CLK_0>,
> +			 <&sdhc0_lpcg IMX_LPCG_CLK_5>;
> +		clock-names = "ipg", "ahb", "per";
>  		power-domains = <&pd IMX_SC_R_SDHC_0>;
>  		status = "disabled";
>  	};
> @@ -49,9 +49,9 @@ conn_subsys: bus@5b000000 {
>  		interrupts = <GIC_SPI 233 IRQ_TYPE_LEVEL_HIGH>;
>  		reg = <0x5b020000 0x10000>;
>  		clocks = <&sdhc1_lpcg IMX_LPCG_CLK_4>,
> -			 <&sdhc1_lpcg IMX_LPCG_CLK_5>,
> -			 <&sdhc1_lpcg IMX_LPCG_CLK_0>;
> -		clock-names = "ipg", "per", "ahb";
> +			 <&sdhc1_lpcg IMX_LPCG_CLK_0>,
> +			 <&sdhc1_lpcg IMX_LPCG_CLK_5>;
> +		clock-names = "ipg", "ahb", "per";
>  		power-domains = <&pd IMX_SC_R_SDHC_1>;
>  		fsl,tuning-start-tap = <20>;
>  		fsl,tuning-step= <2>;
> @@ -62,9 +62,9 @@ conn_subsys: bus@5b000000 {
>  		interrupts = <GIC_SPI 234 IRQ_TYPE_LEVEL_HIGH>;
>  		reg = <0x5b030000 0x10000>;
>  		clocks = <&sdhc2_lpcg IMX_LPCG_CLK_4>,
> -			 <&sdhc2_lpcg IMX_LPCG_CLK_5>,
> -			 <&sdhc2_lpcg IMX_LPCG_CLK_0>;
> -		clock-names = "ipg", "per", "ahb";
> +			 <&sdhc2_lpcg IMX_LPCG_CLK_0>,
> +			 <&sdhc2_lpcg IMX_LPCG_CLK_5>;
> +		clock-names = "ipg", "ahb", "per";
>  		power-domains = <&pd IMX_SC_R_SDHC_2>;
>  		status = "disabled";
>  	};
> diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi
> index 42637a45701c..17bbe2e16126 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi
> @@ -13,9 +13,9 @@
>  };
>  
>  &usdhc1 {
> -	compatible = "fsl,imx8qm-usdhc", "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
> +	compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
>  };
>  
>  &usdhc2 {
> -	compatible = "fsl,imx8qm-usdhc", "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
> +	compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
>  };
> -- 
> 2.17.1
> 
