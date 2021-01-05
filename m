Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01C0F2EA185
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 01:38:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726980AbhAEAf6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 19:35:58 -0500
Received: from mail.kernel.org ([198.145.29.99]:34522 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726631AbhAEAf5 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 4 Jan 2021 19:35:57 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 946652255F;
        Tue,  5 Jan 2021 00:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1609806916;
        bh=sTEm2wPQvrNhNL7EJnGNHNKpwCql54C5yR9IfNKG9Z4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=jl2Pd4HNI9w+5XhKTkMXsF0aXWvVHqhttsiqmQKEwDyBab6A2098fuu4GEUGuiXmF
         qsyh9kAzdZW9hzGFJDi1eslyGqO3d2gWs9oLBARDgXKP3G/Fg7fA4mYLIuyax9BmV4
         9fSoMx3e6vx+KfZMHWArdKj01q37Xl3q4raWOpHdQkgD8u424LbJ01II+hOhUpZNKy
         OkK5Aspi3/h71nEEq5CzFSZhh3RF73NAh31byTc5q9bhSHSttXQhKK3ZBsKEmyR3QF
         0h0UfZjysWH79EAWtlS13riEgxcIlNJaJHd41ce7qxfKBYKYLAcoI4eRPa7YhY+fL5
         Vpubp2UF1XNEQ==
Date:   Tue, 5 Jan 2021 08:35:12 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Joakim Zhang <qiangqing.zhang@nxp.com>
Cc:     s.hauer@pengutronix.de, festevam@gmail.com,
        devicetree@vger.kernel.org, linux-imx@nxp.com, fugang.duan@nxp.com
Subject: Re: [PATCH 4/5] arch: arm64: dts: imx8mq/m/n/p: add mac address for
 FEC
Message-ID: <20210105003511.GD4142@dragon>
References: <20201119095249.25911-1-qiangqing.zhang@nxp.com>
 <20201119095249.25911-5-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201119095249.25911-5-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 19, 2020 at 05:52:48PM +0800, Joakim Zhang wrote:
> Add mac address in efuse, so that FEC driver can parse it from nvmem
> cell.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 7 +++++++
>  arch/arm64/boot/dts/freescale/imx8mn.dtsi | 7 +++++++
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 7 +++++++
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 7 +++++++
>  4 files changed, 28 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 367174031a90..0fbff13a9629 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -521,6 +521,10 @@
>  				cpu_speed_grade: speed-grade@10 {
>  					reg = <0x10 4>;
>  				};
> +
> +				fec_mac_address: mac-address@640 {

Shouldn't the unit-address be @90 rather than @640?

Shawn

> +					reg = <0x90 6>;
> +				};
>  			};
>  
>  			anatop: anatop@30360000 {
> @@ -917,6 +921,9 @@
>  				assigned-clock-rates = <0>, <100000000>, <125000000>, <0>;
>  				fsl,num-tx-queues = <3>;
>  				fsl,num-rx-queues = <3>;
> +				nvmem-cells = <&fec_mac_address>;
> +				nvmem-cell-names = "mac-address";
> +				nvmem_macaddr_swap;
>  				status = "disabled";
>  			};
>  
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> index 7556b24b6467..6c16d09e47a5 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> @@ -391,6 +391,10 @@
>  				cpu_speed_grade: speed-grade@10 {
>  					reg = <0x10 4>;
>  				};
> +
> +				fec_mac_address: mac-address@640 {
> +					reg = <0x90 6>;
> +				};
>  			};
>  
>  			anatop: anatop@30360000 {
> @@ -768,6 +772,9 @@
>  				assigned-clock-rates = <0>, <100000000>, <125000000>, <0>;
>  				fsl,num-tx-queues = <3>;
>  				fsl,num-rx-queues = <3>;
> +				nvmem-cells = <&fec_mac_address>;
> +				nvmem-cell-names = "mac-address";
> +				nvmem_macaddr_swap;
>  				status = "disabled";
>  			};
>  
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index 3d9f5010769d..14176ee9a19c 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -331,6 +331,10 @@
>  				cpu_speed_grade: speed-grade@10 {
>  					reg = <0x10 4>;
>  				};
> +
> +				eth_mac1: mac-address@640 {
> +					reg = <0x90 6>;
> +				};
>  			};
>  
>  			anatop: anatop@30360000 {
> @@ -770,6 +774,9 @@
>  				assigned-clock-rates = <0>, <100000000>, <125000000>, <0>;
>  				fsl,num-tx-queues = <3>;
>  				fsl,num-rx-queues = <3>;
> +				nvmem-cells = <&eth_mac1>;
> +				nvmem-cell-names = "mac-address";
> +				nvmem_macaddr_swap;
>  				status = "disabled";
>  			};
>  		};
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index 8682a484dea5..6eb773fe6cec 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -558,6 +558,10 @@
>  				cpu_speed_grade: speed-grade@10 {
>  					reg = <0x10 4>;
>  				};
> +
> +				fec_mac_address: mac-address@640 {
> +					reg = <0x90 6>;
> +				};
>  			};
>  
>  			anatop: syscon@30360000 {
> @@ -1163,6 +1167,9 @@
>  				assigned-clock-rates = <0>, <100000000>, <125000000>, <0>;
>  				fsl,num-tx-queues = <3>;
>  				fsl,num-rx-queues = <3>;
> +				nvmem-cells = <&fec_mac_address>;
> +				nvmem-cell-names = "mac-address";
> +				nvmem_macaddr_swap;
>  				status = "disabled";
>  			};
>  		};
> -- 
> 2.17.1
> 
