Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E95E14C9E0D
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 07:55:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239777AbiCBG4f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 01:56:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239775AbiCBG4f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 01:56:35 -0500
Received: from mail-sh.amlogic.com (mail-sh.amlogic.com [58.32.228.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7042B2E22
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 22:55:52 -0800 (PST)
Received: from droid04.amlogic.com (10.18.11.246) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server id 15.1.2176.14; Wed, 2 Mar 2022
 14:55:50 +0800
From:   Shunzhou Jiang <shunzhou.jiang@amlogic.com>
To:     <linux-arm-kernel@lists.infradead.org>,
        <linux-amlogic@lists.infradead.org>, <devicetree@vger.kernel.org>
CC:     Shunzhou Jiang <shunzhou.jiang@amlogic.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH V5 1/2] dt-bindings: power: add Amlogic s4 power domains bindings
Date:   Wed, 2 Mar 2022 14:55:39 +0800
Message-ID: <20220302065540.16031-2-shunzhou.jiang@amlogic.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20220302065540.16031-1-shunzhou.jiang@amlogic.com>
References: <20220302065540.16031-1-shunzhou.jiang@amlogic.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.18.11.246]
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the bindings for the Amlogic Secure power domains, controlling the
secure power domains.

The bindings targets the Amlogic s4, in which the power domains registers
are in secure world.

Signed-off-by: Shunzhou Jiang <shunzhou.jiang@amlogic.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
V1->V2: fix spelling error, patchset use cover-letter
V2->V3: add power domain always on reason
V3->V4: clear vpu and usb power domaon always on
V4->V5: add reviewed owner in patchset
---
 .../power/amlogic,meson-sec-pwrc.yaml         |  3 ++-
 include/dt-bindings/power/meson-s4-power.h    | 19 +++++++++++++++++++
 2 files changed, 21 insertions(+), 1 deletion(-)
 create mode 100644 include/dt-bindings/power/meson-s4-power.h

diff --git a/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
index 5dae04d2936c..7657721a4e96 100644
--- a/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
+++ b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
@@ -12,13 +12,14 @@ maintainers:
   - Jianxin Pan <jianxin.pan@amlogic.com>
 
 description: |+
-  Secure Power Domains used in Meson A1/C1 SoCs, and should be the child node
+  Secure Power Domains used in Meson A1/C1/S4 SoCs, and should be the child node
   of secure-monitor.
 
 properties:
   compatible:
     enum:
       - amlogic,meson-a1-pwrc
+      - amlogic,meson-s4-pwrc
 
   "#power-domain-cells":
     const: 1
diff --git a/include/dt-bindings/power/meson-s4-power.h b/include/dt-bindings/power/meson-s4-power.h
new file mode 100644
index 000000000000..462dd2cb938b
--- /dev/null
+++ b/include/dt-bindings/power/meson-s4-power.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: (GPL-2.0+ or MIT) */
+/*
+ * Copyright (c) 2021 Amlogic, Inc.
+ * Author: Shunzhou Jiang <shunzhou.jiang@amlogic.com>
+ */
+
+#ifndef _DT_BINDINGS_MESON_S4_POWER_H
+#define _DT_BINDINGS_MESON_S4_POWER_H
+
+#define PWRC_S4_DOS_HEVC_ID	0
+#define PWRC_S4_DOS_VDEC_ID	1
+#define PWRC_S4_VPU_HDMI_ID	2
+#define PWRC_S4_USB_COMB_ID	3
+#define PWRC_S4_GE2D_ID		4
+#define PWRC_S4_ETH_ID		5
+#define PWRC_S4_DEMOD_ID	6
+#define PWRC_S4_AUDIO_ID	7
+
+#endif
-- 
2.34.1

