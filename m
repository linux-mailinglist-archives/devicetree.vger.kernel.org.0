Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A3CA027864
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2019 10:49:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726363AbfEWItJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 04:49:09 -0400
Received: from mail.kernel.org ([198.145.29.99]:33690 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726309AbfEWItJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 23 May 2019 04:49:09 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id D319D20675;
        Thu, 23 May 2019 08:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1558601348;
        bh=PS2f+sHObdC4FV6JGNeQEnURnd3HAy/JuIONSll3wz0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=JPEd3OX0NqUTxUXqY/bw3cMOUuoiflmsHC66la0O7wPNYEs3c0Mat9kqJLlQNeMd4
         kKrzGPqTy+1s/HfD2hic5L4k6ZnUjK/MSiozU4mgZfF0dMnfyfqYK8PJGOySNAMnZU
         1S5CUDgL9trsqYuhhuSXONiH5EMx+wGTaRPP36FU=
Date:   Thu, 23 May 2019 16:48:09 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Kuldeep Singh <kuldeep.singh@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
        "broonie@kernel.org" <broonie@kernel.org>,
        Ashish Kumar <ashish.kumar@nxp.com>
Subject: Re: [PATCH] arm64: dts: ls1088a: Add QSPI support
Message-ID: <20190523084808.GO9261@dragon>
References: <20190516114807.30817-1-kuldeep.singh@nxp.com>
 <20190516114807.30817-3-kuldeep.singh@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190516114807.30817-3-kuldeep.singh@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 16, 2019 at 11:47:07AM +0000, Kuldeep Singh wrote:
> QSPI support is added for kernel version greater than 5.0 and supports
> quad mode defined by
> TX-WIDTH = <4>, RX-WIDTH = <4>
> 
> RDB/QDS has two 64MB flash from SPANSION(s25fs512s)
> 
> Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> ---
> Dependency on https://patchwork.ozlabs.org/patch/1100471/
> Dependency on https://patchwork.ozlabs.org/patch/1100472/

Please send dts changes only after dependencies get accepted.

Shawn

> 
>  .../boot/dts/freescale/fsl-ls1088a-qds.dts    | 26 +++++++++++++++++++
>  .../boot/dts/freescale/fsl-ls1088a-rdb.dts    | 26 +++++++++++++++++++
>  .../arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 13 ++++++++++
>  3 files changed, 65 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts
> index 6f48d21b97c0..f01f7fca9df7 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts
> @@ -98,6 +98,32 @@
>  	};
>  };
>  
> +&qspi {
> +	status = "okay";
> +
> +	qflash0: flash@0 {
> +		compatible = "spansion,m25p80", "jedec,spi-nor";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		m25p,fast-read;
> +		spi-max-frequency = <20000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <4>;
> +		reg = <0>;
> +	};
> +
> +	qflash1: flash@1 {
> +		compatible = "spansion,m25p80", "jedec,spi-nor";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		m25p,fast-read;
> +		spi-max-frequency = <20000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <4>;
> +		reg = <1>;
> +	};
> +};
> +
>  &duart0 {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
> index 8e925df6c01c..bdec7e996dbe 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
> @@ -74,6 +74,32 @@
>  	};
>  };
>  
> +&qspi {
> +	status = "okay";
> +
> +	qflash0: flash@0 {
> +		compatible = "spansion,m25p80", "jedec,spi-nor";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		m25p,fast-read;
> +		spi-max-frequency = <20000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <4>;
> +		reg = <0>;
> +	};
> +
> +	qflash1: flash@1  {
> +		compatible = "spansion,m25p80", "jedec,spi-nor";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		m25p,fast-read;
> +		spi-max-frequency = <20000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <4>;
> +		reg = <1>;
> +	};
> +};
> +
>  &duart0 {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> index 661137ffa319..96424fd9cd2e 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> @@ -318,6 +318,19 @@
>  			status = "disabled";
>  		};
>  
> +		qspi: spi@20c0000 {
> +			status = "disabled";
> +			compatible = "fsl,ls2080a-qspi", "fsl,ls1088a-qspi";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x0 0x20c0000 0x0 0x10000>,
> +			      <0x0 0x20000000 0x0 0x10000000>;
> +			reg-names = "QuadSPI", "QuadSPI-memory";
> +			interrupts = <0 25 0x4>; /* Level high type */
> +			clocks = <&clockgen 4 3>, <&clockgen 4 3>;
> +			clock-names = "qspi_en", "qspi";
> +		};
> +
>  		i2c0: i2c@2000000 {
>  			compatible = "fsl,vf610-i2c";
>  			#address-cells = <1>;
> -- 
> 2.17.1
> 
