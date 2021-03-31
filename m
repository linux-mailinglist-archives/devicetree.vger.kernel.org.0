Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96C033503EA
	for <lists+devicetree@lfdr.de>; Wed, 31 Mar 2021 17:56:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233635AbhCaP41 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Mar 2021 11:56:27 -0400
Received: from mail.cognitivepilot.com ([91.218.251.140]:44503 "EHLO
        mail.cognitivepilot.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233675AbhCaP4V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Mar 2021 11:56:21 -0400
Received: from mail.cognitivepilot.com (localhost [127.0.0.1])
        by mail.cognitivepilot.com (Postfix) with ESMTP id 4F9WBp6Z4xzpnMxy
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 18:56:18 +0300 (MSK)
X-Virus-Scanned: amavisd-new at cognitivepilot.com
X-Spam-Flag: NO
X-Spam-Score: 2.247
X-Spam-Level: **
X-Spam-Status: No, score=2.247 tagged_above=2 required=6.2
        tests=[RDNS_NONE=1.274, SPF_HELO_NONE=0.001, SPF_SOFTFAIL=0.972]
        autolearn=no autolearn_force=no
Received: from mail.cognitivepilot.com ([127.0.0.1])
        by mail.cognitivepilot.com (mail.cognitivepilot.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id vpjfwtWpGHML for <devicetree@vger.kernel.org>;
        Wed, 31 Mar 2021 18:56:17 +0300 (MSK)
Received: from localhost.localdomain (unknown [185.68.147.27])
        by mail.cognitivepilot.com (Postfix) with ESMTP id 4F9WBn1XvyzpQPL6;
        Wed, 31 Mar 2021 18:56:17 +0300 (MSK)
From:   Ivan Uvarov <i.uvarov@cognitivepilot.com>
To:     devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Andre Przywara <andre.przywara@arm.com>,
        Icenowy Zheng <icenowy@aosc.io>,
        Ivan Uvarov <i.uvarov@cognitivepilot.com>
Subject: [PATCH v3 0/4] add devicetree for Forlinx FETA40i-C & OKA40i-C
Date:   Wed, 31 Mar 2021 18:56:12 +0300
Message-Id: <20210331155616.793550-1-i.uvarov@cognitivepilot.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series adds devicetree support for the Forlinx FETA40i-C SoM
and OKA40i-C carrier board/devboard.

The FETA40i-C is an "industrial/automotive" SoM by Forlinx.

SoM specs:
- SoC: R40 or A40i
- PMIC: AXP221S
- RAM: 1GiB/2GiB DDR3 (dual-rank)
- eMMC: 8GB,
- Mates with carrier board via four 80-pin connectors (AXK6F80337YG).

OKA40i-C is a carrier board by the same manufacturer for this SoM,
whose main purpose is as a development board with a variety of
peripherals:

- Power: DC5V barrel or USB OTG or 4.2V Lipo battery
- Video out: HDMI, TV out, LVDS
- WiFi+Bluetooth: RL-UM02WBS-8723BU-V1.2 (802.11 b/g/n, BT V2.1/3.0/4.0)
- Ethernet: 10/100Mbps
- Storage: µSD, fullsize SD, eMMC (on SoM), SATA
- USB: 3 x USB2.0 Host (2 via hub, 1 native), 1 x USB2.0 OTG (micro-B)
- UART: RS232, RS485, 4 3.3v uarts (of which 2 have RTS/CTS)
- Other I/O: SPI x2, TWI, SDIO header, GPIO header, JTAG header
- Mini PCIe slot with sim holder for WLAN modem
- Smart card holder
- RTC (RX8010SJ)
- Two user LEDs
- Three user buttons (via KeyADC).

Of the board features listed above, support for the following has *NOT*
been tested:
- TV out & LVDS
- SATA
- Smart cards
- KeyADC buttons (no support)

The series consists of four patches, the first three of which are mutually
independent (although patch 2 may refuse to apply without patch 1).
The last patch depends on patches 2 and 3.

Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>
---

Changelog:

v2 -> v3:

* add compatible string for the SoM
* move regulators aldo3, dcdc{2,3,5}, eldo{2.3} to the SoM .dtsi


v1 -> v2:

* split patch into series
  * edits to sun8i-r40.dtsi are now in separate patch
* add dt bindings for compatible strings (in separate patch)
* add /omit-if-no-ref/ to the new uart pin nodes
  * preliminary patch adds the keyword to existing nodes for UART0 & UART3
* whitespace fixes as suggested by checkpatch.pl


draft2 -> v1: 

* fix indentation from spaces to tabs;
* remove commented properties and other extraneous comments;
* enable uarts 2,4,5&7 and alias uart3;
* update the user-LED bindings;
* remove mmc1 & add mmc3 binding;
* bring together the max/min microvolts on three regulators;
    * The reported 2.5v value in ALDO2 comes from U-Boot, where apparently
      this is the KConfig default for this regulator. The correct voltage
      is 1.8v.
* remove extraneous `always-on`s from regulators dldo1 and eldo2/3;
* remove reg_dldo3 node entirely.


Ivan Uvarov (4):
  ARM: dts: sun8i: r40: add /omit-if-no-ref/ to pinmux nodes for UARTs
    0&3
  ARM: dts: sun8i: r40: add pinmux settings for MMC3 and UARTs 2,4,5&7
  dt-bindings: arm: add compatible strings for Forlinx OKA40i-C
  ARM: dts: sun8i: r40: add devicetree for Forlinx FETA40i-C & OKA40i-C

 .../devicetree/bindings/arm/sunxi.yaml        |   6 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/sun8i-r40-feta40i.dtsi      | 106 +++++++++
 arch/arm/boot/dts/sun8i-r40-oka40i-c.dts      | 203 ++++++++++++++++++
 arch/arm/boot/dts/sun8i-r40.dtsi              |  43 ++++
 6 files changed, 361 insertions(+)
 create mode 100644 arch/arm/boot/dts/sun8i-r40-feta40i.dtsi
 create mode 100644 arch/arm/boot/dts/sun8i-r40-oka40i-c.dts

-- 
2.25.1

