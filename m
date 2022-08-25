Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11C545A05A7
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 03:33:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232069AbiHYBda (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 21:33:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231964AbiHYBd2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 21:33:28 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E837A8E443
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 18:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:
        Cc:To:From:From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:
        Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
        Content-Disposition:In-Reply-To:References;
        bh=evoJrkAK0wRgY9NFjgia2FSCX8sU7dzwslKQg7yUQig=; b=21M5JCdp51rZTkkx17fS+o2cHU
        5wBSzLndmEaSA4sHX5fr7xTWSjzOktcKVS6Q6i2x6s4VmEyKdZ1V7dqNhU+EMktMGvLEczlqD0U9Z
        35/Enh7ZpUQAYG50NEk780yOGLq2qVKcDU4cwDB0W4zBx3Xv28MUj0KPvfMjL/twjubk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oR1kH-00EW2b-9d; Thu, 25 Aug 2022 03:33:21 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Gregory Clement <gregory.clement@bootlin.com>
Cc:     arm-soc <arm@kernel.org>, Device Tree <devicetree@vger.kernel.org>,
        Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH v2 00/12] Start converting MVEBU bindings to DT Schema
Date:   Thu, 25 Aug 2022 03:32:46 +0200
Message-Id: <20220825013258.3459714-1-andrew@lunn.ch>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is the first batch of patches converting the Marvell MVEBU driver
bindings from .txt to .yaml. So far, kirkwood has been used for
testing, but these drivers apply to a range of Marvell SoCs.

In order to reduce the number of warnings from the DT schema checking
tools, a few minor changes have been made to a few DT files. No actual
errors have been found, the changes just make the checker quiet.

I propose these patches are merged via mvebu to arm-soc. No conflicts
are expected with these patches.

v2:

s/^DT/dt-bindings/
s/YAML/DT schema/
Drop 'Device Tree Bindings' from title:
pinctrl:
  Add additionalProperties: false
  requires for marvell,function & marvell,pins
  regex for mpp values
Split pinctrl/marvell,ac5-pinctrl.yaml cleanup into its own patch
Add interrupts-extended to marvell,orion-wdt.yaml
Replace compatible 'bar' with 'arm,pl353-nand-r2p1' to avoid unknown warning
Fix some of the USB controller warnings. It is unclear if the kirkwood
warnings are valid usage of the core USB binding or not.

Andrew Lunn (12):
  dt-bindings: RTC: orion-rtc: Convert to DT schema
  dt-bindings: thermal: marvell,kirkwood-thermal: Convert to DT schema
  dt-bindings: pinctrl: Convert marvell,kirkwood-pintctrl to DT schema
  dt-bindings: marvell,ac5-pinctrl: Refactor to look like other Marvell
    pinctrl files
  dt-bindings: USB: Convert ehci-orion to DT schema
  dt-bindings: watchdog: Convert marvel.txt to DT schema
  arm: DT: kirkwood/orion5: Rename watchdog node
  dt-bindings: nand-controller: Reflect reality of marvell,orion-nand
  dt-bindings: mtd: Convert orion-nand to DT schema
  arm: DT: kirkwood.dtsi: Rename nand to nand-controller
  dt-bindings: timer: Convert marvell,orion-timer.txt to DT schema
  dt-bindings: clock: Convert mvebu-gated-clock.txt to DT schema

 .../clock/marvell,kirkwood-gating-clock.yaml  | 229 +++++++++++
 .../bindings/clock/mvebu-gated-clock.txt      | 205 ----------
 .../bindings/mtd/marvell,orion-nand.yaml      |  98 +++++
 .../bindings/mtd/nand-controller.yaml         |  17 +-
 .../devicetree/bindings/mtd/orion-nand.txt    |  50 ---
 .../pinctrl/marvell,88f6180-pinctrl.yaml      |  73 ++++
 .../pinctrl/marvell,88f6190-pinctrl.yaml      |  73 ++++
 .../pinctrl/marvell,88f6192-pinctrl.yaml      |  73 ++++
 .../pinctrl/marvell,88f6281-pinctrl.yaml      |  74 ++++
 .../pinctrl/marvell,88f6282-pinctrl.yaml      |  74 ++++
 .../pinctrl/marvell,98dx1135-pinctrl.yaml     |  72 ++++
 .../pinctrl/marvell,98dx4122-pinctrl.yaml     |  72 ++++
 .../bindings/pinctrl/marvell,ac5-pinctrl.yaml |  23 +-
 .../pinctrl/marvell,kirkwood-pinctrl.txt      | 359 ------------------
 .../bindings/rtc/marvell,orion-rtc.yaml       |  48 +++
 .../devicetree/bindings/rtc/orion-rtc.txt     |  18 -
 .../bindings/thermal/kirkwood-thermal.txt     |  15 -
 .../thermal/marvell,kirkwood-thermal.yaml     |  32 ++
 .../bindings/timer/marvell,orion-timer.txt    |  16 -
 .../bindings/timer/marvell,orion-timer.yaml   |  51 +++
 .../devicetree/bindings/usb/ehci-orion.txt    |  22 --
 .../bindings/usb/marvell,orion-ehci.yaml      |  48 +++
 .../devicetree/bindings/watchdog/marvel.txt   |  45 ---
 .../bindings/watchdog/marvell,orion-wdt.yaml  | 101 +++++
 arch/arm/boot/dts/kirkwood.dtsi               |   4 +-
 arch/arm/boot/dts/orion5x.dtsi                |   2 +-
 26 files changed, 1150 insertions(+), 744 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/marvell,kirkwood-gating-clock.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/mvebu-gated-clock.txt
 create mode 100644 Documentation/devicetree/bindings/mtd/marvell,orion-nand.yaml
 delete mode 100644 Documentation/devicetree/bindings/mtd/orion-nand.txt
 create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,88f6180-pinctrl.yaml
 create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,88f6190-pinctrl.yaml
 create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,88f6192-pinctrl.yaml
 create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,88f6281-pinctrl.yaml
 create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,88f6282-pinctrl.yaml
 create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,98dx1135-pinctrl.yaml
 create mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,98dx4122-pinctrl.yaml
 delete mode 100644 Documentation/devicetree/bindings/pinctrl/marvell,kirkwood-pinctrl.txt
 create mode 100644 Documentation/devicetree/bindings/rtc/marvell,orion-rtc.yaml
 delete mode 100644 Documentation/devicetree/bindings/rtc/orion-rtc.txt
 delete mode 100644 Documentation/devicetree/bindings/thermal/kirkwood-thermal.txt
 create mode 100644 Documentation/devicetree/bindings/thermal/marvell,kirkwood-thermal.yaml
 delete mode 100644 Documentation/devicetree/bindings/timer/marvell,orion-timer.txt
 create mode 100644 Documentation/devicetree/bindings/timer/marvell,orion-timer.yaml
 delete mode 100644 Documentation/devicetree/bindings/usb/ehci-orion.txt
 create mode 100644 Documentation/devicetree/bindings/usb/marvell,orion-ehci.yaml
 delete mode 100644 Documentation/devicetree/bindings/watchdog/marvel.txt
 create mode 100644 Documentation/devicetree/bindings/watchdog/marvell,orion-wdt.yaml

-- 
2.37.2

