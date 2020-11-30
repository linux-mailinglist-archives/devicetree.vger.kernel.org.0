Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 793842C84C6
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 14:13:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726103AbgK3NMW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 08:12:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726275AbgK3NMV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 08:12:21 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2BC9C061A4A
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 05:11:09 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id r20so1303280pjp.1
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 05:11:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hOB84R26CoZQA91b93xytogHngTBkirbQivQiUAvSZ8=;
        b=PyhiSFolCJFU7wTOqSDoytdKtrAc2AOhdmxCLSMmRfZOHG7VXGVb2Ulw6POAB0/oZF
         pImJ1NZ5KIbI2+pgUxzmCwgMoOoi1v4laspFKthhrrASzcv05eCcX6slWiizTXOZSrW1
         SLTH0wYyQ4i2ndY/pATwRtRVkLxHXzWE3SRJg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hOB84R26CoZQA91b93xytogHngTBkirbQivQiUAvSZ8=;
        b=BgyuRP8gYuQ5Unn2K/YVgSHmepoRSIRTOlS6+avjimzFn86F8XSXAsbFfFuzg+ylv1
         lpmYLThKBkXMMisiuFPeaO47ixnBOFPYm4KofA7L7s4bEVb3Jj65PFDeMhywBs46/CFf
         eAqxIuewdM+ZaxutAKX6CUSETgItLzb0dvlIt0f0qsJjriPJHg3Ma/pwakzg3pzvqu4Y
         mtTR/3jj2SXDBG0+egEOzvTH8RPavGmmAxjcznT68/5UjNo27oz/92aUcRZDm+JA+lNS
         l4LMNoijGpHQ70ZgBt552bnYuGCU+KhuMDarmidS2D2PszVvrqIf5vkMpZgvW95qHet3
         e+nA==
X-Gm-Message-State: AOAM533ElKENcs5iudCCYOlHcLbapFFPb/1zp8597+WTVsLhm2nko2U9
        lvltOFKkVeOSC/AIqYYBboTPr49m4Huq0A==
X-Google-Smtp-Source: ABdhPJxgNlFVg7883wVBJGDHzd6CLjDX13djaCv0+2pZftGDOVsjYhNmQuIgaPkzf8PRi8KGpohlww==
X-Received: by 2002:a17:902:b983:b029:da:8c9a:6ac6 with SMTP id i3-20020a170902b983b02900da8c9a6ac6mr1129245pls.54.1606741866601;
        Mon, 30 Nov 2020 05:11:06 -0800 (PST)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id a4sm41757578pjq.0.2020.11.30.05.11.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Nov 2020 05:11:05 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, arnd@arndb.de, robh@kernel.org,
        w@1wt.eu, daniel@0x0f.com
Subject: [PATCH 4/9] ARM: mstar: Add infinity2m support
Date:   Mon, 30 Nov 2020 22:10:42 +0900
Message-Id: <20201130131047.2648960-5-daniel@0x0f.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201130131047.2648960-1-daniel@0x0f.com>
References: <20201130131047.2648960-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The infinity2m series of chips are like the other Mstar/Sigmastar
chips in that they have a Cortex A7 system with DDR memory integrated
in a single package.

The infinity2m chips are intended for recording the incoming streams
from IP cameras. So instead of video encoders they have video decoders,
instead of a camera interface they have display hardware and so on.

Aside from the above points the big difference about these chips is that
they include a second Cortex A7 core.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-infinity2m.dtsi | 15 +++++++++++++++
 arch/arm/boot/dts/mstar-v7.dtsi         |  2 +-
 arch/arm/mach-mstar/mstarv7.c           |  1 +
 3 files changed, 17 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/mstar-infinity2m.dtsi

diff --git a/arch/arm/boot/dts/mstar-infinity2m.dtsi b/arch/arm/boot/dts/mstar-infinity2m.dtsi
new file mode 100644
index 000000000000..02adb9fe9d3c
--- /dev/null
+++ b/arch/arm/boot/dts/mstar-infinity2m.dtsi
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2020 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+#include "mstar-infinity.dtsi"
+
+&cpus {
+	cpu1: cpu@1 {
+		device_type = "cpu";
+		compatible = "arm,cortex-a7";
+		reg = <0x1>;
+	};
+};
diff --git a/arch/arm/boot/dts/mstar-v7.dtsi b/arch/arm/boot/dts/mstar-v7.dtsi
index 07fc46c7b4d4..2862b32c7f63 100644
--- a/arch/arm/boot/dts/mstar-v7.dtsi
+++ b/arch/arm/boot/dts/mstar-v7.dtsi
@@ -13,7 +13,7 @@ / {
 	#size-cells = <1>;
 	interrupt-parent = <&gic>;
 
-	cpus {
+	cpus: cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
diff --git a/arch/arm/mach-mstar/mstarv7.c b/arch/arm/mach-mstar/mstarv7.c
index 81a4cbcab206..1aa748fa006e 100644
--- a/arch/arm/mach-mstar/mstarv7.c
+++ b/arch/arm/mach-mstar/mstarv7.c
@@ -35,6 +35,7 @@ static void __iomem *l3bridge;
 
 static const char * const mstarv7_board_dt_compat[] __initconst = {
 	"mstar,infinity",
+	"mstar,infinity2m",
 	"mstar,infinity3",
 	"mstar,mercury5",
 	NULL,
-- 
2.29.2

