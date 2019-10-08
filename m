Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5D9CBCF9B4
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2019 14:25:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730439AbfJHMZx convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Tue, 8 Oct 2019 08:25:53 -0400
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:46717 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730316AbfJHMZx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Oct 2019 08:25:53 -0400
X-Originating-IP: 2.139.156.91
Received: from localhost (91.red-2-139-156.staticip.rima-tde.net [2.139.156.91])
        (Authenticated sender: gregory.clement@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 0CABA240017;
        Tue,  8 Oct 2019 12:25:49 +0000 (UTC)
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
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 00/21] Add new Marvell CN9130 SoC support
In-Reply-To: <20191004142738.7370-1-miquel.raynal@bootlin.com>
References: <20191004142738.7370-1-miquel.raynal@bootlin.com>
Date:   Tue, 08 Oct 2019 14:25:44 +0200
Message-ID: <87d0f7todz.fsf@FE-laptop>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Miquel,

> Hello,
>
> This is a respin of the last remaining patchset needed to fully support
> Marvell CN9130 SoCs. The CN9130 is made of one AP807 and one internal
> CP115. There are three development boards that are made of this SoC:
> * CN9130-DB
> * CN9131-DB (with one additional modular CP115 compared to CN9130-DB)
> * CN9132-DB (with two additional modular CP115 compared to CN9130-DB)
>
> This series applies on top of v5.4-rc1 and works thanks to the
> previously merged following series:
> * CP110 COMPHY:
> https://patchwork.kernel.org/cover/11067647/
> * AP806 CPU clocks:
> https://patchwork.kernel.org/cover/11038577/
> * AP807 clocks:
> https://patchwork.kernel.org/cover/11076435/
> * CP115 pinctrl:
> http://patchwork.ozlabs.org/cover/1142107/
>
> As CP110 and CP115 (alternatively, AP806 and AP807) are very similar,
> we first reorganize DT files to create CP11x (and AP80x) generic
> files, before including them from the new specific CP110/CP115
> (AP806/AP807) ones.
>
> A few small improvements/fixes in these files are also carried.
>
> Thanks,
> Miquèl
>
> Changes since v1:
> =================
> * Rebased on top of v5.4-rc1.
> * Rob's Reviewed-by tag on the first bindings patch (03).
> * Used the AP_NAME macro instead of hardcoding ap806 in the DT which
>   turns generic (spotted by Gregory).
> * Converted Marvell SoC compatible bindings to yaml (patch 16) as
>   requested by Rob. Add Gregory as the file maintainer.
>
>
> Ben Peled (1):
>   dt-bindings: ap80x: replace AP806 with AP80x
>
> Grzegorz Jaszczyk (7):
>   arm64: dts: marvell: Add AP806-dual cache description
>   arm64: dts: marvell: Add AP806-quad cache description
>   arm64: dts: marvell: Add AP807-quad cache description
>   dt-bindings: marvell: Declare the CN913x SoC compatibles
>   arm64: dts: marvell: Add support for Marvell CN9130-DB
>   arm64: dts: marvell: Add support for Marvell CN9131-DB
>   arm64: dts: marvell: Add support for Marvell CN9132-DB
>
> Konstantin Porotchkin (1):
>   arm64: dts: marvell: Prepare the introduction of AP807 based SoCs
>
> Miquel Raynal (12):
>   arm64: dts: marvell: Enumerate the first AP806 syscon
>   arm64: dts: marvell: Add AP806-dual missing CPU clocks
>   MAINTAINERS: Add new Marvell CN9130-based files to track
>   arm64: dts: marvell: Move clocks to AP806 specific file
>   arm64: dts: marvell: Add support for AP807/AP807-quad
>   arm64: dts: marvell: Fix CP110 NAND controller node multi-line comment
>     alignment
>   arm64: dts: marvell: Prepare the introduction of CP115
>   arm64: dts: marvell: Drop PCIe I/O ranges from CP11x file
>   arm64: dts: marvell: Externalize PCIe macros from CP11x file
>   arm64: dts: marvell: Add support for CP115
>   dt-bindings: marvell: Convert the SoC compatibles description to YAML
>   arm64: dts: marvell: Add support for Marvell CN9130 SoC support


All series applied on mvebu/dt64

Thanks,

Gregory


>
>  ...roller.txt => ap80x-system-controller.txt} |  14 +-
>  .../bindings/arm/marvell/armada-7k-8k.txt     |  24 -
>  .../bindings/arm/marvell/armada-7k-8k.yaml    |  61 ++
>  MAINTAINERS                                   |   3 +-
>  arch/arm64/boot/dts/marvell/Makefile          |   3 +
>  arch/arm64/boot/dts/marvell/armada-70x0.dtsi  |  28 +-
>  .../boot/dts/marvell/armada-8040-mcbin.dtsi   |   3 +-
>  arch/arm64/boot/dts/marvell/armada-80x0.dtsi  |  56 +-
>  .../boot/dts/marvell/armada-ap806-dual.dtsi   |  23 +
>  .../boot/dts/marvell/armada-ap806-quad.dtsi   |  42 ++
>  arch/arm64/boot/dts/marvell/armada-ap806.dtsi | 456 +-------------
>  .../boot/dts/marvell/armada-ap807-quad.dtsi   |  93 +++
>  arch/arm64/boot/dts/marvell/armada-ap807.dtsi |  29 +
>  arch/arm64/boot/dts/marvell/armada-ap80x.dtsi | 444 ++++++++++++++
>  .../arm64/boot/dts/marvell/armada-common.dtsi |   4 +-
>  arch/arm64/boot/dts/marvell/armada-cp110.dtsi | 575 +-----------------
>  arch/arm64/boot/dts/marvell/armada-cp115.dtsi |  12 +
>  arch/arm64/boot/dts/marvell/armada-cp11x.dtsi | 568 +++++++++++++++++
>  arch/arm64/boot/dts/marvell/cn9130-db.dts     | 403 ++++++++++++
>  arch/arm64/boot/dts/marvell/cn9130.dtsi       |  37 ++
>  arch/arm64/boot/dts/marvell/cn9131-db.dts     | 202 ++++++
>  arch/arm64/boot/dts/marvell/cn9132-db.dts     | 221 +++++++
>  22 files changed, 2210 insertions(+), 1091 deletions(-)
>  rename Documentation/devicetree/bindings/arm/marvell/{ap806-system-controller.txt => ap80x-system-controller.txt} (91%)
>  delete mode 100644 Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
>  create mode 100644 arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi
>  create mode 100644 arch/arm64/boot/dts/marvell/armada-ap807.dtsi
>  create mode 100644 arch/arm64/boot/dts/marvell/armada-ap80x.dtsi
>  create mode 100644 arch/arm64/boot/dts/marvell/armada-cp115.dtsi
>  create mode 100644 arch/arm64/boot/dts/marvell/armada-cp11x.dtsi
>  create mode 100644 arch/arm64/boot/dts/marvell/cn9130-db.dts
>  create mode 100644 arch/arm64/boot/dts/marvell/cn9130.dtsi
>  create mode 100644 arch/arm64/boot/dts/marvell/cn9131-db.dts
>  create mode 100644 arch/arm64/boot/dts/marvell/cn9132-db.dts
>
> -- 
> 2.20.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com
