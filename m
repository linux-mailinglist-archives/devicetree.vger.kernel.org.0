Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6DE8C33219
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2019 16:26:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728876AbfFCO04 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 3 Jun 2019 10:26:56 -0400
Received: from relay4-d.mail.gandi.net ([217.70.183.196]:45095 "EHLO
        relay4-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727650AbfFCO04 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jun 2019 10:26:56 -0400
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr [92.137.69.152])
        (Authenticated sender: gregory.clement@bootlin.com)
        by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 0D0B8E0008;
        Mon,  3 Jun 2019 14:26:50 +0000 (UTC)
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH resend 0/2] Marvell A7k/A8k thermal throttling
In-Reply-To: <20190521142504.31558-1-miquel.raynal@bootlin.com>
References: <20190521142504.31558-1-miquel.raynal@bootlin.com>
Date:   Mon, 03 Jun 2019 16:26:50 +0200
Message-ID: <87sgsqkamt.fsf@FE-laptop>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Miquel Raynal <miquel.raynal@bootlin.com> writes:

> Hello,
>
> This series works on top of Gregory's series adding both CPUfreq (already
> merged) and a suitable AP806 clock driver. These two patches can fly
> as-is and do not depend on Gregory's work to apply and should probably
> merged independently.
>
> With his patches, all the pieces where available to enable thermal
> throttling on the AP806 embedded in Marvell Armada 7k/8k SoCs. This is
> just the glue to make it actually work.
>
> Patch 1 changes the core numbering in the thermal-zone node to be in
> sync with the CPU numbering in the DT (from 0 to 3 instead of from 1
> to 4). Patch 2 adds trip points and cooling maps to actually enable
> the feature.
>
> Tested with an Armada 7k DB.
>
> Thanks,
> Miquèl
>
> Miquel Raynal (2):
>   arm64: dts: marvell: Change core numbering in AP806 thermal-node
>   arm64: dts: marvell: Enable AP806 thermal throttling with CPUfreq

Both pacthes applied on mvebu/dt64

Thanks,

Gregory

>
>  .../boot/dts/marvell/armada-ap806-dual.dtsi   |   2 +
>  .../boot/dts/marvell/armada-ap806-quad.dtsi   |   5 +
>  arch/arm64/boot/dts/marvell/armada-ap806.dtsi | 110 +++++++++++++++---
>  3 files changed, 103 insertions(+), 14 deletions(-)
>
> -- 
> 2.19.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com
