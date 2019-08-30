Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D8B02A3EE5
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2019 22:20:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727963AbfH3UUW convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Fri, 30 Aug 2019 16:20:22 -0400
Received: from relay3-d.mail.gandi.net ([217.70.183.195]:46969 "EHLO
        relay3-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727888AbfH3UUV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Aug 2019 16:20:21 -0400
X-Originating-IP: 87.231.134.186
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
        (Authenticated sender: gregory.clement@bootlin.com)
        by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 4F1996000E;
        Fri, 30 Aug 2019 20:20:19 +0000 (UTC)
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Marek =?utf-8?Q?Beh=C3=BAn?= <marek.behun@nic.cz>, arm@kernel.org
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        Andrew Lunn <andrew@lunn.ch>,
        Marek =?utf-8?Q?Beh=C3=BAn?= <marek.behun@nic.cz>
Subject: Re: [PATCH v2 mvebu-dt64 0/3] Add Turris Mox device-tree
In-Reply-To: <20190828151243.23542-1-marek.behun@nic.cz>
References: <20190828151243.23542-1-marek.behun@nic.cz>
Date:   Fri, 30 Aug 2019 22:20:18 +0200
Message-ID: <874l1yxv5p.fsf@FE-laptop>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

> Hello, this is the second version of patches adding Turris Mox dts.
> I have addressed Andrew's comments about led label, reset button
> function and sfp i2c bus speed. The other issues I have explained
> in reply to Andrew. Here is a copy of those:
>
>> > The node is called i2c0, but here you have i2c1_pins?
>
>> That is how this is defined in armada-37xx.dtsi. First i2c has
>> phandle pointer called i2c0, second i2c1. But the pinctrl drivers uses
>> i2c1 and i2c2. All device trees need to be changed for this. This can
>> be done later in a separate commit for all device trees using
>> armada-37xx.dtsi
>
>> > > > +&pcie_reset_pins {
>> > > > +	function = "gpio";
>> > > > +};
>> > 
>> > Should there be something to indicate which GPIO?
>
>> No. The thing here is that the function here should remain "pcie"
>> ideally. When that pin is configured in pcie mode, modifying specific
>> pcie register should control the pin. But for some reason on our SOC
>> it does not. I suspect it does not work for Miquel Raynal either,
>> since he sent patches for aardvark that use reset-gpio as well (see
>> https://lkml.org/lkml/2018/12/12/242 ).
>> So we configure it in gpio mode and than in the pcie node we have
>>   reset-gpios = <&gpiosb 3 GPIO_ACTIVE_LOW>;
>
>> > Does u-boot also modify this, if switch2 does not exist? I don't
>> > know if it actually matters, but if the switch does not exist, but
>> > the routing entry exists, this switch might still send it frames and
>> > use up some of your bandwidth?
>
>> That port has status = "disabled" by default. U-Boot enables that node
>> if second switch is present. U-Boot removes all disabled nodes before
>> boot. Even if it did not, kernel ignores disabled nodes here.
>
> Marek
>
> Marek Behún (3):
>   arm64: dts: marvell: armada-37xx: add SPI CS1 pinctrl
>   dt-bindings: marvell: document Turris Mox compatible
>   arm64: dts: marvell: add DTS for Turris Mox

The 3 patches are applied on mvebu/dt64

Thanks,

Gregory


>
>  .../bindings/arm/marvell/armada-37xx.txt      |   8 +
>  arch/arm64/boot/dts/marvell/Makefile          |   1 +
>  .../dts/marvell/armada-3720-turris-mox.dts    | 840 ++++++++++++++++++
>  arch/arm64/boot/dts/marvell/armada-37xx.dtsi  |   5 +
>  4 files changed, 854 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
>
> -- 
> 2.21.0
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com
