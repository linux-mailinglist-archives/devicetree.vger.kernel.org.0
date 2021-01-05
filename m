Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B8E8E2EA17C
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 01:35:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726643AbhAEAd4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 19:33:56 -0500
Received: from mail.kernel.org ([198.145.29.99]:34302 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725921AbhAEAd4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 4 Jan 2021 19:33:56 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 02DBF2256F;
        Tue,  5 Jan 2021 00:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1609806795;
        bh=UD5a2kMJNCZvWPZAUdZleV01pInAChxbp10HQf2+cSo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=LA571rYFJMtmkXeWJGt03NY7Sh5p3Ju2l8jZ84JDWJQxOgsm22F2W7QMsz42IPz4a
         M9bt4gw4ZtecT6xm+WcB0LXhvhdOKqkJvsIN8ybXL8xtHDcgQsRFNFbgB3e9Wrxd3t
         3MZSMHBDQFsD//53OQ1ah7EeoyN63/FvOteNS/g+lS0aq5FDhxDYxhcQDY9Vf2dXFf
         t/51OVukT2KGvYCZHgzPF3LIl2KZsTKGjGazJjDVKUfSyzf50oVKW6xD3xP9N9ISzQ
         Iv4VUpnxFcfcQyCyIAcZ7nqBigXfiy1+iDNRpmOqrpttc8E2n7fuHSl1orDIuhbgad
         Zz/fhrBcGV9wA==
Date:   Tue, 5 Jan 2021 08:33:10 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Joakim Zhang <qiangqing.zhang@nxp.com>
Cc:     s.hauer@pengutronix.de, festevam@gmail.com,
        devicetree@vger.kernel.org, linux-imx@nxp.com, fugang.duan@nxp.com
Subject: Re: [PATCH 1/5] arch: arm64: imx6ul/sx/qdl: add wakeup support via
 magic packet
Message-ID: <20210105003308.GB4142@dragon>
References: <20201119095249.25911-1-qiangqing.zhang@nxp.com>
 <20201119095249.25911-2-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201119095249.25911-2-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 19, 2020 at 05:52:45PM +0800, Joakim Zhang wrote:
> Add wakeup support via magic packet on i.MX platforms.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>

'ARM: dts: imx6: ...' for subject prefix.

Shawn

> ---
>  arch/arm/boot/dts/imx6qdl-sabreauto.dtsi | 1 +
>  arch/arm/boot/dts/imx6sx-sdb.dtsi        | 2 ++
>  arch/arm/boot/dts/imx6ul.dtsi            | 2 ++
>  3 files changed, 5 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi b/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
> index afe477f32984..5e58740d40c5 100644
> --- a/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
> @@ -298,6 +298,7 @@
>  	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
>  			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
>  	fsl,err006687-workaround-present;
> +	fsl,magic-packet;
>  	status = "okay";
>  };
>  
> diff --git a/arch/arm/boot/dts/imx6sx-sdb.dtsi b/arch/arm/boot/dts/imx6sx-sdb.dtsi
> index 1351d7f70a54..c6e85e4a0883 100644
> --- a/arch/arm/boot/dts/imx6sx-sdb.dtsi
> +++ b/arch/arm/boot/dts/imx6sx-sdb.dtsi
> @@ -206,6 +206,7 @@
>  	phy-mode = "rgmii-id";
>  	phy-handle = <&ethphy1>;
>  	phy-reset-gpios = <&gpio2 7 GPIO_ACTIVE_LOW>;
> +	fsl,magic-packet;
>  	status = "okay";
>  
>  	mdio {
> @@ -227,6 +228,7 @@
>  	pinctrl-0 = <&pinctrl_enet2>;
>  	phy-mode = "rgmii-id";
>  	phy-handle = <&ethphy2>;
> +	fsl,magic-packet;
>  	status = "okay";
>  };
>  
> diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
> index 9d3411cc597b..afeec01f6522 100644
> --- a/arch/arm/boot/dts/imx6ul.dtsi
> +++ b/arch/arm/boot/dts/imx6ul.dtsi
> @@ -538,6 +538,7 @@
>  				fsl,num-tx-queues = <1>;
>  				fsl,num-rx-queues = <1>;
>  				fsl,stop-mode = <&gpr 0x10 4>;
> +				fsl,magic-packet;
>  				status = "disabled";
>  			};
>  
> @@ -885,6 +886,7 @@
>  				fsl,num-tx-queues = <1>;
>  				fsl,num-rx-queues = <1>;
>  				fsl,stop-mode = <&gpr 0x10 3>;
> +				fsl,magic-packet;
>  				status = "disabled";
>  			};
>  
> -- 
> 2.17.1
> 
