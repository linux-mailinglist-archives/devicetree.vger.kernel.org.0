Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E84F8440E04
	for <lists+devicetree@lfdr.de>; Sun, 31 Oct 2021 13:08:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230046AbhJaML3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Oct 2021 08:11:29 -0400
Received: from mout.kundenserver.de ([212.227.17.13]:36397 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229638AbhJaML3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Oct 2021 08:11:29 -0400
Received: from localhost.localdomain ([37.4.249.122]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MvsR7-1mxIoQ3yWl-00swQs; Sun, 31 Oct 2021 13:08:34 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Mwesigwa Guma <mguma@redhat.com>,
        Ojaswin Mujoo <ojaswin98@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-staging@lists.linux.dev,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V2 1/2] ARM: dts: bcm283x: Drop fallback compatible for vchiq
Date:   Sun, 31 Oct 2021 13:08:05 +0100
Message-Id: <1635682086-3200-2-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1635682086-3200-1-git-send-email-stefan.wahren@i2se.com>
References: <1635682086-3200-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:ulQB8P8DB86F6bZYbKr9KxNanL/NIBPH3ICHoUxDCXumR3GySzL
 NSbAWqx5jb1vwvFL8TjwXY3x4hGAjlxviXgCj0DOX/fQxjVkWuTBeb2do8pfxFdA1XmMGMs
 PRfxwZJNCal8lLQBK7Jk0AnWPzYA+3jfKlQdkerJcv4WYMhK+saXGZ2FpghmGeJGxULPwqK
 /iTTuEwHuTerIWsAq6iMQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KOKz8qQmFC4=:1oDApW1xH5hyb3pjv6zDad
 Sn05Ay6B3POwGxE+NfB6IlsC6kwByVcSNbBcc5E0tqCIHx4jcMSJghcCHT6i0saasu+mmjiEO
 4N8gt1eGow56JHnLZ5/mwIXzmGK/JVCSbKBUe/8sWOnI7q7damSq2kR0dnvfqORJAa4/a3gsl
 gR5MPuD1I/fH4F21aImCRqLVb8i11tjMuPxPrLxht+KxzZmmkDQjfFVfTKeBJ6oBNx5I9CKQh
 o52/jM1AczXT+okLuczHb7oijGnbMtpG39yU1gvorWdTJiJhL0axQk2ubkgoHgBmIB6TbQm/P
 kCgtZHzXkRrZXU6Y2Q/1yxmKSrLL8dYzAB4k2gmov2IxoSOf+CGgYVcPVAYTY9lPjNPKxbSqU
 1saM6WQGsN14qizsJuHlVZXoH8frG2ROVEsgmx0/mPFN2ifRu7je/vLTmF3bjVvRuQc0vLSTm
 l2AfYljX31oSQQ7zg7dSj/PMg93DTSexpAu9d3RAjt+wjHkHoJpTvfTEtC2QA4fU1WXY8z4wR
 1T+/BTrO6e2BOQaPsO+P3WJISQTjGggHp8QtmWaRBsJa7Y3mwjivdlXPgjf+VmXsQr5jvj/Na
 QvltVr+76X9SE4X5HhKJWWMLQ1Ev3EHeCVPp0dhPD+5cFNBT3DHjiFbz8s80adTIjJmk/t3vc
 C+TLAZt/bJK6EjB8LcjTykpwx/mkebR+oZ0OkF8hFlBPqc/a7MUz0mfuocAiG8DKT0GuTgMCk
 iGwlOXPIuxUMvtux
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

With introduction of SoC specific vchiq compatible in 2018, we kept the
original "brcm,bcm2835-vchiq" as a fallback for older Kernel versions.
Now this fallback isn't necessary anymore. So before we create a DT schema
which also handles this fallback better fix this on the DTS side.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/bcm2836-rpi.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm2836-rpi.dtsi b/arch/arm/boot/dts/bcm2836-rpi.dtsi
index c4c858b..f98e0e4 100644
--- a/arch/arm/boot/dts/bcm2836-rpi.dtsi
+++ b/arch/arm/boot/dts/bcm2836-rpi.dtsi
@@ -2,5 +2,5 @@
 #include "bcm2835-rpi.dtsi"
 
 &vchiq {
-	compatible = "brcm,bcm2836-vchiq", "brcm,bcm2835-vchiq";
+	compatible = "brcm,bcm2836-vchiq";
 };
-- 
2.7.4

