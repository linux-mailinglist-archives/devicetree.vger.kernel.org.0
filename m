Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DDDF4A626A
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 18:28:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238186AbiBAR2f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 12:28:35 -0500
Received: from mout.kundenserver.de ([217.72.192.73]:50719 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237623AbiBAR2e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 12:28:34 -0500
Received: from localhost.localdomain ([37.4.249.169]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MX0TX-1mha7A0Zj7-00XMoK; Tue, 01 Feb 2022 18:28:13 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Phil Elwell <phil@raspberrypi.com>, devicetree@vger.kernel.org,
        soc@kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V2 3/3] arm64: dts: broadcom: Add reference to RPi Zero 2 W
Date:   Tue,  1 Feb 2022 18:27:47 +0100
Message-Id: <1643736467-17764-4-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1643736467-17764-1-git-send-email-stefan.wahren@i2se.com>
References: <1643736467-17764-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:SNEJNs6YGwPtyDb+zpnlpozFTxgkUv9qPG3TM4hpeH5KH/luNep
 +KXXTjvhbtZzhW/qnqfACvpTsIvraxFKCwo/U7tkeaeTEHcbCHX6WzampWTVcVlO1QjZBBK
 yEEBcCbPhjWlaMrZ2uhjyELp9ohKOaFUee0EWaeKCtJEDhkHZRmma8rVyi6PPwlLXPmqNmr
 8pIvcHmaDrxc6fRBxmd8Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GXn5l1VXBBI=:A3qY9z/9xXCvrnRCL63H4n
 eQKyEOTqDdmjGg+uZmnVSaGCa86EtOluWYGzrqF7+DYr+TaAKq7+5g+LG7RRVGhJ7k0xduePR
 B854dAxNkKRrYDT09ucoP6sgypZQeNlRr4/JV61h9Mqfa+qKwm90BRY9YskbqVUaAACNyLrlM
 ziNVIwD6IuWHWL+7JNXWpQuYUXFztW+4D5VqbWk/5ysc0vGBJuuJAKvjR/nmmF3I6dVxy1l0B
 MNvWL93+0k1ffUntVx7K0hfH3HT/0PcxX9ftjnT8q8kmNpkQy2SIIFAB9Z5ZpyLPElrwWzUns
 W8wGpEQp7K6yYfQ18TG/h2ipMG3O3W3Nzis3WE7b7k2O21gMBwMNN1921sZFnfVYLF4Glx6RC
 BC9RbPIE9B1FaZzhSOXW4cN9QI1/yzhyPIUEUsntFPYmGiINmf6hKehqHiYDQsKiOxRkPzVHr
 /oZGZLFMtWpUJGjTruEBZHWIDoh1eWL7cJVUaG5gJ+6tlkIuMN979Pczb2XFMTPbTuhNdTENH
 lqAoyuWqpe04SeLXNkz9xb3J3mQIWSiqEqgg8aaUbdKnYeVF2rqKmW/YCbUsrKX9fKeRB1x85
 54ocuQos0ZPERl0Ax0+8I9v882kP9gXYV3em5a74Fb9bwi2w48tDy63pfNbJ7m9WS3fcBdiDS
 ZZ5yrpcBZDGNMKcEocJkLMwfkPUFYy5+BPoYUOgFCb8Ggxr0dw+WBeA9DGgOtwhBglV5Zlygv
 B1ihduVrWqBzDFb6
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds a reference to the dts of the Raspberry Pi Zero 2 W,
so we don't need to maintain the content in arm64.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm64/boot/dts/broadcom/Makefile                 | 3 ++-
 arch/arm64/boot/dts/broadcom/bcm2837-rpi-zero-2-w.dts | 2 ++
 2 files changed, 4 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm2837-rpi-zero-2-w.dts

diff --git a/arch/arm64/boot/dts/broadcom/Makefile b/arch/arm64/boot/dts/broadcom/Makefile
index c688203..5082fcd 100644
--- a/arch/arm64/boot/dts/broadcom/Makefile
+++ b/arch/arm64/boot/dts/broadcom/Makefile
@@ -5,7 +5,8 @@ dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-400.dtb \
 			      bcm2837-rpi-3-a-plus.dtb \
 			      bcm2837-rpi-3-b.dtb \
 			      bcm2837-rpi-3-b-plus.dtb \
-			      bcm2837-rpi-cm3-io3.dtb
+			      bcm2837-rpi-cm3-io3.dtb \
+			      bcm2837-rpi-zero-2-w.dtb
 
 subdir-y	+= bcm4908
 subdir-y	+= northstar2
diff --git a/arch/arm64/boot/dts/broadcom/bcm2837-rpi-zero-2-w.dts b/arch/arm64/boot/dts/broadcom/bcm2837-rpi-zero-2-w.dts
new file mode 100644
index 0000000..307ae69
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/bcm2837-rpi-zero-2-w.dts
@@ -0,0 +1,2 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "arm/bcm2837-rpi-zero-2-w.dts"
-- 
2.7.4

