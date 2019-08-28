Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AE617A05D1
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 17:12:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726504AbfH1PMq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Aug 2019 11:12:46 -0400
Received: from mail.nic.cz ([217.31.204.67]:33034 "EHLO mail.nic.cz"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726439AbfH1PMq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Aug 2019 11:12:46 -0400
Received: from dellmb.labs.office.nic.cz (unknown [IPv6:2001:1488:fffe:6:cac7:3539:7f1f:463])
        by mail.nic.cz (Postfix) with ESMTP id 48EA713FC6E;
        Wed, 28 Aug 2019 17:12:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
        t=1567005164; bh=opfNJyY0Tg7VzLAHkxCxYS9TKfcJkqAPmgA3oqpiP+M=;
        h=From:To:Date;
        b=jYMnS2uZovWCpAgWtAuMTBZyj3mtOPg4qpVp6JYU/XSMt/q0GiznbAwo8k0mkeWpW
         Q4/ptKzGGJCIwL3Xoy5knoJnHDfzAlVfHaEBHchExohjQ4HrHXfQFvZjl8YAKdfbaW
         ms/8X2KG7HPTxdfRS84fjX82UMLS89zD4sFyKz+E=
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
To:     arm@kernel.org
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        Andrew Lunn <andrew@lunn.ch>,
        =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
Subject: [PATCH v2 mvebu-dt64 0/3] Add Turris Mox device-tree
Date:   Wed, 28 Aug 2019 17:12:40 +0200
Message-Id: <20190828151243.23542-1-marek.behun@nic.cz>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.100.3 at mail.nic.cz
X-Virus-Status: Clean
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
        shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello, this is the second version of patches adding Turris Mox dts.
I have addressed Andrew's comments about led label, reset button
function and sfp i2c bus speed. The other issues I have explained
in reply to Andrew. Here is a copy of those:

> > The node is called i2c0, but here you have i2c1_pins?

> That is how this is defined in armada-37xx.dtsi. First i2c has
> phandle pointer called i2c0, second i2c1. But the pinctrl drivers uses
> i2c1 and i2c2. All device trees need to be changed for this. This can
> be done later in a separate commit for all device trees using
> armada-37xx.dtsi

> > > > +&pcie_reset_pins {
> > > > +	function = "gpio";
> > > > +};
> > 
> > Should there be something to indicate which GPIO?

> No. The thing here is that the function here should remain "pcie"
> ideally. When that pin is configured in pcie mode, modifying specific
> pcie register should control the pin. But for some reason on our SOC
> it does not. I suspect it does not work for Miquel Raynal either,
> since he sent patches for aardvark that use reset-gpio as well (see
> https://lkml.org/lkml/2018/12/12/242 ).
> So we configure it in gpio mode and than in the pcie node we have
>   reset-gpios = <&gpiosb 3 GPIO_ACTIVE_LOW>;

> > Does u-boot also modify this, if switch2 does not exist? I don't
> > know if it actually matters, but if the switch does not exist, but
> > the routing entry exists, this switch might still send it frames and
> > use up some of your bandwidth?

> That port has status = "disabled" by default. U-Boot enables that node
> if second switch is present. U-Boot removes all disabled nodes before
> boot. Even if it did not, kernel ignores disabled nodes here.

Marek

Marek Behún (3):
  arm64: dts: marvell: armada-37xx: add SPI CS1 pinctrl
  dt-bindings: marvell: document Turris Mox compatible
  arm64: dts: marvell: add DTS for Turris Mox

 .../bindings/arm/marvell/armada-37xx.txt      |   8 +
 arch/arm64/boot/dts/marvell/Makefile          |   1 +
 .../dts/marvell/armada-3720-turris-mox.dts    | 840 ++++++++++++++++++
 arch/arm64/boot/dts/marvell/armada-37xx.dtsi  |   5 +
 4 files changed, 854 insertions(+)
 create mode 100644 arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts

-- 
2.21.0

