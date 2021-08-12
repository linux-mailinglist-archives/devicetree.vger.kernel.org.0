Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69BEC3EA390
	for <lists+devicetree@lfdr.de>; Thu, 12 Aug 2021 13:24:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236847AbhHLLZB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Aug 2021 07:25:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236888AbhHLLYy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Aug 2021 07:24:54 -0400
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFC9EC061368
        for <devicetree@vger.kernel.org>; Thu, 12 Aug 2021 04:24:27 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:438:1ff1:1071:f524])
        by xavier.telenet-ops.be with bizsmtp
        id gbQS2500K1gJxCh01bQS3p; Thu, 12 Aug 2021 13:24:26 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mE8oz-002Fiv-SJ; Thu, 12 Aug 2021 13:24:25 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mE8ox-00743v-OG; Thu, 12 Aug 2021 13:24:23 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-renesas-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v2 11/29] arm64: dts: renesas: Add Renesas R8A779M8 SoC support
Date:   Thu, 12 Aug 2021 13:24:01 +0200
Message-Id: <99ff5658889e22ea8e723733e6972c27370930bf.1628766192.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1628766192.git.geert+renesas@glider.be>
References: <cover.1628766192.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the Renesas R-Car H3Ne (R8A779M8) SoC, which is a
different grading of the R-Car H3-N (R8A77951) SoC.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - No changes.
---
 arch/arm64/boot/dts/renesas/r8a779m8.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/r8a779m8.dtsi

diff --git a/arch/arm64/boot/dts/renesas/r8a779m8.dtsi b/arch/arm64/boot/dts/renesas/r8a779m8.dtsi
new file mode 100644
index 0000000000000000..752440b0c40f7c22
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r8a779m8.dtsi
@@ -0,0 +1,12 @@
+// SPDX-License-Identifier: (GPL-2.0 or MIT)
+/*
+ * Device Tree Source for the R-Car H3Ne (R8A779M8) SoC
+ *
+ * Copyright (C) 2021 Glider bv
+ */
+
+#include "r8a77951.dtsi"
+
+/ {
+	compatible = "renesas,r8a779m8", "renesas,r8a7795";
+};
-- 
2.25.1

