Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42997664230
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 14:47:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238169AbjAJNrb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 08:47:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238093AbjAJNra (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 08:47:30 -0500
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAE02186B9
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 05:47:29 -0800 (PST)
Received: by mail-pf1-x434.google.com with SMTP id s3so6330343pfd.12
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 05:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jSJ0KZBBL/yfEsl78winGD0uUa3WWtiVfEdJovBY5ok=;
        b=ZhRoKxNQTTjXYnpcX0qoQ+DOoXoDzyeB395r+MQL/NIpYnXrb8U10kgP262ja8PJyl
         CpHIc09O7CiWRq54r/741FfShp5qFAQ0Mcph6NPGB1OW/EBkYLLSMQ98Wf6n9u+Cgsu2
         1cKDVw72aBfFCHigWwQ9LPMZTiY+p2hBNayjCcuFKYAoPWksR+ovIAG/85wbwY6FbR+g
         7AZU/YBMA97LwHsq/9MsYy8Cnl/IT0o/oUWyFu5IuuX9wsHa2mfnNhd+xBhtJkEQv+g7
         tKXMIEGF4J7j+hUGnkPlMXi5qgiZ8kNx5RjyNEQTGn6m8F1PujyiA5Ry5v3ovhxO7Bz+
         yVgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jSJ0KZBBL/yfEsl78winGD0uUa3WWtiVfEdJovBY5ok=;
        b=DQIdaZrbHvJ6J3ibvMs238LJWs+NI66zLQupAams3VsDSnPIJDc5f+BLBkQuLUFEfa
         moroA/zcWkI6u781sPWNRs385jYqT7GjNSAZ+Yd20wjLFCkzl5idnwkNkQkuh1yj7DDC
         rVI2TfJ50eVR6XwbptWrrGcTpgvkp/hOm5L0/MPvsJsOU/PrMTrvkkXUoGu4CrEoEVmQ
         8cMMAsu1/YEgXfmENKjRRy7kSjaouhuecrlveDFuttFQgQnVDdRArRvpqwO+rxosGhD6
         sW5/+iBN+oMXk8pl6QscetzUgvoAZk0pqkqoZFHuw6/1G6UsDhU3Usokj1rcTqstn1xl
         hsfQ==
X-Gm-Message-State: AFqh2koi4rqMKGh3lSyZ+UejTLjgkZ7gOvWkcZSSKFtZ2/uQgdycw9OE
        ycKVKgqwnNK30XXasHg3pt1W/qNQMiK9uo4c01biEA==
X-Google-Smtp-Source: AMrXdXty5zBUtQhIKXhfu6ei/Gzcz+1+IRuUjbzKYG1PCRVS6Blz3VM0+qhtHUuJAH87ypIDRCbyrQ==
X-Received: by 2002:a05:6a00:24cd:b0:581:4260:a650 with SMTP id d13-20020a056a0024cd00b005814260a650mr79439304pfv.33.1673358449157;
        Tue, 10 Jan 2023 05:47:29 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a15f:d32:8399:ca6f:14d7])
        by smtp.gmail.com with ESMTPSA id y12-20020a62640c000000b005819313269csm8077426pfb.124.2023.01.10.05.47.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 05:47:28 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 2/3] arm64: dts: rockchip: rk3588: Add Edgeble Neu6 Model A SoM
Date:   Tue, 10 Jan 2023 19:16:57 +0530
Message-Id: <20230110134658.820691-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230110134658.820691-1-jagan@edgeble.ai>
References: <20230110134658.820691-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Neural Compute Module 6(Neu2) is a 96boards SoM-CB compute module
based on Rockchip RK3588 from Edgeble AI.

General features:
- Rockchip RK3588
- up to 32GB LPDDR4x
- up to 128GB eMMC
- 2x MIPI CSI2 FPC

On module WiFi6/BT5 is available in the following Neu6 variants.

Neu6 needs to mount on top of associated Edgeble IO boards for
creating complete platform solutions.

Enable eMMC for now to boot Linux successfully.

Add support for Edgeble Neu6 Model A SoM.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Note: Patches on top of
https://www.spinics.net/lists/kernel/msg4644731.html

 .../dts/rockchip/rk3588-edgeble-neu6a.dtsi    | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a.dtsi
new file mode 100644
index 000000000000..38e1a1e25f33
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a.dtsi
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/ {
+	compatible = "edgeble,neural-compute-module-6a", "rockchip,rk3588";
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

