Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C173959AFFD
	for <lists+devicetree@lfdr.de>; Sat, 20 Aug 2022 21:49:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230004AbiHTTsl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Aug 2022 15:48:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231164AbiHTTsh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Aug 2022 15:48:37 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C76918E3E
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 12:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:
        Cc:To:From:From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:
        Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
        Content-Disposition:In-Reply-To:References;
        bh=PhUF9WuES8xf/Cthb6phloURjCdXy7ABGowTWrX++Rw=; b=qtWx7yO3dO9E/FXU/s2cBwadgh
        lPfO09c/RsvHIQcR66mavifAMdNrPMgC/nQ7uhEz3Ehix6+JS94wIyrTYMMLH2XzegduShGIPAyfo
        Wq3u4UeuDYM9KgqvWlhNefnTUc2nW6gBqkG4I8O4R1h4YnU5I6zmHs/9p05lUiPgjDE4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oPUSL-00E485-CI; Sat, 20 Aug 2022 21:48:29 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Gregory Clement <gregory.clement@bootlin.com>
Cc:     arm-soc <arm@kernel.org>, Device Tree <devicetree@vger.kernel.org>,
        Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH 00/11] Start converting MVEBU bindings to YAML
Date:   Sat, 20 Aug 2022 21:47:53 +0200
Message-Id: <20220820194804.3352415-1-andrew@lunn.ch>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
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

Andrew Lunn (11):
  DT: RTC: orion-rtc: Convert to YAML
  DT: thermal: marvell,kirkwood-thermal: Convert to YAML
  DT: pinctrl: Convert marvell,kirkwood-pintctrl to YAML
  DT: USB: Convert ehci-orion to YAML
  DT: watchdog: Convert marvel.txt to YAML
  arm: DT: kirkwood/orion5: Rename watchdog node
  DT: nand-controller: Reflect reality of marvell,orion-nand
  DT: mtd: Convert orion-nand to YAML
  arm: DT: kirkwood.dtsi: Rename nand to nand-controller
  DT: timer: Convert marvell,orion-timer.txt to YAML
  DT: clock: Convert mvebu-gated-clock.txt to YAML

 .../clock/marvell,kirkwood-gating-clock.yaml  | 230 +++++++++++
 .../bindings/clock/mvebu-gated-clock.txt      | 205 ----------
 .../bindings/mtd/marvell,orion-nand.yaml      |  85 +++++
 .../bindings/mtd/nand-controller.yaml         |  17 +-
 .../devicetree/bindings/mtd/orion-nand.txt    |  50 ---
 .../pinctrl/marvell,88f6180-pinctrl.yaml      |  73 ++++
 .../pinctrl/marvell,88f6190-pinctrl.yaml      |  73 ++++
 .../pinctrl/marvell,88f6192-pinctrl.yaml      |  73 ++++
 .../pinctrl/marvell,88f6281-pinctrl.yaml      |  74 ++++
 .../pinctrl/marvell,88f6282-pinctrl.yaml      |  74 ++++
 .../pinctrl/marvell,98dx1135-pinctrl.yaml     |  72 ++++
 .../pinctrl/marvell,98dx4122-pinctrl.yaml     |  71 ++++
 .../bindings/pinctrl/marvell,ac5-pinctrl.yaml |  14 +-
 .../pinctrl/marvell,kirkwood-pinctrl.txt      | 359 ------------------
 .../bindings/rtc/marvell,orion-rtc.yaml       |  48 +++
 .../devicetree/bindings/rtc/orion-rtc.txt     |  18 -
 .../bindings/thermal/kirkwood-thermal.txt     |  15 -
 .../thermal/marvell,kirkwood-thermal.yaml     |  32 ++
 .../bindings/timer/marvell,orion-timer.txt    |  16 -
 .../bindings/timer/marvell,orion-timer.yaml   |  51 +++
 .../devicetree/bindings/usb/ehci-orion.txt    |  22 --
 .../bindings/usb/marvell,orion-ehci.yaml      |  44 +++
 .../devicetree/bindings/watchdog/marvel.txt   |  45 ---
 .../bindings/watchdog/marvell,orion-wdt.yaml  |  83 ++++
 arch/arm/boot/dts/kirkwood.dtsi               |   4 +-
 arch/arm/boot/dts/orion5x.dtsi                |   2 +-
 26 files changed, 1109 insertions(+), 741 deletions(-)
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

