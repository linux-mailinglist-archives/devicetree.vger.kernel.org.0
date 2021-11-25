Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82FAB45DDBC
	for <lists+devicetree@lfdr.de>; Thu, 25 Nov 2021 16:41:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356047AbhKYPow (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 10:44:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356050AbhKYPmw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Nov 2021 10:42:52 -0500
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be [IPv6:2a02:1800:120:4::f00:13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B843CC0613F1
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 07:31:39 -0800 (PST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed10:1511:ffa3:275:45dd])
        by baptiste.telenet-ops.be with bizsmtp
        id NfXZ2600Q5CGg7701fXZr7; Thu, 25 Nov 2021 16:31:36 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mqGii-000DSL-VJ; Thu, 25 Nov 2021 16:31:32 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mqGii-000gYX-Gn; Thu, 25 Nov 2021 16:31:32 +0100
From:   Geert Uytterhoeven <geert@linux-m68k.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        Lewis Hanly <lewis.hanly@microchip.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Conor Dooley <conor.dooley@microchip.com>
Cc:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH 0/9] riscv: dts: Miscellaneous fixes
Date:   Thu, 25 Nov 2021 16:31:22 +0100
Message-Id: <20211125153131.163533-1-geert@linux-m68k.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

	Hi all,

This patch series contains miscellaneous fixes for the DTS files for
RISC-V platforms.

Thanks!

Geert Uytterhoeven (9):
  riscv: dts: canaan: Fix SPI FLASH node names
  riscv: dts: canaan: Group tuples in interrupt properties
  riscv: dts: microchip: mpfs: Drop empty chosen node
  riscv: dts: microchip: Group tuples in interrupt properties
  riscv: dts: microchip: mpfs: Fix PLIC node
  riscv: dts: microchip: mpfs: Fix reference clock node
  riscv: dts: sifive: Group tuples in register properties
  riscv: dts: sifive: Group tuples in interrupt properties
  riscv: dts: sifive: fu540-c000: Drop bogus soc node compatible values

 arch/riscv/boot/dts/canaan/k210.dtsi          | 23 ++++----
 .../riscv/boot/dts/canaan/sipeed_maix_bit.dts |  2 +-
 .../boot/dts/canaan/sipeed_maix_dock.dts      |  2 +-
 arch/riscv/boot/dts/canaan/sipeed_maix_go.dts |  2 +-
 .../boot/dts/canaan/sipeed_maixduino.dts      |  2 +-
 .../boot/dts/microchip/microchip-mpfs.dtsi    | 52 +++++++++----------
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi    | 35 +++++++------
 arch/riscv/boot/dts/sifive/fu740-c000.dtsi    | 14 ++---
 8 files changed, 66 insertions(+), 66 deletions(-)

-- 
2.25.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds
