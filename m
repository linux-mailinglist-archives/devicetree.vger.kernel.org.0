Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1DA5CAA188
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2019 13:34:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388562AbfIELda (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Sep 2019 07:33:30 -0400
Received: from 3.mo6.mail-out.ovh.net ([178.33.253.26]:33711 "EHLO
        3.mo6.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732033AbfIELda (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Sep 2019 07:33:30 -0400
X-Greylist: delayed 16799 seconds by postgrey-1.27 at vger.kernel.org; Thu, 05 Sep 2019 07:33:29 EDT
Received: from player778.ha.ovh.net (unknown [10.109.143.183])
        by mo6.mail-out.ovh.net (Postfix) with ESMTP id B3FFE1DCB55
        for <devicetree@vger.kernel.org>; Thu,  5 Sep 2019 08:43:49 +0200 (CEST)
Received: from kaod.org (lfbn-1-2240-157.w90-76.abo.wanadoo.fr [90.76.60.157])
        (Authenticated sender: clg@kaod.org)
        by player778.ha.ovh.net (Postfix) with ESMTPSA id 1074C96502BD;
        Thu,  5 Sep 2019 06:43:44 +0000 (UTC)
Subject: Re: [PATCH] ARM: dts: aspeed-g4: Add all flash chips
To:     Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
References: <20190905000221.31445-1-joel@jms.id.au>
From:   =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
Message-ID: <3b7605e2-533e-2123-b866-4ef5c601dc2a@kaod.org>
Date:   Thu, 5 Sep 2019 08:43:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905000221.31445-1-joel@jms.id.au>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 12584464736013749101
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrudejiedguddthecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/09/2019 02:02, Joel Stanley wrote:
> The FMC supports five chip selects, so describe the five possible flash
> chips.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>


Reviewed-by: Cédric Le Goater <clg@kaod.org>

Thanks,

C.

> ---
>  arch/arm/boot/dts/aspeed-g4.dtsi | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
> index e465cda40fe7..dffb595d30e4 100644
> --- a/arch/arm/boot/dts/aspeed-g4.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g4.dtsi
> @@ -67,6 +67,26 @@
>  				compatible = "jedec,spi-nor";
>  				status = "disabled";
>  			};
> +			flash@1 {
> +				reg = < 1 >;
> +				compatible = "jedec,spi-nor";
> +				status = "disabled";
> +			};
> +			flash@2 {
> +				reg = < 2 >;
> +				compatible = "jedec,spi-nor";
> +				status = "disabled";
> +			};
> +			flash@3 {
> +				reg = < 3 >;
> +				compatible = "jedec,spi-nor";
> +				status = "disabled";
> +			};
> +			flash@4 {
> +				reg = < 4 >;
> +				compatible = "jedec,spi-nor";
> +				status = "disabled";
> +			};
>  		};
>  
>  		spi: spi@1e630000 {
> 

