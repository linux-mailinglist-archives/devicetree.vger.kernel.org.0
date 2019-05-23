Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9FC0B2784F
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2019 10:44:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726299AbfEWIoq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 04:44:46 -0400
Received: from mail.kernel.org ([198.145.29.99]:60082 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725814AbfEWIoq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 23 May 2019 04:44:46 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id E134E20881;
        Thu, 23 May 2019 08:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1558601084;
        bh=VuxAbBT/lQ+VqLCO5y4r4xqAa4P5u307B+vHost8Qds=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ezeITHn4Re/zKK20/gziNX7bkYNQS2gE9Hgi+c1SmSdD3ArHPD+YadwO8HExIDQLw
         XxI7XaN2eG+7mUNwYqzVbmyv98s7CjXbVmIM9r6cGI1YoCoyFNtKSMWD6qtLZjEYgY
         A2N8ZCybwnqBo30y6ropX3azbbh4+T4iupJjmF0o=
Date:   Thu, 23 May 2019 16:43:42 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Kuldeep Singh <kuldeep.singh@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
        "broonie@kernel.org" <broonie@kernel.org>,
        Ashish Kumar <ashish.kumar@nxp.com>
Subject: Re: [PATCH] arm64: dts: ls1012a: Add QSPI support for ls1012a
Message-ID: <20190523084340.GM9261@dragon>
References: <20190516114807.30817-1-kuldeep.singh@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190516114807.30817-1-kuldeep.singh@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 16, 2019 at 11:47:04AM +0000, Kuldeep Singh wrote:
> QSPI support is added for kernel version greater than 5.0 and supports
> quad mode defined by
> TX-WIDTH = <4>, RX-WIDTH = <4>
> 
> RDB/QDS has one 64MB flash from SPANSION(s25fs512s)
> 
> Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> ---
> Dependency on https://patchwork.ozlabs.org/patch/1100471/
> Dependency on https://patchwork.ozlabs.org/patch/1100472/
> 
>  .../arm64/boot/dts/freescale/fsl-ls1012a-frdm.dts | 15 +++++++++++++++
>  .../arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts | 15 +++++++++++++++
>  arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts | 15 +++++++++++++++
>  arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts | 15 +++++++++++++++
>  arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi    | 15 +++++++++++++++
>  5 files changed, 75 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a-frdm.dts b/arch/arm64/boot/dts/freescale/fsl-ls1012a-frdm.dts
> index f90c040fd5e8..8826278b37bf 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1012a-frdm.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a-frdm.dts
> @@ -61,6 +61,21 @@
>  	status = "okay";
>  };
>  
> +&qspi {

Please sort these labeling nodes alphabetically.  That said, &qspi
should go after &i2c0.

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
> +};
> +
>  &i2c0 {
>  	status = "okay";
>  
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts b/arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts
> index 8749634c55ee..0246e8c97628 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a-frwy.dts
> @@ -20,6 +20,21 @@
>  	status = "okay";
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
> +};
> +
>  &i2c0 {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts
> index 2fb1cb1f7d8f..c304fa20c1c9 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a-qds.dts
> @@ -90,6 +90,21 @@
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
> +};
> +
>  &duart0 {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts
> index 5edb1e137a52..6017e9cfe40a 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a-rdb.dts
> @@ -38,3 +38,18 @@
>  &sata {
>  	status = "okay";
>  };
> +
> +&qspi {
> +	status = "okay";
> +
> +	qflash0: flash@0  {
> +		compatible = "spansion,m25p80", "jedec,spi-nor";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		m25p,fast-read;
> +		spi-max-frequency = <20000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <4>;
> +		reg = <0>;
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
> index ec6257a5b251..268268c6a149 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
> @@ -350,6 +350,21 @@
>  			status = "disabled";
>  		};
>  
> +		qspi: spi@1550000 {

Please sort node with unit-address in that address.  That said, it
should go before esdhc@1560000.

> +			compatible = "fsl,ls1021a-qspi", "fsl,ls1012a-qspi";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x0 0x1550000 0x0 0x10000>,
> +				<0x0 0x40000000 0x0 0x10000000>;
> +			reg-names = "QuadSPI", "QuadSPI-memory";
> +			interrupts = <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>;
> +			clock-names = "qspi_en", "qspi";
> +			clocks = <&clockgen 4 1>, <&clockgen 4 1>;
> +			big-endian;
> +			fsl,qspi-has-second-chip;

Undocumented property?

Shawn

> +			status = "disabled";
> +		};
> +
>  		duart0: serial@21c0500 {
>  			compatible = "fsl,ns16550", "ns16550a";
>  			reg = <0x00 0x21c0500 0x0 0x100>;
> -- 
> 2.17.1
> 
