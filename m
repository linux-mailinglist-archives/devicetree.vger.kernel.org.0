Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C070427D1F
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2019 14:49:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730028AbfEWMtK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 08:49:10 -0400
Received: from mail.kernel.org ([198.145.29.99]:53894 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729962AbfEWMtK (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 23 May 2019 08:49:10 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id B3F3821019;
        Thu, 23 May 2019 12:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1558615749;
        bh=g7j2U62ETM/CfVTkfqNEarGmBDOCA3a/rrw2qe9DprM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=PPW/6mG7vewO2NbAd0kFIjtyYvLRGdmge0Ey2nJ2ExENJxDwn1c3MKM6ZRxm1eknj
         gE/CRIT0hQ2bcizugjxoty17Y8C6NcLKmte0W8iKuw93ZJJzHOOwSP//JsU8BhA+bn
         eeZJ+LN928b4znRYwQpNUiKH09Klj/ZnJd9T+1WU=
Date:   Thu, 23 May 2019 20:48:06 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Pankaj Bansal <pankaj.bansal@nxp.com>
Cc:     Leo Li <leoyang.li@nxp.com>, Mingkai Hu <mingkai.hu@nxp.com>,
        Rajesh Bhagat <rajesh.bhagat@nxp.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: fsl: ls1046: Modify the qspi flash frequency
Message-ID: <20190523124806.GU9261@dragon>
References: <20190521150336.8409-1-pankaj.bansal@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190521150336.8409-1-pankaj.bansal@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 21, 2019 at 09:40:09AM +0000, Pankaj Bansal wrote:
> The qspi flash in ls1046a based QDS and RDB boards can operate
> at 50MHz frequency.
> Therefore, update the maximum supported freq in their respective
> dts files.
> 
> Signed-off-by: Pankaj Bansal <pankaj.bansal@nxp.com>

Do not use base64 encoding for patch posting.

Shawn

> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts | 4 ++--
>  arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts | 5 +++--
>  2 files changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts
> index eec62c63dafe..e441dbfbfb81 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts
> @@ -3,7 +3,7 @@
>   * Device Tree Include file for Freescale Layerscape-1046A family SoC.
>   *
>   * Copyright 2016 Freescale Semiconductor, Inc.
> - * Copyright 2018 NXP
> + * Copyright 2018-2019 NXP
>   *
>   * Shaohui Xie <Shaohui.Xie@nxp.com>
>   */
> @@ -169,7 +169,7 @@
>  		compatible = "spansion,m25p80";
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> -		spi-max-frequency = <20000000>;
> +		spi-max-frequency = <50000000>;
>  		spi-rx-bus-width = <4>;
>  		spi-tx-bus-width = <4>;
>  		reg = <0>;
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> index 6a6514d0e5a9..6f5411d09bb9 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> @@ -3,6 +3,7 @@
>   * Device Tree Include file for Freescale Layerscape-1046A family SoC.
>   *
>   * Copyright 2016 Freescale Semiconductor, Inc.
> + * Copyright 2019 NXP
>   *
>   * Mingkai Hu <mingkai.hu@nxp.com>
>   */
> @@ -105,7 +106,7 @@
>  		compatible = "spansion,m25p80";
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> -		spi-max-frequency = <20000000>;
> +		spi-max-frequency = <50000000>;
>  		spi-rx-bus-width = <4>;
>  		spi-tx-bus-width = <4>;
>  		reg = <0>;
> @@ -115,7 +116,7 @@
>  		compatible = "spansion,m25p80";
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> -		spi-max-frequency = <20000000>;
> +		spi-max-frequency = <50000000>;
>  		spi-rx-bus-width = <4>;
>  		spi-tx-bus-width = <4>;
>  		reg = <1>;
> -- 
> 2.17.1
> 
