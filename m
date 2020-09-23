Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 83942275A77
	for <lists+devicetree@lfdr.de>; Wed, 23 Sep 2020 16:41:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726775AbgIWOkp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Sep 2020 10:40:45 -0400
Received: from mslow2.mail.gandi.net ([217.70.178.242]:39224 "EHLO
        mslow2.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726757AbgIWOkk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Sep 2020 10:40:40 -0400
Received: from relay9-d.mail.gandi.net (unknown [217.70.183.199])
        by mslow2.mail.gandi.net (Postfix) with ESMTP id 742443B27D6
        for <devicetree@vger.kernel.org>; Wed, 23 Sep 2020 14:39:07 +0000 (UTC)
X-Originating-IP: 90.65.92.90
Received: from localhost (lfbn-lyo-1-1913-90.w90-65.abo.wanadoo.fr [90.65.92.90])
        (Authenticated sender: gregory.clement@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 8D95EFF807;
        Wed, 23 Sep 2020 14:38:43 +0000 (UTC)
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Adrian Schmutzler <freifunk@adrianschmutzler.de>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: kirkwood: replace status value "ok" by "okay"
In-Reply-To: <20200830193543.50530-1-freifunk@adrianschmutzler.de>
References: <20200830193543.50530-1-freifunk@adrianschmutzler.de>
Date:   Wed, 23 Sep 2020 16:38:43 +0200
Message-ID: <87d02cimmk.fsf@BL-laptop>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Adrian,

> While the DT parser recognizes "ok" as a valid value for the
> "status" property, it is actually mentioned nowhere. Use the
> proper value "okay" instead, as done in the majority of files
> already.
>

Applied on mvebu/dt

Thanks,

Gregory

> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> ---
>  arch/arm/boot/dts/kirkwood-dockstar.dts             | 2 +-
>  arch/arm/boot/dts/kirkwood-dreamplug.dts            | 2 +-
>  arch/arm/boot/dts/kirkwood-goflexnet.dts            | 2 +-
>  arch/arm/boot/dts/kirkwood-guruplug-server-plus.dts | 2 +-
>  arch/arm/boot/dts/kirkwood-iconnect.dts             | 2 +-
>  arch/arm/boot/dts/kirkwood-iomega_ix2_200.dts       | 2 +-
>  arch/arm/boot/dts/kirkwood-nsa3x0-common.dtsi       | 2 +-
>  arch/arm/boot/dts/kirkwood.dtsi                     | 4 ++--
>  8 files changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/arch/arm/boot/dts/kirkwood-dockstar.dts b/arch/arm/boot/dts/kirkwood-dockstar.dts
> index 6a3f1bf6d9f1..264938dfa4d9 100644
> --- a/arch/arm/boot/dts/kirkwood-dockstar.dts
> +++ b/arch/arm/boot/dts/kirkwood-dockstar.dts
> @@ -34,7 +34,7 @@
>  			};
>  		};
>  		serial@12000 {
> -			status = "ok";
> +			status = "okay";
>  		};
>  	};
>  	gpio-leds {
> diff --git a/arch/arm/boot/dts/kirkwood-dreamplug.dts b/arch/arm/boot/dts/kirkwood-dreamplug.dts
> index 7f326e267494..328516351e84 100644
> --- a/arch/arm/boot/dts/kirkwood-dreamplug.dts
> +++ b/arch/arm/boot/dts/kirkwood-dreamplug.dts
> @@ -34,7 +34,7 @@
>  			};
>  		};
>  		serial@12000 {
> -			status = "ok";
> +			status = "okay";
>  		};
>  
>  		spi@10600 {
> diff --git a/arch/arm/boot/dts/kirkwood-goflexnet.dts b/arch/arm/boot/dts/kirkwood-goflexnet.dts
> index 02d87e0a1061..d4cb3cd3e2a2 100644
> --- a/arch/arm/boot/dts/kirkwood-goflexnet.dts
> +++ b/arch/arm/boot/dts/kirkwood-goflexnet.dts
> @@ -66,7 +66,7 @@
>  			};
>  		};
>  		serial@12000 {
> -			status = "ok";
> +			status = "okay";
>  		};
>  
>  		sata@80000 {
> diff --git a/arch/arm/boot/dts/kirkwood-guruplug-server-plus.dts b/arch/arm/boot/dts/kirkwood-guruplug-server-plus.dts
> index ff1260ee3fe8..dfb41393941d 100644
> --- a/arch/arm/boot/dts/kirkwood-guruplug-server-plus.dts
> +++ b/arch/arm/boot/dts/kirkwood-guruplug-server-plus.dts
> @@ -38,7 +38,7 @@
>  			};
>  		};
>  		serial@12000 {
> -			status = "ok";
> +			status = "okay";
>  		};
>  
>  		sata@80000 {
> diff --git a/arch/arm/boot/dts/kirkwood-iconnect.dts b/arch/arm/boot/dts/kirkwood-iconnect.dts
> index 4a512d80912c..95af7aa1fdcb 100644
> --- a/arch/arm/boot/dts/kirkwood-iconnect.dts
> +++ b/arch/arm/boot/dts/kirkwood-iconnect.dts
> @@ -72,7 +72,7 @@
>  			};
>  		};
>  		serial@12000 {
> -			status = "ok";
> +			status = "okay";
>  		};
>  	};
>  
> diff --git a/arch/arm/boot/dts/kirkwood-iomega_ix2_200.dts b/arch/arm/boot/dts/kirkwood-iomega_ix2_200.dts
> index 62272d58664f..2338f495d517 100644
> --- a/arch/arm/boot/dts/kirkwood-iomega_ix2_200.dts
> +++ b/arch/arm/boot/dts/kirkwood-iomega_ix2_200.dts
> @@ -112,7 +112,7 @@
>  		};
>  
>  		serial@12000 {
> -			status = "ok";
> +			status = "okay";
>  		};
>  
>  		sata@80000 {
> diff --git a/arch/arm/boot/dts/kirkwood-nsa3x0-common.dtsi b/arch/arm/boot/dts/kirkwood-nsa3x0-common.dtsi
> index 2c4037b07282..8f73197f251a 100644
> --- a/arch/arm/boot/dts/kirkwood-nsa3x0-common.dtsi
> +++ b/arch/arm/boot/dts/kirkwood-nsa3x0-common.dtsi
> @@ -45,7 +45,7 @@
>  		};
>  
>  		serial@12000 {
> -			status = "ok";
> +			status = "okay";
>  		};
>  
>  		sata@80000 {
> diff --git a/arch/arm/boot/dts/kirkwood.dtsi b/arch/arm/boot/dts/kirkwood.dtsi
> index 6c8d94beae78..fca31a5d5ac7 100644
> --- a/arch/arm/boot/dts/kirkwood.dtsi
> +++ b/arch/arm/boot/dts/kirkwood.dtsi
> @@ -369,7 +369,7 @@
>  			clocks = <&gate_clk 14>;
>  			clock-names = "sata";
>  			#phy-cells = <0>;
> -			status = "ok";
> +			status = "okay";
>  		};
>  
>  		sata_phy1: sata-phy@84000 {
> @@ -378,7 +378,7 @@
>  			clocks = <&gate_clk 15>;
>  			clock-names = "sata";
>  			#phy-cells = <0>;
> -			status = "ok";
> +			status = "okay";
>  		};
>  
>  		audio0: audio-controller@a0000 {
> -- 
> 2.20.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com
