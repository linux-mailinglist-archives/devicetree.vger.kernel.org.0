Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 970A52B3104
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 22:26:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726121AbgKNVZp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 16:25:45 -0500
Received: from mx2.suse.de ([195.135.220.15]:51790 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726112AbgKNVZp (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 16:25:45 -0500
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id 9CD16ABDE;
        Sat, 14 Nov 2020 21:25:44 +0000 (UTC)
Subject: Re: [PATCH mvebu-dt v2 2/6] ARM: dts: turris-omnia: add comphy handle
 to eth2
To:     =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
        Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     arm@kernel.org, Andrew Lunn <andrew@lunn.ch>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <20201114183217.1352-1-kabel@kernel.org>
 <20201114183217.1352-3-kabel@kernel.org>
From:   =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <327805df-b1ba-8723-fdbd-dee93491eba4@suse.de>
Date:   Sat, 14 Nov 2020 22:25:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201114183217.1352-3-kabel@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14.11.20 19:32, Marek Behún wrote:
> The eth2 controller on Turris Omnia is connected to SerDes. For SFP to
> be able to switch between 1G ans 2.5G modes the comphy link has to be

Typo "ans" is still present in v2, despite pointed out by Andrew.

> defined.
> 
> Signed-off-by: Marek Behún <kabel@kernel.org>
> Fixes: f3a6a9f3704a ("ARM: dts: add description for Armada 38x ...")
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> Cc: Uwe Kleine-König <uwe@kleine-koenig.org>
> Cc: Jason Cooper <jason@lakedaemon.net>
> Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
> Cc: Andreas Färber <afaerber@suse.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> ---
>  arch/arm/boot/dts/armada-385-turris-omnia.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boot/dts/armada-385-turris-omnia.dts b/arch/arm/boot/dts/armada-385-turris-omnia.dts
> index b6bd73d8f2ba..9de26c78ec4c 100644
> --- a/arch/arm/boot/dts/armada-385-turris-omnia.dts
> +++ b/arch/arm/boot/dts/armada-385-turris-omnia.dts
> @@ -129,6 +129,7 @@ &eth2 {
>  	status = "okay";
>  	phy-mode = "sgmii";
>  	phy = <&phy1>;
> +	phys = <&comphy5 2>;
>  	buffer-manager = <&bm>;
>  	bm,pool-long = <2>;
>  	bm,pool-short = <3>;

Property matches what I've come up with,

Reviewed-by: Andreas Färber <afaerber@suse.de>

Thanks,
Andreas

-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
GF: Felix Imendörffer
HRB 36809 (AG Nürnberg)
