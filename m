Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 918603A1335
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 13:46:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239371AbhFILsQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 07:48:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239386AbhFILsJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 07:48:09 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6769C061760
        for <devicetree@vger.kernel.org>; Wed,  9 Jun 2021 04:46:13 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id c9so16445247wrt.5
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 04:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=E1EohIqdC72FM7oJ+0Bb3pu1J7HtZfQcXJxneapHVDs=;
        b=jMK7SSL544Pz9+ssHsN6XkEi2VnlQzCqygce0If2ZnI8wOPgTi1HJHDFbB50FTazsw
         Thr370vDNGAPJmXNJaEWdioAge/6fadRTmKKzaVHcbdK1lC9KpQo6J/lFCtcQjtT6iBd
         WTJo6cw61gU3QzuTD+WB/sO5MZM8FAVUOjOV3UoVkkS5KOconBmonM0ImyJogh7DM3OX
         qGWsFSJ8Bg9Qm/zph6Uf54cTiD33HrywmWh9LyYPTMso7Eojbdajj5FLM2cRvZd9i2Rf
         zwEgPcPhSnhCBtxU15H1kP80tuzGnNRVPb2uSG+9JtmT7Bs3zpAOFZEO9IDJpqvBFF+k
         B3WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=E1EohIqdC72FM7oJ+0Bb3pu1J7HtZfQcXJxneapHVDs=;
        b=r44f6bJlgvzTDv0We67qCyY5CaXtnUHmAj4ViYKr7c0d7MgUnf4aLW3Ei65kmyHGe4
         w4F0HlHP2MSERARz2Von9KKUlzk7n3N+SPO3HzUaMVzZdx3J5fTosqO80Zr/oBZo7CEP
         iRX4fukdPFbEYLtJEN10xwWY2lXdDLQU/U7LXMx6w+qyojw5H9IqlkrJiGj0UyCbFgit
         8BmTrhqzWG5935y0sirN+lNbDpKqMHG07IZI0FbEXolGACn7qJJRkq11y584iJ5GEWdh
         +4QNkwQmHLq0VMRU94ohOw+mZFc/uLcAODfjcWmZjd9swTXHwVb/h+ko9yj6MD0UnsTA
         d40w==
X-Gm-Message-State: AOAM53333FsMBabBtiDpyOcLAgXzXPDir+vlIEsxHnOaRzvk0InKuWF6
        sEDT/rbHblawxcl5e9yypcSRuA==
X-Google-Smtp-Source: ABdhPJxDbSSDrwL+y/nTPpabJWwtAyckk6kbuvqrbQvjOn28JPbrANIQ2yieRxF9SCJf84YUyz1Wlw==
X-Received: by 2002:adf:d1cd:: with SMTP id b13mr8628554wrd.317.1623239172430;
        Wed, 09 Jun 2021 04:46:12 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6::45a])
        by smtp.gmail.com with ESMTPSA id t1sm23025810wrx.28.2021.06.09.04.46.11
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 09 Jun 2021 04:46:12 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Michael Walle <michael@walle.cc>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 30/31] arm64: zynqmp: Add support for zcu102-rev1.1 board
Date:   Wed,  9 Jun 2021 13:45:06 +0200
Message-Id: <c95908defbf60026b20030c9b7696724bd4077c7.1623239033.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623239033.git.michal.simek@xilinx.com>
References: <cover.1623239033.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

zcu102 rev1.1 compare to rev1.0 is using by default different DDR memory
which requires different configuration. The reason for adding this file to
Linux kernel is that U-Boot fdtfile variable is composed based on board
revision (in eeprom) and dtb file should exist in standard distibutions for
passing it to Linux kernel.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 Documentation/devicetree/bindings/arm/xilinx.yaml |  1 +
 arch/arm64/boot/dts/xilinx/Makefile               |  1 +
 .../boot/dts/xilinx/zynqmp-zcu102-rev1.1.dts      | 15 +++++++++++++++
 3 files changed, 17 insertions(+)
 create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-rev1.1.dts

diff --git a/Documentation/devicetree/bindings/arm/xilinx.yaml b/Documentation/devicetree/bindings/arm/xilinx.yaml
index f52c7e8ce654..a0b1ae6e3e71 100644
--- a/Documentation/devicetree/bindings/arm/xilinx.yaml
+++ b/Documentation/devicetree/bindings/arm/xilinx.yaml
@@ -87,6 +87,7 @@ properties:
               - xlnx,zynqmp-zcu102-revA
               - xlnx,zynqmp-zcu102-revB
               - xlnx,zynqmp-zcu102-rev1.0
+              - xlnx,zynqmp-zcu102-rev1.1
           - const: xlnx,zynqmp-zcu102
           - const: xlnx,zynqmp
 
diff --git a/arch/arm64/boot/dts/xilinx/Makefile b/arch/arm64/boot/dts/xilinx/Makefile
index 11fb4fd3ebd4..083ed52337fd 100644
--- a/arch/arm64/boot/dts/xilinx/Makefile
+++ b/arch/arm64/boot/dts/xilinx/Makefile
@@ -12,6 +12,7 @@ dtb-$(CONFIG_ARCH_ZYNQMP) += zynqmp-zcu100-revC.dtb
 dtb-$(CONFIG_ARCH_ZYNQMP) += zynqmp-zcu102-revA.dtb
 dtb-$(CONFIG_ARCH_ZYNQMP) += zynqmp-zcu102-revB.dtb
 dtb-$(CONFIG_ARCH_ZYNQMP) += zynqmp-zcu102-rev1.0.dtb
+dtb-$(CONFIG_ARCH_ZYNQMP) += zynqmp-zcu102-rev1.1.dtb
 dtb-$(CONFIG_ARCH_ZYNQMP) += zynqmp-zcu104-revA.dtb
 dtb-$(CONFIG_ARCH_ZYNQMP) += zynqmp-zcu104-revC.dtb
 dtb-$(CONFIG_ARCH_ZYNQMP) += zynqmp-zcu106-revA.dtb
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-rev1.1.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-rev1.1.dts
new file mode 100644
index 000000000000..b6798394fcf4
--- /dev/null
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-rev1.1.dts
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * dts file for Xilinx ZynqMP ZCU102 Rev1.1
+ *
+ * (C) Copyright 2016 - 2020, Xilinx, Inc.
+ *
+ * Michal Simek <michal.simek@xilinx.com>
+ */
+
+#include "zynqmp-zcu102-rev1.0.dts"
+
+/ {
+	model = "ZynqMP ZCU102 Rev1.1";
+	compatible = "xlnx,zynqmp-zcu102-rev1.1", "xlnx,zynqmp-zcu102", "xlnx,zynqmp";
+};
-- 
2.31.1

