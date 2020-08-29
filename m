Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61DA62568E9
	for <lists+devicetree@lfdr.de>; Sat, 29 Aug 2020 17:59:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728467AbgH2P7z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Aug 2020 11:59:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728441AbgH2P7F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Aug 2020 11:59:05 -0400
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84147C06123A
        for <devicetree@vger.kernel.org>; Sat, 29 Aug 2020 08:59:01 -0700 (PDT)
Received: by mail-pf1-x442.google.com with SMTP id y206so2203230pfb.10
        for <devicetree@vger.kernel.org>; Sat, 29 Aug 2020 08:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=x7Lva39pftBA6FEqjewb6eW+oOxMNUrFl3pdrz2HNEg=;
        b=Lj+3HmpEyxK4ys5SQafUdoDlyn05BgUs9LT198QYBWv66qQJuc9nUM/hZ1RjDEcsQN
         GeBUtxjbZpZ4lCuc2rHCY3ccleQ9JP2YJMCm3Igj5oGHVemhQfjADw3g3DJkwJqLbB2k
         gLeY7OaYguCEvySyiJJyc4PGcJ+yCFRWAt0gY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=x7Lva39pftBA6FEqjewb6eW+oOxMNUrFl3pdrz2HNEg=;
        b=gRmwNBxXo9t7di/6hSs16fmdF9XcPPwCRnYu1yB1hxXg4wfjFHXy4e5pJWKFn7WpLm
         co/o96qY0EA0GLuvbeMo5p444j3zTmwNJNiuYJa+DUFF8xMubG+J3JBLftigXQJKsa+a
         moZvJur+z2+byP6x/RDSuA6DjmzEJh/UAmRuK4YN8YOlH7q1sLyAAEsp0xfypPP0PoNE
         6KG414GF1SaR6fJK+t4+072Zdph1qFUnXvZLBmWmb7eylyyMWpuigXUb8D8W4oCjBI0y
         jeRFPE5Va8A7vjvugei22JNK/+7LFjOrMDV22leoaozy1zS9pvwDtgfpklYCGeNXKRxW
         mYXA==
X-Gm-Message-State: AOAM532794TggrW5aqWn0SlxUUBEScRUGpJ07js0eoAeiAmVmcUjuQcX
        NBE4M4lZBnLD0mGoItocL55sL0ngrq76OQ==
X-Google-Smtp-Source: ABdhPJyd8r4VaGADPnKOn7M4yhYbeTP6dpEXeeSTpkNjRRZLUrB2zIAkjxL/cFsY6DjyI9ZZiyhwBA==
X-Received: by 2002:a63:4621:: with SMTP id t33mr2948882pga.32.1598716741018;
        Sat, 29 Aug 2020 08:59:01 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9460:cfb8:90a:fedd])
        by smtp.gmail.com with ESMTPSA id j20sm3131714pfi.122.2020.08.29.08.58.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Aug 2020 08:59:00 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@libreplatforms.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 7/7] arm64: dts: rockchip: Add Engicam PX30.Core C.TOUCH 2.0
Date:   Sat, 29 Aug 2020 21:28:23 +0530
Message-Id: <20200829155823.247360-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200829155823.247360-1-jagan@amarulasolutions.com>
References: <20200829155823.247360-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jagan Teki <jagan@libreplatforms.com>

PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.

C.TOUCH 2.0 is a general purpose carrier board with capacitive
touch interface support.

PX30.Core needs to mount on top of this Carrier board for creating
complete PX30.Core C.TOUCH 2.0 board.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- new patch

 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/px30-px30-core-ctouch2.dts   | 21 +++++++++++++++++++
 2 files changed, 22 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core-ctouch2.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 65116fcb7368..958eb57e403a 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-px30-core-ctouch2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-px30-core-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
diff --git a/arch/arm64/boot/dts/rockchip/px30-px30-core-ctouch2.dts b/arch/arm64/boot/dts/rockchip/px30-px30-core-ctouch2.dts
new file mode 100644
index 000000000000..dffc49348f28
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-px30-core-ctouch2.dts
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+/dts-v1/;
+#include "px30.dtsi"
+#include "px30-engicam-ctouch2.dtsi"
+#include "px30-px30-core.dtsi"
+
+/ {
+	model = "Engicam PX30.Core C.TOUCH 2.0";
+	compatible = "engicam,px30-core-ctouch2", "engicam,px30-px30-core",
+		     "rockchip,px30";
+
+	chosen {
+		stdout-path = "serial2:115200n8";
+	};
+};
-- 
2.25.1

