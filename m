Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 84E5733ABF3
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 08:04:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229748AbhCOHD2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 03:03:28 -0400
Received: from mail.kernel.org ([198.145.29.99]:57138 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229663AbhCOHDU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 15 Mar 2021 03:03:20 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 364EE64E21;
        Mon, 15 Mar 2021 07:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1615791800;
        bh=FqvtiBmaPgRyCbg789nS04VcPbAIilsWOT16ZGjk9i8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IOMbEGrnwOQ0Q9w9QPITOt2U0hjfdkeucHkDjJ+mup8CSu5Jji1XyB2/ih7pc/HNH
         2P6+Qr8OgZSQNuYoBaVQvMoWRUkYwhBJ8Xm/olbzeW7B65RGlOqTZ7gvwjaR0KcjPj
         zAZ/yMPGvFI8KrTu8ZMQ68QkC2+fJJ2bGQNge5L5N0jUiDcNotkXfSz9IODyjR7Xzj
         REWUVQFYZ+LQ2niMO4R8V91Fh679IJg/9tFuPIHsRO8ah+yqZ7Gz6k1HSUWiELWXwW
         xqcDz35oDUwBRGtJl9z8kz81QCjkfsiiA9pLCKgiOiVDw+BKeB61PELAtBYsq9p7yh
         EZRYgTGaV6b7Q==
Date:   Mon, 15 Mar 2021 15:03:15 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Russell King <rmk+kernel@armlinux.org.uk>
Cc:     Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Jon Nettleton <jon@solid-run.com>
Subject: Re: [PATCH] arm64: dts: lx2160a-clearfog-itx: add SFP support
 [*experimental*]
Message-ID: <20210315070314.GN11246@dragon>
References: <E1lJfLu-0000Q2-Nl@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1lJfLu-0000Q2-Nl@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 09, 2021 at 04:36:58PM +0000, Russell King wrote:
> Add 2x2 SFP+ cage support for clearfog-itx boards.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

What is the implication of [*experimental*] in subject?

Shawn

> ---
>  .../boot/dts/freescale/fsl-lx2160a-cex7.dtsi  | 24 +++++++
>  .../freescale/fsl-lx2160a-clearfog-itx.dtsi   | 64 +++++++++++++++++++
>  2 files changed, 88 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
> index 459dccad8326..afb455210bd0 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-cex7.dtsi
> @@ -122,6 +122,30 @@
>  				vcc-supply = <&sb_3v3>;
>  			};
>  		};
> +
> +		sfp0_i2c: i2c@4 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <4>;
> +		};
> +
> +		sfp1_i2c: i2c@5 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <5>;
> +		};
> +
> +		sfp2_i2c: i2c@6 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <6>;
> +		};
> +
> +		sfp3_i2c: i2c@7 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <7>;
> +		};
>  	};
>  };
>  
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-itx.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-itx.dtsi
> index 2b63235ca627..17f8e733972a 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-itx.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-itx.dtsi
> @@ -30,6 +30,54 @@
>  			gpios = <&gpio2 6 GPIO_ACTIVE_LOW>;
>  		};
>  	};
> +
> +	sfp0: sfp-0 {
> +		compatible = "sff,sfp";
> +		i2c-bus = <&sfp0_i2c>;
> +		mod-def0-gpio = <&gpio2 0 GPIO_ACTIVE_LOW>;
> +		maximum-power-milliwatt = <2000>;
> +	};
> +
> +	sfp1: sfp-1 {
> +		compatible = "sff,sfp";
> +		i2c-bus = <&sfp1_i2c>;
> +		mod-def0-gpio = <&gpio2 9 GPIO_ACTIVE_LOW>;
> +		maximum-power-milliwatt = <2000>;
> +	};
> +
> +	sfp2: sfp-2 {
> +		compatible = "sff,sfp";
> +		i2c-bus = <&sfp2_i2c>;
> +		mod-def0-gpio = <&gpio2 10 GPIO_ACTIVE_LOW>;
> +		maximum-power-milliwatt = <2000>;
> +	};
> +
> +	sfp3: sfp-3 {
> +		compatible = "sff,sfp";
> +		i2c-bus = <&sfp3_i2c>;
> +		mod-def0-gpio = <&gpio2 11 GPIO_ACTIVE_LOW>;
> +		maximum-power-milliwatt = <2000>;
> +	};
> +};
> +
> +&dpmac7 {
> +	sfp = <&sfp0>;
> +	managed = "in-band-status";
> +};
> +
> +&dpmac8 {
> +	sfp = <&sfp1>;
> +	managed = "in-band-status";
> +};
> +
> +&dpmac9 {
> +	sfp = <&sfp2>;
> +	managed = "in-band-status";
> +};
> +
> +&dpmac10 {
> +	sfp = <&sfp3>;
> +	managed = "in-band-status";
>  };
>  
>  &emdio2 {
> @@ -44,6 +92,22 @@
>  	status = "okay";
>  };
>  
> +&pcs_mdio7 {
> +	status = "okay";
> +};
> +
> +&pcs_mdio8 {
> +	status = "okay";
> +};
> +
> +&pcs_mdio9 {
> +	status = "okay";
> +};
> +
> +&pcs_mdio10 {
> +	status = "okay";
> +};
> +
>  &sata0 {
>  	status = "okay";
>  };
> -- 
> 2.20.1
> 
