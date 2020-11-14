Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D14692B311A
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 23:06:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726136AbgKNWEn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 17:04:43 -0500
Received: from mx2.suse.de ([195.135.220.15]:56786 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726121AbgKNWEn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 17:04:43 -0500
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id C581FAC48;
        Sat, 14 Nov 2020 22:04:41 +0000 (UTC)
Subject: Re: [PATCH mvebu-dt v2 6/6] ARM: dts: turris-omnia: update
 ethernet-phy node and handle name
To:     =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>
Cc:     arm@kernel.org, Andrew Lunn <andrew@lunn.ch>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Gregory CLEMENT <gregory.clement@bootlin.com>
References: <20201114183217.1352-1-kabel@kernel.org>
 <20201114183217.1352-7-kabel@kernel.org>
From:   =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <46bf04e0-febb-f9f2-454c-770b08a9d560@suse.de>
Date:   Sat, 14 Nov 2020 23:04:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201114183217.1352-7-kabel@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On 14.11.20 19:32, Marek Behún wrote:
> Use property name `phy-handle` instead of the deprecated `phy` to
> connect eth2 to the PHY.
> Rename the node from "phy@1" to "ethernet-phy@1", since "phy@1" is
> incorrect according to device-tree bindings documentation.
> Also remove the "ethernet-phy-id0141.0DD1" compatible string, it is not
> needed. Kernel can read the PHY identifier itself.
> 
> Signed-off-by: Marek Behún <kabel@kernel.org>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> Cc: Uwe Kleine-König <uwe@kleine-koenig.org>
> Cc: Jason Cooper <jason@lakedaemon.net>
> Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
> Cc: Andreas Färber <afaerber@suse.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> ---
>  arch/arm/boot/dts/armada-385-turris-omnia.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/armada-385-turris-omnia.dts b/arch/arm/boot/dts/armada-385-turris-omnia.dts
> index df53cf925db6..694d69798685 100644
> --- a/arch/arm/boot/dts/armada-385-turris-omnia.dts
> +++ b/arch/arm/boot/dts/armada-385-turris-omnia.dts
> @@ -145,7 +145,7 @@ fixed-link {
>  &eth2 {
>  	status = "okay";
>  	phy-mode = "sgmii";
> -	phy = <&phy1>;
> +	phy-handle = <&phy1>;
>  	phys = <&comphy5 2>;
>  	sfp = <&sfp>;
>  	buffer-manager = <&bm>;
> @@ -374,9 +374,9 @@ &mdio {
>  	pinctrl-0 = <&mdio_pins>;
>  	status = "okay";
>  
> -	phy1: phy@1 {
> +	phy1: ethernet-phy@1 {

This one I had noticed in the DT binding and verified that mainline
U-Boot does not rely on it. So ACK for this.

>  		status = "okay";

Unrelated: This property is theoretically superfluous, as unlike eth2
this node is new and doesn't overwrite a pre-existing property.

I believe in my testing overriding with status = "disabled" was not
enough to get the SFP to work, I needed to comment out the referencing
phy(-handle) property.

> -		compatible = "ethernet-phy-id0141.0DD1", "ethernet-phy-ieee802.3-c22";
> +		compatible = "ethernet-phy-ieee802.3-c22";

Does it do any harm to leave it in though?

>  		reg = <1>;
>  
>  		/* irq is connected to &pcawan pin 7 */

Regards,
Andreas

-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
GF: Felix Imendörffer
HRB 36809 (AG Nürnberg)
