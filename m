Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7BE0546FDD9
	for <lists+devicetree@lfdr.de>; Fri, 10 Dec 2021 10:34:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237722AbhLJJia (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Dec 2021 04:38:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237728AbhLJJia (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Dec 2021 04:38:30 -0500
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2E6CC0617A2
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 01:34:55 -0800 (PST)
Received: by mail-pf1-x429.google.com with SMTP id g19so7971179pfb.8
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 01:34:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4TT1p+eLjRJsZY0SbZkrxkKX/qmSCca7EegSbohNmfE=;
        b=kX3Ata2tiIgIpyUVnssNPBLENyrUyHmdPqkXVb6XeZ5Hi1bBVilkWgZ5Ir/b6ETK7Z
         KU22LrwwnwxXwL8wVp+Yn5rp+mdJdyoY4HROY1bV8bEENHSeHPbIEyP5DN0daNYIcxAx
         3p9C2FmPUi3+WK0zNdMZrIchoYZjA0ydaVwYnToiXTDDUEzzGhZmCSPjfkPUc30Kz0sy
         tYSHgPCuMOAX6YHMCvFoUYSpzHMUytnp+1bkhC/4ipmpF4Kc6Y1mpdxp+uDNJyypEJFM
         QrVmI47fXDpIsLa7gLvmDDPPq81K8g9l7ixU0KBLP9PdO9qAOdE0qnnJxeHZhjiekv/e
         U2dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4TT1p+eLjRJsZY0SbZkrxkKX/qmSCca7EegSbohNmfE=;
        b=SpHbLNuWvSJwsvjf+rrdz39NoxHAdcJEZWOijgIQr7MHyvpMAzAiYG9sZ9PmlWi8lJ
         sqX1pe29BvqI/Qlfd4RgoC37/3u8DRAoZHdnT99xiukNX0IicJom3sHPhgfU0W7wQXjf
         /O3w/0aSQXlm6cNyT8R224bMtFm9WQT5Ox/uhPNV0aEwXc8pwu9FlTV66QMC1urAwckI
         BHWgReUGuk+dW5tmnF0UUl9Xn+cNH3KOv57URHvlBUT5YwCjS+MlLFxbs+a8zIe/lq+m
         LvV5aRYX/Ml78IREy6YPPSz8UElse064nDQq0psUvANY2VGaC4ljlbcw/t2DV5je7kdI
         JXNg==
X-Gm-Message-State: AOAM531XNivixHMQwGDxD/Iaz1572xfLCkY5ttGEcPK/Ah+7A1bv0Bpb
        Q1h2AnnrrtS7aEDMZmqWGVrhOQ==
X-Google-Smtp-Source: ABdhPJwf44o2Gfvevvq0zV3kXEXCt56jqrnYE05lAdKFp0o7N7jhEL805abVwQDsoz8TgvJyrPjoTw==
X-Received: by 2002:a63:1f16:: with SMTP id f22mr27539411pgf.259.1639128895335;
        Fri, 10 Dec 2021 01:34:55 -0800 (PST)
Received: from localhost ([221.194.138.194])
        by smtp.gmail.com with ESMTPSA id t131sm1969905pgb.31.2021.12.10.01.34.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Dec 2021 01:34:54 -0800 (PST)
From:   Lei YU <yulei.sh@bytedance.com>
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Joel Stanley <joel@jms.id.au>,
        openbmc <openbmc@lists.ozlabs.org>, linux-aspeed@lists.ozlabs.org
Cc:     Lei YU <yulei.sh@bytedance.com>
Subject: [PATCH] ARM: dts: Add openbmc-flash-layout-64-alt.dtsi
Date:   Fri, 10 Dec 2021 17:34:43 +0800
Message-Id: <20211210093443.2140557-1-yulei.sh@bytedance.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add openbmc-flash-layout-64-alt.dtsi to describe the partitions of the
secondary flash for OpenBMC's 64M static layout.
The layout is the same as openbmc-flash-layout-64.dtsi and the labels
are prepended with "alt-" for the partitions.

Signed-off-by: Lei YU <yulei.sh@bytedance.com>
---
 .../boot/dts/openbmc-flash-layout-64-alt.dtsi | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 arch/arm/boot/dts/openbmc-flash-layout-64-alt.dtsi

diff --git a/arch/arm/boot/dts/openbmc-flash-layout-64-alt.dtsi b/arch/arm/boot/dts/openbmc-flash-layout-64-alt.dtsi
new file mode 100644
index 000000000000..650525867561
--- /dev/null
+++ b/arch/arm/boot/dts/openbmc-flash-layout-64-alt.dtsi
@@ -0,0 +1,35 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2020 Bytedance.
+ */
+
+partitions {
+	compatible = "fixed-partitions";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	u-boot@0 {
+		reg = <0x0 0xe0000>; // 896KB
+		label = "alt-u-boot";
+	};
+
+	u-boot-env@e0000 {
+		reg = <0xe0000 0x20000>; // 128KB
+		label = "alt-u-boot-env";
+	};
+
+	kernel@100000 {
+		reg = <0x100000 0x900000>; // 9MB
+		label = "alt-kernel";
+	};
+
+	rofs@a00000 {
+		reg = <0xa00000 0x2000000>; // 32MB
+		label = "alt-rofs";
+	};
+
+	rwfs@6000000 {
+		reg = <0x2a00000 0x1600000>; // 22MB
+		label = "alt-rwfs";
+	};
+};
-- 
2.25.1

