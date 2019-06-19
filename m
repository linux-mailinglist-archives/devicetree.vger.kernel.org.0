Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 10DF64C3C6
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2019 00:37:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727076AbfFSWhg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jun 2019 18:37:36 -0400
Received: from pandora.armlinux.org.uk ([78.32.30.218]:42624 "EHLO
        pandora.armlinux.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726322AbfFSWhg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jun 2019 18:37:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=zcjS/s18VUk5NHxgGMeMZs6YK3QGGN5Y/fE+tjcEGRg=; b=JwJefaxTEVttzT/PqzqdqZKWI
        HbRZGtMRQTaaktYIylLLJQqotSFoPEc4vgrV4ZMtN2BwFcr4HQuq4C+QWMcPzxIG2egW1g5accdwD
        X458YE3Lm8w9Rj11wtIwgdPddJ6QYpiaUYRFpN11DC132Y2c6/nWQ4IV8pKRfP1UOVcqpYemr2McV
        F37X0yPuPPhhxGTeMfPL+RBND/If5+Roi3pfmGvDBy9D3lspD8MGAsGg+fVnju689Om9P5JBoXw1u
        cwgIQOnYnHoNQhIEjUElzTDo6Pdpz4VOY213yDK5v3sCognzz8kciDfnjErtUdv8liMzYN8pMSEWi
        TIuD45uuA==;
Received: from shell.armlinux.org.uk ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:58918)
        by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
        (Exim 4.90_1)
        (envelope-from <linux@armlinux.org.uk>)
        id 1hdjCq-0003CH-GQ; Wed, 19 Jun 2019 23:37:28 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
        (envelope-from <linux@shell.armlinux.org.uk>)
        id 1hdjCp-0001mj-Fw; Wed, 19 Jun 2019 23:37:27 +0100
Date:   Wed, 19 Jun 2019 23:37:27 +0100
From:   Russell King - ARM Linux admin <linux@armlinux.org.uk>
To:     Fabio Estevam <festevam@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: imx6qdl-sr-som: fix AR8035 phy interface mode
Message-ID: <20190619223727.zgfypqxg7bpxtduh@shell.armlinux.org.uk>
References: <E1hdjBO-0007Yt-9M@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1hdjBO-0007Yt-9M@rmk-PC.armlinux.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 19, 2019 at 11:35:58PM +0100, Russell King wrote:
> A change to the AT803x driver fixed the handling of the phy interface
> mode, but this breaks all platforms that use "rgmii" as the mode in
> their DT.  Fix the Solidrun platforms.
> 
> Fixes: 6d4cd041f0af ("net: phy: at803x: disable delay only for RGMII mode")
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Note that without this, SolidRun Hummingboard and Cubox-i platforms
have no working ethernet with at least 5.1 kernels, which is a
regression.

> ---
>  arch/arm/boot/dts/imx6qdl-sr-som.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> index 4ccb7afc4b35..6d7f6b9035bc 100644
> --- a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> @@ -53,7 +53,7 @@
>  &fec {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_microsom_enet_ar8035>;
> -	phy-mode = "rgmii";
> +	phy-mode = "rgmii-id";
>  	phy-reset-duration = <2>;
>  	phy-reset-gpios = <&gpio4 15 GPIO_ACTIVE_LOW>;
>  	status = "okay";
> -- 
> 2.7.4
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up
