Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE62D2F9A6F
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 08:23:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730151AbhARHXZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 02:23:25 -0500
Received: from mail.kernel.org ([198.145.29.99]:42278 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730941AbhARHXH (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 18 Jan 2021 02:23:07 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 42F33223DB;
        Mon, 18 Jan 2021 07:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1610954545;
        bh=Dys7rGW1fG7tf0UqdF5FrJQ9Cfnw1iIv2F3vpVjk03k=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=XL1wBH7lWLSYViezMFlGqkpoeFqzJbmTXx44kQJ62VcXev+z/yXVMbtuzGRovLTuK
         wQINKshwMsBrtGsNfUtpou1IArNuM09LIkaCX5T/q+fLNBYIk+NL3IwKKowNhoBi3s
         VhyJWalS711mbFfe11aM7dB9k0woiIK6vMJboK9ea+Q00Nyi6b/EKfyRtXOcMvm2OA
         9dNFUGKIxVGgxNuWi36L9U9v6GjFeYIdV495xi45IsyePDE/gJmERyi2t0WcN3OKxz
         Zn+bp9RX5Y6mmwl3AKesBpEzZYsmmlQrNIkZzKVOhPVxuL0cfMor0P3i5U+9PSyMIx
         y2k5kN2vycpmQ==
Date:   Mon, 18 Jan 2021 15:22:19 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Russell King <rmk+kernel@armlinux.org.uk>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] ARM: dts: imx6qdl-sr-som: fix some cubox-i platforms
Message-ID: <20210118072218.GO28365@dragon>
References: <E1l00FW-0006G8-U5@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1l00FW-0006G8-U5@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 14, 2021 at 10:53:06AM +0000, Russell King wrote:
> The PHY address bit 2 is configured by the LED pin. Attaching a LED
> to this pin is not sufficient to guarantee this configuration pin is
> correctly read. This leads to some platforms having their PHY at
> address 0 and others at address 4.
> 
> If there is no phy-handle specified, the FEC driver will scan the PHY
> bus for a PHY and use that. Consequently, adding the DT configuration
> of the PHY and the phy properties to the FEC driver broke some boards.
> 
> Fix this by removing the phy-handle property, and listing two PHY
> entries for both possible PHY addresses, so that the DT configuration
> for the PHY can be found by the PHY driver.
> 
> Fixes: 86b08bd5b994 ("ARM: dts: imx6-sr-som: add ethernet PHY configuration")
> Reported-by: Christoph Mattheis <christoph.mattheis@arcor.de>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
>  arch/arm/boot/dts/imx6qdl-sr-som.dtsi | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> index b06577808ff4..1d1f9ec27045 100644
> --- a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> @@ -53,7 +53,6 @@
>  &fec {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_microsom_enet_ar8035>;
> -	phy-handle = <&phy>;
>  	phy-mode = "rgmii-id";
>  	phy-reset-duration = <2>;
>  	phy-reset-gpios = <&gpio4 15 GPIO_ACTIVE_LOW>;
> @@ -63,10 +62,18 @@
>  		#address-cells = <1>;
>  		#size-cells = <0>;
>  
> -		phy: ethernet-phy@0 {
> +		/*
> +		 * The PHY can appear at either address 0 or 4 due to the
> +		 * configuration (LED) pin not being pulled sufficiently.
> +		 */
> +		ethernet-phy@0 {
>  			reg = <0>;
>  			qca,clk-out-frequency = <125000000>;
>  		};
> +		ethernet-phy@4 {

Let's have a newline between nodes.

Fixed it up and applied.

Shawn

> +			reg = <4>;
> +			qca,clk-out-frequency = <125000000>;
> +		};
>  	};
>  };
>  
> -- 
> 2.20.1
> 
