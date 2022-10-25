Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B02B60CFC1
	for <lists+devicetree@lfdr.de>; Tue, 25 Oct 2022 16:59:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230038AbiJYO7X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Oct 2022 10:59:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232588AbiJYO7V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Oct 2022 10:59:21 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id EE3151B76EF
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 07:59:18 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 810F2D6E;
        Tue, 25 Oct 2022 07:59:24 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B312B3F71A;
        Tue, 25 Oct 2022 07:59:16 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, soc@kernel.org,
        Icenowy Zheng <uwu@icenowy.me>,
        =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
Subject: [PATCH 0/3] ARM: dts: Add Lctech Pi F1C200s board support
Date:   Tue, 25 Oct 2022 15:59:06 +0100
Message-Id: <20221025145909.2837939-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
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

The Lctech Pi F1C200s is a small development board with the eponymous
Allwinner SoC.
It ships with SPI NAND flash, but I couldn't get that to work:
============
spi-nand spi0.0: unknown raw ID 00000000
spi-nand: probe of spi0.0 failed with error -524
============
I leave in the DT node anyway (minus partitions), matching the schematic.

The boards has two USB-C ports, one of which is connected to a USB
serial adapter chip. Since the other one (connected to the MUSB
controller) lacks any CC pin connections, I need to fix the OTG role
here, and went with peripheral. Forcing host mode worked as well, but
requires a separate power supply (although the other USB port works for
that as well).

The board was apparently also sold under the "Cherry Pi" brand before.

Patches 1 and 2 add the required DT bindings for the vendor and board
name strings, patch 3 adds the .dts file.

Please have a look!

Cheers,
Andre

Andre Przywara (3):
  dt-bindings: vendor-prefixes: add Lctech name
  dt-bindings: arm: sunxi: add compatible strings for Lctech Pi
  ARM: dts: suniv: Add Lctech Pi F1C200s devicetree

 .../devicetree/bindings/arm/sunxi.yaml        |  6 ++
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
 arch/arm/boot/dts/Makefile                    |  1 +
 arch/arm/boot/dts/suniv-f1c100s.dtsi          |  5 ++
 arch/arm/boot/dts/suniv-f1c200s-lctech-pi.dts | 80 +++++++++++++++++++
 5 files changed, 94 insertions(+)
 create mode 100644 arch/arm/boot/dts/suniv-f1c200s-lctech-pi.dts

-- 
2.25.1

