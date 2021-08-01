Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A46B93DCB9E
	for <lists+devicetree@lfdr.de>; Sun,  1 Aug 2021 14:29:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231546AbhHAM3u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Aug 2021 08:29:50 -0400
Received: from mout.kundenserver.de ([212.227.126.131]:50151 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231461AbhHAM3u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Aug 2021 08:29:50 -0400
Received: from localhost.localdomain ([37.4.249.97]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N95mR-1nCjw13Odz-0167TS; Sun, 01 Aug 2021 14:29:26 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 0/9] ARM: dts: Add Raspberry Pi CM4 & CM4 IO Board support
Date:   Sun,  1 Aug 2021 14:28:43 +0200
Message-Id: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:obN736lh9IFOAIPl9RjKScbf7+dQFS5ORCRoDfDaVPmX6GpNSAj
 HnMvF4RP8rZ0B11ZnWq/gAMJ+XXc4VK7nImTbvfSUaeJjDPu2oDqFFyjttuaRyO3I7bXWx6
 38OCwsNwulZHhFHUAPE87D3ecsFM7qab/TptU94tf0oNfFY2b2kQt0MrDoHAzj94H5RDofM
 K4ydYnJcRuoEogHFFmknA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JkjUx2X5hJU=:Tt24/z/WZtHd3B0REjbvlX
 75ZrzjE+IMiE4PRmwnM74WWyQ63NWRaJzPztlbm1gAbzihY0E5FxDU9WulBzGl3pHdR0Nyvep
 0/FW+mG7Dy4SSLC+lf9l0uubc5msIdwTucOVUFxL1zlDN+h0pt7WjYk4oyUIfvrIOb92Mjj6J
 D/eoqO6ztQZ4GV/pyqLVo0x+obTLzQUmFg87DLSyNe1vrDzv2Eiek3OYevcnt+sNVxwzKqXFQ
 KlHXo6GwZlfFRo3VnJR1+ZKj3TZwkwcUgVZqwhNVTcoTMWV7T0xgPrGx+7nChLKfxtxx53Sa6
 zTIWRypXCbGRpBTY7w1DqXJBvqS3lLaMVXATAsYhccc5yjpztSfsF//+hojH/CSkS1+/kGfrb
 tu6DcRQNDq+3pBsqcPSJws7XN/b+IwZARouDhOmN/lMLw8GDZqR6H32E5E9/ZDgdnSFYRYPvp
 y6A0n3+sTVQz1RHZobGnW+wROpZFVHUUxJNmvBU/fbs/FECQut/9x/lwi+YNiqc6obqWc2y9p
 A8bWSV3le2QzukLboJvO+ioD5yHVGepP60BqdwQGpnEn73ixNswRVD1rhf4p8XQ0MWRkDQMqA
 bkvhXjgHK0TitsW4kVGaNYSkp96yB9f4fqsro5oT3hRKcHyJXtim5xJobzUS5+7bf7IvyPC6x
 XOb7clGIIHlpw40e94mVBkz2KIhR8buaOArp+H/fBtAlNrsDOFYIy3Owynylq1hRsfIPkqbvP
 FajBAfbCjvwLTLWGZtG9X5J/DSaTnleBZSkGC3AaiwQzDEElREz0IId1KoB2oUZtOm1Z0mwxy
 AXT41TzzOUPIr7FrvhqFC1ZhSY5VobJrxFtmHCurXoG+oxybzDDRF6ixF9vjjae/y5kl1cyow
 ALlu2e0PlDH4O6V5eYAA==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series add support for the Raspberry Pi Compute Module 4 and its
IO board.

Stefan Wahren (9):
  ARM: dts: bcm2711: fix emmc2bus node name
  ARM: dts: bcm2711: fix MDIO #address- and #size-cells
  ARM: dts: bcm2711-rpi-4-b: fix sd_io_1v8_reg regulator states
  dt-bindings: display: bcm2835: add optional property power-domains
  ARM: dts: bcm283x-rpi: Move Wifi/BT into separate dtsi
  dt-bindings: arm: bcm2835: Add Raspberry Pi Compute Module 4
  ARM: dts: Add Raspberry Pi Compute Module 4
  ARM: dts: Add Raspberry Pi Compute Module 4 IO Board
  arm64: dts: broadcom: Add reference to RPi CM4 IO Board

 .../devicetree/bindings/arm/bcm/bcm2835.yaml       |   1 +
 .../bindings/display/brcm,bcm2835-dsi0.yaml        |   3 +
 .../bindings/display/brcm,bcm2835-hdmi.yaml        |   3 +
 .../bindings/display/brcm,bcm2835-v3d.yaml         |   3 +
 .../bindings/display/brcm,bcm2835-vec.yaml         |   3 +
 arch/arm/boot/dts/Makefile                         |   1 +
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts              |  42 ++-----
 arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts           | 138 +++++++++++++++++++++
 arch/arm/boot/dts/bcm2711-rpi-cm4.dtsi             | 112 +++++++++++++++++
 arch/arm/boot/dts/bcm2711.dtsi                     |   6 +-
 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts           |  31 ++---
 arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts         |  36 ++----
 arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts         |  36 ++----
 arch/arm/boot/dts/bcm2837-rpi-3-b.dts              |  36 ++----
 arch/arm/boot/dts/bcm283x-rpi-wifi-bt.dtsi         |  34 +++++
 arch/arm64/boot/dts/broadcom/Makefile              |   1 +
 .../arm64/boot/dts/broadcom/bcm2711-rpi-cm4-io.dts |   2 +
 17 files changed, 346 insertions(+), 142 deletions(-)
 create mode 100644 arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
 create mode 100644 arch/arm/boot/dts/bcm2711-rpi-cm4.dtsi
 create mode 100644 arch/arm/boot/dts/bcm283x-rpi-wifi-bt.dtsi
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm2711-rpi-cm4-io.dts

-- 
2.7.4

