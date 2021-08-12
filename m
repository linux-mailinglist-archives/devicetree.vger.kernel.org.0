Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 55A0C3EA378
	for <lists+devicetree@lfdr.de>; Thu, 12 Aug 2021 13:24:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236895AbhHLLYz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Aug 2021 07:24:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236835AbhHLLYw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Aug 2021 07:24:52 -0400
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be [IPv6:2a02:1800:120:4::f00:13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82B1DC06179E
        for <devicetree@vger.kernel.org>; Thu, 12 Aug 2021 04:24:27 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:438:1ff1:1071:f524])
        by baptiste.telenet-ops.be with bizsmtp
        id gbQQ2500P1gJxCh01bQQ4d; Thu, 12 Aug 2021 13:24:24 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mE8oy-002Fiq-D2; Thu, 12 Aug 2021 13:24:24 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mE8ox-00743M-Kg; Thu, 12 Aug 2021 13:24:23 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-renesas-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v2 06/29] arm64: dts: renesas: Add Renesas R8A779M2 SoC support
Date:   Thu, 12 Aug 2021 13:23:56 +0200
Message-Id: <2303577cac91aa6d98e7f2c72e36841f6218e53f.1628766192.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1628766192.git.geert+renesas@glider.be>
References: <cover.1628766192.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the Renesas R-Car M3e (R8A779M2) SoC, which is a
different grading of the R-Car M3-W+ (R8A77961) SoC.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - No changes.
---
 arch/arm64/boot/dts/renesas/r8a779m2.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/r8a779m2.dtsi

diff --git a/arch/arm64/boot/dts/renesas/r8a779m2.dtsi b/arch/arm64/boot/dts/renesas/r8a779m2.dtsi
new file mode 100644
index 0000000000000000..324627340b86ad9e
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r8a779m2.dtsi
@@ -0,0 +1,12 @@
+// SPDX-License-Identifier: (GPL-2.0 or MIT)
+/*
+ * Device Tree Source for the R-Car M3e (R8A779M2) SoC
+ *
+ * Copyright (C) 2021 Glider bv
+ */
+
+#include "r8a77961.dtsi"
+
+/ {
+	compatible = "renesas,r8a779m2", "renesas,r8a77961";
+};
-- 
2.25.1

