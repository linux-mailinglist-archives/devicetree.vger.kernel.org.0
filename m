Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C7BF257563
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 10:30:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727810AbgHaIaQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 04:30:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728253AbgHaI35 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Aug 2020 04:29:57 -0400
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com [IPv6:2607:f8b0:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 997D1C061575
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 01:29:57 -0700 (PDT)
Received: by mail-pl1-x643.google.com with SMTP id bh1so2667251plb.12
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 01:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6ar1ccFxAQ+NjHCrRFWWmqhgKK0vUlm1MI2pafScAxI=;
        b=MsXIKLUXg6PfmKT6W75RWl++K5nOJNqQQ5tVkcCpdPbem3K+Hh0WLI0I9T5ZT0YkKd
         ES7/zhukE/H6K5R+5f0qAPZT6GKBlzyZtVJM5tIaM9UiP5xCYYaom9vYCeI4db0tX5vy
         mrimCAWDFntUWt3WjtyRqi1bk1PP9IfSwBPuE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6ar1ccFxAQ+NjHCrRFWWmqhgKK0vUlm1MI2pafScAxI=;
        b=pwSeiNuLX9QIUYw7imos5IKpqzm2ngaV0mXVZ1DkfXdpAYnsbJB599wxm+dE3SYEsi
         scByg06aVfp+aZZ4jxLHO9rCa1Vei29ccqWY/LUc0HZqMOoybzzkj4dGrURofIq5z/XR
         s7w2kGd1hB0yaWgD5jAMxxNyuP450sjTuvt/KsTFuiF9slUEYFG44+orcvOm2TSodxkX
         aTxrWDz0bm7KpdNDBXV9iiUma+/CkQPs/JiLSjtms5A6o5ZPJOwAen4wQkt1sVvI5yF9
         EEhqCK4Afu41nqdmdu9idNWfuFGnDNo5rxRwjlj2MLXQyB+XqITcUgt3QroX6arJ9FZi
         7sIw==
X-Gm-Message-State: AOAM533h2Zlm3tjXb/23Pyg+DZCGEuA6ciHXx3nkTZXp4VAiODnFoZt+
        UM5GlU5qPDqSBTi5d2ylARiPhw==
X-Google-Smtp-Source: ABdhPJybatYfCdCWKwpksmunsSSxteIS/Iww7nq0leuuitPggZ/Q+8l8p4NfiAr1XwIN8gaLLz2z0Q==
X-Received: by 2002:a17:902:c1d2:: with SMTP id c18mr262793plc.237.1598862597113;
        Mon, 31 Aug 2020 01:29:57 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d50:45fe:aaf3:66ee])
        by smtp.gmail.com with ESMTPSA id b5sm6411335pgi.83.2020.08.31.01.29.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2020 01:29:56 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 7/7] arm64: dts: rockchip: Add Engicam PX30.Core C.TOUCH 2.0
Date:   Mon, 31 Aug 2020 13:59:17 +0530
Message-Id: <20200831082917.17117-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200831082917.17117-1-jagan@amarulasolutions.com>
References: <20200831082917.17117-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.

C.TOUCH 2.0 is a general purpose carrier board with capacitive
touch interface support.

PX30.Core needs to mount on top of this Carrier board for creating
complete PX30.Core C.TOUCH 2.0 board.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
Changes for v3:
- add Amarula Solutions copyright
Changes for v2:
- new patch

 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/px30-px30-core-ctouch2.dts   | 22 +++++++++++++++++++
 2 files changed, 23 insertions(+)
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
index 000000000000..2da01281883a
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-px30-core-ctouch2.dts
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions
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

