Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44C1F70540C
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 18:36:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231140AbjEPQgd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 12:36:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231172AbjEPQgc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 12:36:32 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED40F729B
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:36:04 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-64384274895so10216088b3a.2
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1684254962; x=1686846962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ea2YayJLBKvMXOborY5MNIRy6faIAQn1yQrzm0Y50Jg=;
        b=SCbK6tdgB7fqWtPFLOlCGlB3qBXaiY6LinI+ZWqFt/dTRagE/Cnk33PGGY9Y97siWW
         b/tyhcLHyBiSsVWr9oIzyPzDlAYEQzmBXhcoJ+5gyfybGXBBkI7HEHc0fiU6s+bgZEu+
         ZifDa7KxD+54n3VmCvbi+8FiiyznL8HUm+NtMln33wn3E/oABhML6OkeYnrvQDQh7WOQ
         oayiTdbu2f4BVF5sJv0tEu9vZlqi2Iw2d7al0Byg8XTewtlV68LasKXymtyz+LTWnqX+
         9dyskCK2X1/H5dfH9GOuuLeKWbcjfv1Uv2xj/aJCh66z1ok9nXGQcmkRh8phVNcte0mg
         GWcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684254962; x=1686846962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ea2YayJLBKvMXOborY5MNIRy6faIAQn1yQrzm0Y50Jg=;
        b=YL6eT5axyrz8Gj2y+tFKmhZT0iSUZJOjRzpNNC9eBXihgEqukqp72qe9HhSrSwJ1af
         gZM3LF8fH/tmJ5jZ2RYLnsS993sHN1ZMijd9u0wSyk6X+qsKP+rsEJoPtiqjvVWA1O76
         3qToFUQzTxEjMHmY2dl8yHNu90yqeuma1dZSdlTWVNMBQEZuRlqXZKWxvalhg7ut8LGf
         h8mx6YcZZ/JKfUImw8789BLdk0AOynrLXykPnDUjlgOE6lkgeot5bfWko+fVSDb+PD7F
         XV3s0PyOWRolABfSVGVz+TWNmtTI2r+GY3WDqy5kRehmIpysvJMwGZLCileEBy/JaUfu
         QFGA==
X-Gm-Message-State: AC+VfDwOfLvMJdcRwEjKm0FtMsShNRoRKKJ9d0m1E4DvVZJgVgQGaxml
        6AyY/umeG7kk0ThKpdDZBF081g==
X-Google-Smtp-Source: ACHHUZ4Skk6VRRdtdz/Bbe/xbuYycfbh+licm5pACX8tVIz4psA4iEqNdxTMk+0JHDx3c924XngoxA==
X-Received: by 2002:a05:6a00:1828:b0:643:9b40:103e with SMTP id y40-20020a056a00182800b006439b40103emr48025941pfa.30.1684254962583;
        Tue, 16 May 2023 09:36:02 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a181:890:d993:6673:2242])
        by smtp.gmail.com with ESMTPSA id u19-20020aa78393000000b00642f527cd28sm13686983pfm.33.2023.05.16.09.35.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 09:36:02 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 3/4] arm64: dts: rockchip: rk3588: Add Edgeble Neu6 Model B SoM
Date:   Tue, 16 May 2023 22:04:53 +0530
Message-Id: <20230516163454.997736-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230516163454.997736-1-jagan@edgeble.ai>
References: <20230516163454.997736-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Neural Compute Module 6B(Neu6B) is a 96boards SoM-CB compute module
based on Rockchip RK3588J from Edgeble AI.

General features:
- Rockchip RK3588J
- up to 32GB LPDDR4x
- up to 128GB eMMC
- 2x MIPI CSI2 FPC

On module WiFi6/BT5 is available in the following Neu6 variants.

Neu6B needs to mount on top of associated Edgeble Neu6B IO boards for
creating complete platform solutions.

Enable eMMC for now to boot Linux successfully.

Add support for Edgeble Neu6 Model B SoM.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../dts/rockchip/rk3588-edgeble-neu6b.dtsi    | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi
new file mode 100644
index 000000000000..1c5bcf1280b4
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b.dtsi
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/ {
+	compatible = "edgeble,neural-compute-module-6b", "rockchip,rk3588";
+
+	aliases {
+		mmc0 = &sdhci;
+	};
+
+	vcc12v_dcin: vcc12v-dcin-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc12v_dcin";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+};
+
+&sdhci {
+	bus-width = <8>;
+	no-sdio;
+	no-sd;
+	non-removable;
+	max-frequency = <200000000>;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	status = "okay";
+};
-- 
2.25.1

