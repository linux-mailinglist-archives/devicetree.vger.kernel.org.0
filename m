Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CA7F394C4C
	for <lists+devicetree@lfdr.de>; Sat, 29 May 2021 15:03:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229614AbhE2NFX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 May 2021 09:05:23 -0400
Received: from mout.kundenserver.de ([212.227.126.134]:57639 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229602AbhE2NFX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 May 2021 09:05:23 -0400
Received: from localhost.localdomain ([37.4.249.151]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N3bb1-1lMTJL08up-010f3s; Sat, 29 May 2021 15:03:28 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Pavel Hofman <pavel.hofman@ivitera.com>
Subject: [PATCH] Revert "ARM: dts: bcm283x: increase dwc2's RX FIFO size"
Date:   Sat, 29 May 2021 15:02:51 +0200
Message-Id: <1622293371-5997-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:meHw8Gf8vKEcAOz19+Okqrwk52JqBmIhEB8v3cgLlcyvyxOzeH3
 7r7vCpUtgR3eJH9m7qXApGNFZiFXaR5Rr52R4jnoTSs+5s4ulTfFUvKNcTSQFh9ejR6rI/M
 zZg/9k+Vop/ZQVsx9WgfxyucSkavAVei2Tx3YtrEYD7WLN5v3CrSfz9D/XCaanIRFrqAiea
 8kbYfbshXNnFn8sf8Je1w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vOGgCVuhGHc=:L5LgYq09bOj6OXbk01BGR6
 TzYHH+Wxg0CXcDQnCgR1CzW8LiumD8vAzPGYTYm1X5pNCXJn+mxWb+AEQWpze60vVuPF/RIeI
 5/9uA6KfK6D/rWmqNtuddcCaw1gVIQPTgNgGvQGfs/33zJphxFhfjvbfG6FZ1ZlNyDDIqztTC
 8OtuRfVqDezP4XZYtr7VIvmS/q23DtB+c+q0e06nuX3RKp3tqnDddPeCC/YMoBTvYmC9UEA9g
 Sz9V7eRTWtsAgqBraiRPVS5T4jVULZSxhb/veAljMGIxLWIjP/RuvPK4wldsJTRNTPkkIEDrv
 Hy4VtYPv6IyIIa8ihGoYBz8Pui+GmZX498DZZnm6sCus9N5Of9P00IG8b9SegP06Na/A9aPVY
 z8iu+2+U6hE/B9EGca/2RQxVeXaeO9zrbu4uYfxLr9nn06Aq+U/U1aQi2QCn7NduLytcGXed1
 kMx5SnNShORxnYr6QAkIrSXVhpinUqpzl6lVP2KUBz5fWTrETuEifsRrJnzxgFHgwr42XvIop
 EY+fY1MXdMiLK7Z/qTY6Bc=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This reverts commit 278407a53c3b33fb820332c4d39eb39316c3879a.

The original change breaks USB config on Raspberry Pi Zero and Pi 4 B,
because it exceeds the total fifo size of 4080. A naive attempt to reduce
g-tx-fifo-size doesn't help on Raspberry Pi Zero. So better go back.

Fixes: 278407a53c3b ("ARM: dts: bcm283x: increase dwc2's RX FIFO size")
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Cc: Pavel Hofman <pavel.hofman@ivitera.com>
---
 arch/arm/boot/dts/bcm283x-rpi-usb-otg.dtsi        | 2 +-
 arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/bcm283x-rpi-usb-otg.dtsi b/arch/arm/boot/dts/bcm283x-rpi-usb-otg.dtsi
index 20322de..e2fd961 100644
--- a/arch/arm/boot/dts/bcm283x-rpi-usb-otg.dtsi
+++ b/arch/arm/boot/dts/bcm283x-rpi-usb-otg.dtsi
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 &usb {
 	dr_mode = "otg";
-	g-rx-fifo-size = <558>;
+	g-rx-fifo-size = <256>;
 	g-np-tx-fifo-size = <32>;
 	/*
 	 * According to dwc2 the sum of all device EP
diff --git a/arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi b/arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
index 1409d1b..0ff0e9e 100644
--- a/arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
+++ b/arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 &usb {
 	dr_mode = "peripheral";
-	g-rx-fifo-size = <558>;
+	g-rx-fifo-size = <256>;
 	g-np-tx-fifo-size = <32>;
 	g-tx-fifo-size = <256 256 512 512 512 768 768>;
 };
-- 
2.7.4

