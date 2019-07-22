Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BEA416F7EA
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 05:23:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727862AbfGVDXi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Jul 2019 23:23:38 -0400
Received: from mail.kernel.org ([198.145.29.99]:34314 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727840AbfGVDXh (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 21 Jul 2019 23:23:37 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id D917821921;
        Mon, 22 Jul 2019 03:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1563765816;
        bh=jGOqpTywUC5D2KZdruQ9Rmg06NOWtZyVlGjbovIcUtk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=FLTZSmqTjTsSIqQXQdDbsSSCSDgiqDtjj8KPtzf9Bn4w7RwyGEj7MCd4bWc21QFE1
         MY2E3BC3MkAivQPq35IU+g/zl04xUFLXI0fslyOf8hdUKAd2XOaMnbOfORtIoRRTRZ
         IUzocMUSHeB0s3FyTjb+zkCEjUt/EVDWbYKRvdLc=
Date:   Mon, 22 Jul 2019 11:23:13 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Ioana Ciornei <ioana.ciornei@nxp.com>
Cc:     leoyang.li@nxp.com, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: add the console node for DPAA2 platforms
Message-ID: <20190722032312.GV3738@dragon>
References: <1562080578-31677-1-git-send-email-ioana.ciornei@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1562080578-31677-1-git-send-email-ioana.ciornei@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 02, 2019 at 06:16:18PM +0300, Ioana Ciornei wrote:
> Add the console device tree node for the following
> DPAA2 based platforms: LS1088A, LS2080A, LS2088A and LX2160A.
> 
> Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>

Please copy linux-arm-kernel@lists.infradead.org as well.

> ---
> Changes in v2:
>  - use a generic node name
>  - remove leading zeros and 0x from the unit-address
> 
>  arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 5 +++++
>  arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi | 5 +++++
>  arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 5 +++++
>  3 files changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> index 661137ffa319..d190d5490e31 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> @@ -665,6 +665,11 @@
>  			clock-names = "apb_pclk", "wdog_clk";
>  		};
>  
> +		console@8340020 {

Please sort node in unit-address.  Hint: it should be added right before
node ptp-timer@8b95000.

Shawn

> +			compatible = "fsl,dpaa2-console";
> +			reg = <0x00000000 0x08340020 0 0x2>;
> +		};
> +
>  		fsl_mc: fsl-mc@80c000000 {
>  			compatible = "fsl,qoriq-mc";
>  			reg = <0x00000008 0x0c000000 0 0x40>,	 /* MC portal base */
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
> index d7e78dcd153d..229d7f7d293d 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
> @@ -321,6 +321,11 @@
>  			};
>  		};
>  
> +		console@8340020 {
> +			compatible = "fsl,dpaa2-console";
> +			reg = <0x00000000 0x08340020 0 0x2>;
> +		};
> +
>  		fsl_mc: fsl-mc@80c000000 {
>  			compatible = "fsl,qoriq-mc";
>  			reg = <0x00000008 0x0c000000 0 0x40>,	 /* MC portal base */
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> index 125a8cc2c5b3..0426e2230447 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> @@ -848,6 +848,11 @@
>  			dma-coherent;
>  		};
>  
> +		console@8340020 {
> +			compatible = "fsl,dpaa2-console";
> +			reg = <0x00000000 0x08340020 0 0x2>;
> +		};
> +
>  		fsl_mc: fsl-mc@80c000000 {
>  			compatible = "fsl,qoriq-mc";
>  			reg = <0x00000008 0x0c000000 0 0x40>,
> -- 
> 1.9.1
> 
