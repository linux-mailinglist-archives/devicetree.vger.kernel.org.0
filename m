Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FBA96C0594
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 22:31:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230405AbjCSVbU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 17:31:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230411AbjCSVas (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 17:30:48 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id AE2321BADD
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 14:30:20 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14FA61042;
        Sun, 19 Mar 2023 14:30:32 -0700 (PDT)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 548023F67D;
        Sun, 19 Mar 2023 14:29:46 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Chen-Yu Tsai <wens@csie.org>
Cc:     linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, Icenowy Zheng <uwu@icenowy.me>
Subject: [PATCH v6 0/6] ARM: suniv: USB and two new boards support
Date:   Sun, 19 Mar 2023 21:29:30 +0000
Message-Id: <20230319212936.26649-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.35.7
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

This patchset introduces support for F1C100s' USB, and the SourceParts
PopStick and Lctech Pi boards.

These are the remaining (DT) patches, all driver and devicetree binding
patches for USB related devices, which were part of former versions of
this series, have now been merged (into v6.3-rc1).
What's left are just the DT bits: for the SoC .dtsi and LicheePi Nano
board .dts files. On top go patches that add support for two new boards.

There were no actual changes to the patches, they are merely resend,
with the vendor and DT board name binding patches combined for the two
boards.  All prerequisites are in the tree, so the tooling checks pass.

Cheers,
Andre

Changelog v5 ... v6:
- Drop all driver and USB DT binding patches (already merged separately)
- based on v6.3-rc2

Changelog v4 ... v5:
- Rebase on top to v6.2-rc1

Changelog v3 ... v4:
- Dropped the PHY patches, they go via a different tree and need a
  different base
- rebased on top of linux-sunxi/sunxi/for-next (provides H616 USB)
- musb DT binding: use enum
- musb cleanup: use musb_hdrc_config config pointer directly
- musb cleanup: use const where possible
- drop partitions from Popstick DTS file
- clarify Popstick has a USB type-A *plug*
- add tags

Changelog v2 ... v3:
- remove redundant "Device Tree Bindings" suffix in DT binding doc title
- add BSD license to binding doc file (as per checkpatch)
- fix some commit message title prefixes
- use proper plural spelling for usb0_id_det-gpios
- popstick.dts: Reorder otg_sram node reference alphabetically
- popstick.dts: Add regulator- prefix to 3.3V regulator node name
- popstick.dts: Fix status, compatible and reg property order
- popstick.dts: Drop unneeded mmc0 and spi0 aliases
- add patch to clean up sunxi MUSB driver
- add Acks and Reviewed-by's

Changelog v1 ... v2:
- USB PHY binding: clarify the relation with other phy-sun4i-usb bindings
- Add Popstick binding and .dts patches


Andre Przywara (1):
  ARM: dts: suniv: Add Lctech Pi F1C200s devicetree

Icenowy Zheng (5):
  ARM: dts: suniv: add USB-related device nodes
  ARM: dts: suniv: licheepi-nano: enable USB
  dt-bindings: vendor-prefixes: add Source Parts and Lctech names
  dt-binding: arm: sunxi: add two board compatible strings
  ARM: dts: suniv: add device tree for PopStick v1.1

 .../devicetree/bindings/arm/sunxi.yaml        | 13 +++
 .../devicetree/bindings/vendor-prefixes.yaml  |  4 +
 arch/arm/boot/dts/Makefile                    |  4 +-
 .../boot/dts/suniv-f1c100s-licheepi-nano.dts  | 16 ++++
 arch/arm/boot/dts/suniv-f1c100s.dtsi          | 32 ++++++++
 arch/arm/boot/dts/suniv-f1c200s-lctech-pi.dts | 76 +++++++++++++++++
 .../boot/dts/suniv-f1c200s-popstick-v1.1.dts  | 81 +++++++++++++++++++
 7 files changed, 225 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/suniv-f1c200s-lctech-pi.dts
 create mode 100644 arch/arm/boot/dts/suniv-f1c200s-popstick-v1.1.dts

-- 
2.35.7

