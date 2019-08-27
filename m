Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0ED639EC4E
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 17:21:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727306AbfH0PU7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 11:20:59 -0400
Received: from relay7-d.mail.gandi.net ([217.70.183.200]:36115 "EHLO
        relay7-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726170AbfH0PU7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 11:20:59 -0400
X-Originating-IP: 86.207.98.53
Received: from localhost (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
        (Authenticated sender: gregory.clement@bootlin.com)
        by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 3E6BC20018;
        Tue, 27 Aug 2019 15:20:56 +0000 (UTC)
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        linux-arm-kernel@lists.infradead.org,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Marcin Wojtas <mw@semihalf.com>,
        Stefan Chulski <stefanc@marvell.com>,
        Yan Markman <ymarkman@marvell.com>,
        Konstantin Porotchkin <kostap@marvell.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 05/20] arm64: dts: marvell: Prepare the introduction of AP807 based SoCs
In-Reply-To: <20190806145500.24109-6-miquel.raynal@bootlin.com>
References: <20190806145500.24109-1-miquel.raynal@bootlin.com> <20190806145500.24109-6-miquel.raynal@bootlin.com>
Date:   Tue, 27 Aug 2019 17:20:55 +0200
Message-ID: <87d0gqzlbc.fsf@FE-laptop>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Miquel,

> From: Konstantin Porotchkin <kostap@marvell.com>
>
> Prepare the support for Marvell AP807 die. This die is very similar to
> AP806 but uses different DDR PHY. AP807 is a major component of CN9130
> SoC series.
>
> Signed-off-by: Konstantin Porotchkin <kostap@marvell.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  arch/arm64/boot/dts/marvell/armada-ap806.dtsi | 448 +----------------
>  arch/arm64/boot/dts/marvell/armada-ap80x.dtsi | 456 ++++++++++++++++++
>  2 files changed, 458 insertions(+), 446 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/marvell/armada-ap80x.dtsi
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
> index a23ddd46efc5..cdadb28f287e 100644
> --- a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
> @@ -5,454 +5,10 @@
>   * Device Tree file for Marvell Armada AP806.
>   */
>  
> -#include <dt-bindings/interrupt-controller/arm-gic.h>
> -#include <dt-bindings/thermal/thermal.h>
> -
> -/dts-v1/;
> +#define AP_NAME		ap806

I didn't find where AP_NAME is used.

> +#include "armada-ap80x.dtsi"
[...]

> diff --git a/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi b/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi
> new file mode 100644
> index 000000000000..c44cd7c64bf6
> --- /dev/null
> +++ b/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi

[...]


> +	ap806 {

This file will be used for ap806 and for ap807 but the ap name will be
the same for both varirant?

Shouldn't you use the AP_NAME here?

Gregory

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com
