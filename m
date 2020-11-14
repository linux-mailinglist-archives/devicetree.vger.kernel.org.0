Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F7022B3108
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 22:38:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726146AbgKNVgM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 16:36:12 -0500
Received: from mx2.suse.de ([195.135.220.15]:53718 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726112AbgKNVgM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 16:36:12 -0500
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id 86125AC2F;
        Sat, 14 Nov 2020 21:36:10 +0000 (UTC)
Subject: Re: [PATCH mvebu-dt v2 4/6] ARM: dts: turris-omnia: add SFP node
To:     =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
        Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     arm@kernel.org, Andrew Lunn <andrew@lunn.ch>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <20201114183217.1352-1-kabel@kernel.org>
 <20201114183217.1352-5-kabel@kernel.org>
From:   =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <972cde9c-9e4a-0e43-c9c3-9528581d8738@suse.de>
Date:   Sat, 14 Nov 2020 22:36:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201114183217.1352-5-kabel@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On 14.11.20 19:32, Marek Behún wrote:
> Turris Omnia has a SFP cage that, together with WAN PHY is connected to

"an SFP"
Comma missing after PHY (or drop before together).

> eth2 SerDes via a SerDes multiplexor. Describe the SFP cage, but leave
> it disabled. Until phylink has support for such multiplexor we will
> leave it to U-Boot to enable SFP and disable WAN PHY at boot time
> depending on whether a SFP module is present.

multiplexor vs. multiplexer may be a British thing? Thunderbird
underlines it fwiw.

> 
> Signed-off-by: Marek Behún <kabel@kernel.org>
> Fixes: 26ca8b52d6e1 ("ARM: dts: add support for Turris Omnia")
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> Cc: Uwe Kleine-König <uwe@kleine-koenig.org>
> Cc: Jason Cooper <jason@lakedaemon.net>
> Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
> Cc: Andreas Färber <afaerber@suse.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> ---
>  arch/arm/boot/dts/armada-385-turris-omnia.dts | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/armada-385-turris-omnia.dts b/arch/arm/boot/dts/armada-385-turris-omnia.dts
> index 7ccebf7d1757..14c21cddef72 100644
> --- a/arch/arm/boot/dts/armada-385-turris-omnia.dts
> +++ b/arch/arm/boot/dts/armada-385-turris-omnia.dts
> @@ -82,6 +82,22 @@ pcie@3,0 {
>  			};
>  		};
>  	};
> +
> +	sfp: sfp {
> +		compatible = "sff,sfp";
> +		i2c-bus = <&sfp_i2c>;
> +		tx-fault-gpios = <&pcawan 0 GPIO_ACTIVE_HIGH>;
> +		tx-disable-gpios = <&pcawan 1 GPIO_ACTIVE_HIGH>;
> +		rate-select0-gpios = <&pcawan 2 GPIO_ACTIVE_HIGH>;
> +		los-gpios = <&pcawan 3 GPIO_ACTIVE_HIGH>;
> +		mod-def0-gpios = <&pcawan 4 GPIO_ACTIVE_LOW>;
> +
> +		/*
> +		 * For now this has to be enabled at boot time by U-Boot when
> +		 * a SFP module is present.
> +		 */
> +		status = "disabled";
> +	};
>  };
>  
>  &bm {
> @@ -130,6 +146,7 @@ &eth2 {
>  	phy-mode = "sgmii";
>  	phy = <&phy1>;
>  	phys = <&comphy5 2>;
> +	sfp = <&sfp>;
>  	buffer-manager = <&bm>;
>  	bm,pool-long = <2>;
>  	bm,pool-short = <3>;
> @@ -195,7 +212,7 @@ i2c@3 {
>  			/* routed to PCIe2 connector (CN62A) */
>  		};
>  
> -		i2c@4 {
> +		sfp_i2c: i2c@4 {
>  			#address-cells = <1>;
>  			#size-cells = <0>;
>  			reg = <4>;

Matches what I've come up with,

Reviewed-by: Andreas Färber <afaerber@suse.de>

However, I also needed to set managed = "in-band-status" when enabling
SFP node and removing phy property. Shall we prepare it with its default
value of "auto" and add a comment? (unlike disabled -> okay,
in-band-status is longer than auto, so not sure whether it helps U-Boot,
but it may help humans.

Thanks,
Andreas

-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
GF: Felix Imendörffer
HRB 36809 (AG Nürnberg)
