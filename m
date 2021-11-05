Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF35E446201
	for <lists+devicetree@lfdr.de>; Fri,  5 Nov 2021 11:14:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232966AbhKEKRE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Nov 2021 06:17:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230110AbhKEKRE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Nov 2021 06:17:04 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5DD1C061714
        for <devicetree@vger.kernel.org>; Fri,  5 Nov 2021 03:14:24 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id s24so14106959lji.12
        for <devicetree@vger.kernel.org>; Fri, 05 Nov 2021 03:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QaZa0Zspxh5wLjQ3kwAxeHmkbFDeHtgN0U8NXA0O3lA=;
        b=X6vy2bHrOUI8rHAW1qR49b2gm+qqS0Qln/bBFOBMYWwwm7rNh5mLAmJM0nAQnt5Rk/
         ehE/hpbd1CDh5wn1YBzNIupbp4OwzQmQPtaCOmTersZjSJYI5PpBC3iEj7A5d5M8TBeq
         FVcy7r4PnjsWwk6tqJmdAQgHmIiyR5FKzMCvmDC4qCM3NtMNkqImtZN6oBv2kPcK5E7g
         QnhCBFTqjMYgYRmrPbIdSAEpHlatY3sV/clsD7RCVEPyt7N+OyJyNkycEHurz9x3NxH5
         ocnU7tfvua7thfaS284WChRR0slZ5jQw5QWR5w46ppQjPGVcXV21l32dLUYAbPqCNebc
         t7dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QaZa0Zspxh5wLjQ3kwAxeHmkbFDeHtgN0U8NXA0O3lA=;
        b=eAlsZDg7kamxaVftlfZ5wZZJ0rqdrfUyvtY8DDavdM4KxNAjN6SnOzCAVhEKC05iQQ
         0O1pVqjEs0eDK5zGCpfhtENRmGPipoQ4vlnHJg+cGIAKuu5X6asaCBGPE7LAEV36Vnt+
         P1F0W6TjgnxVg3VdFHr8OHs+33cKNcyuUUgPNS/6jinWIVWLFbuhwdkL6mdS6cMO2BxG
         34c/pDMApytxFQtoAK7Oru4e3NLjFPkAB0XoF8149s4TsKAS0w8xNy1OvvIc5TdjAbbe
         hc8jtaWg4TSENMmCa9Wn61mZQDC7WvF8KC6pmiR1ZgxS+hyQKGuMguE3MQbucerCQIj8
         Btjw==
X-Gm-Message-State: AOAM532Bz5x5O8kf2z0baoW6F9Bbv1KnGw/lOb82PImYDqOJQ6pnyw/W
        o3oWlqZobgL2WyOdgwKTUd7/LXQx16A=
X-Google-Smtp-Source: ABdhPJz0LDF9qEmO7cX27ZhE2GQD5DOAxcsxlydbVIwIvnAQkbJ5ZgJmsetEU02XHONkcUi+oL+8bA==
X-Received: by 2002:a2e:9b13:: with SMTP id u19mr5877303lji.264.1636107263182;
        Fri, 05 Nov 2021 03:14:23 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id b22sm781545lfi.67.2021.11.05.03.14.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Nov 2021 03:14:22 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/2] arm64: dts: broadcom: bcm4908: add DT for Netgear RAXE500
Date:   Fri,  5 Nov 2021 11:14:13 +0100
Message-Id: <20211105101413.14926-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211105101413.14926-1-zajec5@gmail.com>
References: <20211105101413.14926-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

It's a home router based on BCM4908 SoC. It has: 1 GiB of RAM, 512 MiB
NAND flash, 6 Ethernet ports and 3 x BCM43684 (WiFi). One of Ethernet
ports is "2.5 G Multi-Gig port" that isn't described yet (it isn't known
how it's wired up).

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcm4908/Makefile |  1 +
 .../bcm4908/bcm4908-netgear-raxe500.dts       | 50 +++++++++++++++++++
 2 files changed, 51 insertions(+)
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-netgear-raxe500.dts

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/Makefile b/arch/arm64/boot/dts/broadcom/bcm4908/Makefile
index cc75854519ac..6e364e304d4f 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/Makefile
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/Makefile
@@ -2,3 +2,4 @@
 dtb-$(CONFIG_ARCH_BCM4908) += bcm4906-netgear-r8000p.dtb
 dtb-$(CONFIG_ARCH_BCM4908) += bcm4906-tplink-archer-c2300-v1.dtb
 dtb-$(CONFIG_ARCH_BCM4908) += bcm4908-asus-gt-ac5300.dtb
+dtb-$(CONFIG_ARCH_BCM4908) += bcm4908-netgear-raxe500.dtb
diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-netgear-raxe500.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-netgear-raxe500.dts
new file mode 100644
index 000000000000..3c2cf2d238b6
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-netgear-raxe500.dts
@@ -0,0 +1,50 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+#include "bcm4908.dtsi"
+
+/ {
+	compatible = "netgear,raxe500", "brcm,bcm4908";
+	model = "Netgear RAXE500";
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00 0x00 0x00 0x40000000>;
+	};
+};
+
+&ehci {
+	status = "okay";
+};
+
+&ohci {
+	status = "okay";
+};
+
+&xhci {
+	status = "okay";
+};
+
+&ports {
+	port@0 {
+		label = "lan4";
+	};
+
+	port@1 {
+		label = "lan3";
+	};
+
+	port@2 {
+		label = "lan2";
+	};
+
+	port@3 {
+		label = "lan1";
+	};
+
+	port@7 {
+		reg = <7>;
+		phy-mode = "internal";
+		phy-handle = <&phy12>;
+		label = "wan";
+	};
+};
-- 
2.31.1

