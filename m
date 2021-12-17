Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F0FF478BB8
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 13:49:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236392AbhLQMth (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Dec 2021 07:49:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236196AbhLQMth (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Dec 2021 07:49:37 -0500
Received: from albert.telenet-ops.be (albert.telenet-ops.be [IPv6:2a02:1800:110:4::f00:1a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E543C061574
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 04:49:36 -0800 (PST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:d13f:527c:5504:a743])
        by albert.telenet-ops.be with bizsmtp
        id XQpZ26002250X3006QpZHQ; Fri, 17 Dec 2021 13:49:34 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1myCg0-005Yx4-ES; Fri, 17 Dec 2021 13:49:32 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1myCg0-00ASqQ-1s; Fri, 17 Dec 2021 13:49:32 +0100
From:   Geert Uytterhoeven <geert@linux-m68k.org>
To:     Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        Lewis Hanly <lewis.hanly@microchip.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH v3 00/11] riscv: dts: Miscellaneous fixes
Date:   Fri, 17 Dec 2021 13:49:21 +0100
Message-Id: <cover.1639744905.git.geert@linux-m68k.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

	Hi Paul, Palmer, Albert,

This patch series contains miscellaneous fixes for the DTS files for
RISC-V platforms.

Changes compared to v2[1]:
  - Add Reviewed-by, Tested-by.

Changes compared to v1[2]:
  - Add Reviewed-by, Tested-by,
  - Move mpfs refclk clock-frequency to board DTS,
  - New patches "[PATCH v2 06/11] riscv: dts: microchip: mpfs: Fix clock
    controller node" and "[PATCH v2 11/11] riscv: dts: sifive:
    fu540-c000: Fix PLIC node".

Thanks for applying!

[1] https://lore.kernel.org/r/cover.1639660956.git.geert@linux-m68k.org
[2] https://lore.kernel.org/r/20211125153131.163533-1-geert@linux-m68k.org

Geert Uytterhoeven (11):
  riscv: dts: canaan: Fix SPI FLASH node names
  riscv: dts: canaan: Group tuples in interrupt properties
  riscv: dts: microchip: mpfs: Drop empty chosen node
  riscv: dts: microchip: mpfs: Fix PLIC node
  riscv: dts: microchip: mpfs: Fix reference clock node
  riscv: dts: microchip: mpfs: Fix clock controller node
  riscv: dts: microchip: mpfs: Group tuples in interrupt properties
  riscv: dts: sifive: Group tuples in interrupt properties
  riscv: dts: sifive: Group tuples in register properties
  riscv: dts: sifive: fu540-c000: Drop bogus soc node compatible values
  riscv: dts: sifive: fu540-c000: Fix PLIC node

 arch/riscv/boot/dts/canaan/k210.dtsi          | 23 +++----
 .../riscv/boot/dts/canaan/sipeed_maix_bit.dts |  2 +-
 .../boot/dts/canaan/sipeed_maix_dock.dts      |  2 +-
 arch/riscv/boot/dts/canaan/sipeed_maix_go.dts |  2 +-
 .../boot/dts/canaan/sipeed_maixduino.dts      |  2 +-
 .../microchip/microchip-mpfs-icicle-kit.dts   |  4 ++
 .../boot/dts/microchip/microchip-mpfs.dtsi    | 60 ++++++++-----------
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi    | 40 +++++++------
 arch/riscv/boot/dts/sifive/fu740-c000.dtsi    | 14 ++---
 9 files changed, 72 insertions(+), 77 deletions(-)

-- 
2.25.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds
