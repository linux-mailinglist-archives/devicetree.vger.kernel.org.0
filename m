Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8CAF3DCBA5
	for <lists+devicetree@lfdr.de>; Sun,  1 Aug 2021 14:29:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231786AbhHAM3x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Aug 2021 08:29:53 -0400
Received: from mout.kundenserver.de ([212.227.126.135]:51305 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231527AbhHAM3w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Aug 2021 08:29:52 -0400
Received: from localhost.localdomain ([37.4.249.97]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MNbtD-1mY9Oj2ryF-00P2xe; Sun, 01 Aug 2021 14:29:30 +0200
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
Subject: [PATCH 9/9] arm64: dts: broadcom: Add reference to RPi CM4 IO Board
Date:   Sun,  1 Aug 2021 14:28:52 +0200
Message-Id: <1627820932-7247-10-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
References: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:6XueM63cWGiOunn4gUV0flibfo9FC/oOCZ7624kHqE5AiR/emRr
 EiCH7OxjgHges9JGfYII4Cf+0XAP0fOM0REF+vFHZTC4HQuJ7NN0gBn6r4M2v4ZXJ4YkNIH
 pLj0KXxcootoHpyvO6x4hLcX5KLOSGfCVg0IkxEVBuTzF8GKbR7gf+TXHmkcSy5HhIFXylW
 ioXf7hjm8wOv64QM5aTUQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lOIya0ymWEQ=:5FBgAtM0kIc8qHRaFhimkA
 W/mVlwi07Wr1HxqZmatq+qjAtMN1zL96k/uzcZ0EpL9Zk0IJgsxdpY8BSSYQ/eLME9tHh4oAc
 WAjNsrDkamKnx1rvNIOhL3Lm/BXqlUzEx5lKC9utGzajrVWtJ2ouENB1LlHA2cnQXbYooFwCp
 L+L7Y6m6aytjNNBFA/BCYCA0cwEUWUVsZVoGQNXV9UTtQZf1GHteMdLLVs2gjT08pHncvbi78
 mGp3QVbLHMinpiR9Iz2cSnZck2Ltt6yV92hvCqiX0Vy5KeOlWXiI6Bcj2CVnVh64XqHo8Pp4m
 zyOP0V3SkRV4qXFGJApZNQEjFsDAkEHiavf86H03DrVmindH+lY9HHmdF5rAXaKrcefLn2SBw
 b4N7LRCY7Y7lMyxvgHHow22+g/3bRLHsVq1Yr8WSIZ5oAizt1AeCnOJ4pRHd5QCEP0aQEzfLT
 zR9PJP7Hpmr89go9YNzOXWcleViOF/JUTVoQ8QJC+hzndzj90/0nbak8VsyuIBb9Uc+/Jljcb
 OEz20Mc1ePhYoU9sHMiPG982skBQtWceEKi3aPInoePtCeWKwbpgnNaWKNZwSILKZ5t81bXCt
 inX5rnXxoB8bHI5LGuhyUY3TAquC4kTK9wPw3L2F1VT6SziNeJiIHeMIGN6r1/1ZmiYb7B20o
 pQpi34BO3/iLpGT5p/F3zRoJXBBHB17i43uMFxvhj2NG3lp/aLJ3WdNxd7jzeYngTbapM+ULy
 tPTBH0CHm1XfHS7M1EQdV4njV6XLbp5gKuCuVCDe2YcDH7U4jXTfKaTh0u6Jp2hAzOVbocmvr
 RM8CIxNR+P/NXwwCvca1k1vtnCa8amWQGVdFiWtL/L6D9IiduWVqTPBIyjaA5zp4RuuZBZHID
 xS89pL/jWNcRfG0cMN8A==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds a reference to the dts of the Raspberry Pi Compute Module 4
IO Board, so we don't need to maintain the content in arm64.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm64/boot/dts/broadcom/Makefile               | 1 +
 arch/arm64/boot/dts/broadcom/bcm2711-rpi-cm4-io.dts | 2 ++
 2 files changed, 3 insertions(+)
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm2711-rpi-cm4-io.dts

diff --git a/arch/arm64/boot/dts/broadcom/Makefile b/arch/arm64/boot/dts/broadcom/Makefile
index 11eae3e..c688203 100644
--- a/arch/arm64/boot/dts/broadcom/Makefile
+++ b/arch/arm64/boot/dts/broadcom/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-400.dtb \
 			      bcm2711-rpi-4-b.dtb \
+			      bcm2711-rpi-cm4-io.dtb \
 			      bcm2837-rpi-3-a-plus.dtb \
 			      bcm2837-rpi-3-b.dtb \
 			      bcm2837-rpi-3-b-plus.dtb \
diff --git a/arch/arm64/boot/dts/broadcom/bcm2711-rpi-cm4-io.dts b/arch/arm64/boot/dts/broadcom/bcm2711-rpi-cm4-io.dts
new file mode 100644
index 0000000..e36d395
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/bcm2711-rpi-cm4-io.dts
@@ -0,0 +1,2 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "arm/bcm2711-rpi-cm4-io.dts"
-- 
2.7.4

