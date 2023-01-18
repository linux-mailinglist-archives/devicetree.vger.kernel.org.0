Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 262826716F1
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 10:03:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229515AbjARJDW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 04:03:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230090AbjARJAE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 04:00:04 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A122061899
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 00:20:51 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id hw16so69450146ejc.10
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 00:20:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bqPviHpayHaGGc0B5iZtNHtziiSMiNGw6g1P+UBeEFc=;
        b=sF8PSuk9DLb1r11wwSB/iX9FUCxa+yzwLfV/GW3njK55n1V117QCEUdRUr2IUk0mM0
         JD6FKz94Lj3D8YPhRPivJgkr5nqPfceotbVBb74+jC3HTqeDNuZ2/XwT2vZ4KRSXJHrC
         lavapcZkynb4fZdP4tTz9mI0b2kHkU6z4nFIapIZErvuClOFzdgOQ+AdvURuIRpt+zU7
         QGekGyyAyJZzVz+o6Rjw7b25caozKcjSTNCKYU1sSBNP2cm7uqYZhzO5ESvzh1sfALPK
         9ssB1S77sWPZbA4wx8fmCbCm6feGSLGDRj3fYNy/BH/03M4ShNwqXbVmQJuKzNCZJUwH
         7WTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bqPviHpayHaGGc0B5iZtNHtziiSMiNGw6g1P+UBeEFc=;
        b=WA+JtMmw3+XvZpf4dhnKuQJSlEF3MSn8McnGJ7y08QBBvcDH47Vi/qS0G2wy3sE0im
         B0hDK4apGy9pURwJvw7L2E6ypiMwv2lK94pt/9S5pJA+pE+CN/stM6kCR9LdF/WQxMO4
         US17NE6jZk4dR5dTVFV6GGCH+GJPyEyBLr7jY61Z8eqJBg3eIkWRhgk1lcLtsQAgI4O0
         BJBtXymvvUZL25Wcc0mHN+/E2SooIs2Ih/gWlqTr4akCt79UARnEFgWNOZEPwP2ho325
         eUUZCP/Jyw3XakiAEDWqejt5TOgXMl3aDHScmpVsIRvpdL6RtwJ99dxglRClU3FLGIf3
         2CFA==
X-Gm-Message-State: AFqh2kq8zom2pxW3xtRhbqYvmad3zZTeNaoRRysy1dL1qpOmVV+QCz8/
        wqD1Yna+zVWJTF/ow7lE96j273HxcPPDACvP
X-Google-Smtp-Source: AMrXdXth8zvI/f904KZiUu5E5DZ9J9wAitku1hAVbUV7gwRDujS60MkQA7OR06mQZQ5IOUE8a7DTHQ==
X-Received: by 2002:a17:906:a002:b0:858:cccd:7c6a with SMTP id p2-20020a170906a00200b00858cccd7c6amr6030091ejy.68.1674030050222;
        Wed, 18 Jan 2023 00:20:50 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id o14-20020a17090637ce00b00871390a3b74sm3240403ejc.177.2023.01.18.00.20.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 00:20:49 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [RFC PATCH] arm64: dts: qcom: add device tree for DB845c working in dual DSI mode
Date:   Wed, 18 Jan 2023 10:20:48 +0200
Message-Id: <20230118082048.2198715-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While we are testing the DB845c working in dual DSI mode (which is
required for the 4k support), create a separate device tree using this
configuration.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---

Dependencies to be able to verify the 4k@30 mode:
[1] https://lore.kernel.org/linux-arm-msm/20221229191856.3508092-1-dmitry.baryshkov@linaro.org/
[2] https://lore.kernel.org/dri-devel/20230118081658.2198520-1-dmitry.baryshkov@linaro.org/

---
 arch/arm64/boot/dts/qcom/Makefile             |  1 +
 .../boot/dts/qcom/sdm845-db845c-dual-dsi.dts  | 48 +++++++++++++++++++
 2 files changed, 49 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sdm845-db845c-dual-dsi.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 3e79496292e7..dc55c3b989a4 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -139,6 +139,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-cheza-r1.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-cheza-r2.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-cheza-r3.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-db845c.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-db845c-dual-dsi.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-db845c-navigation-mezzanine.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-lg-judyln.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-lg-judyp.dtb
diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c-dual-dsi.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c-dual-dsi.dts
new file mode 100644
index 000000000000..4a366dedc841
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c-dual-dsi.dts
@@ -0,0 +1,48 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2023, Linaro Ltd.
+ */
+
+#include "sdm845-db845c.dts"
+
+&dsi0 {
+	qcom,dual-dsi-mode;
+	qcom,master-dsi;
+};
+
+&dsi1 {
+	vdda-supply = <&vreg_l26a_1p2>;
+
+	qcom,dual-dsi-mode;
+
+	/* DSI1 is slave, so use DSI0 clocks */
+	assigned-clock-parents = <&dsi0_phy 0>, <&dsi0_phy 1>;
+
+	status = "okay";
+
+	ports {
+		port@1 {
+			endpoint {
+				remote-endpoint = <&lt9611_b>;
+				data-lanes = <0 1 2 3>;
+			};
+		};
+	};
+};
+
+&dsi1_phy {
+	vdds-supply = <&vreg_l1a_0p875>;
+	status = "okay";
+};
+
+&lt9611_codec {
+	ports {
+		port@1 {
+			reg = <1>;
+
+			lt9611_b: endpoint {
+				remote-endpoint = <&dsi1_out>;
+			};
+		};
+	};
+};
-- 
2.39.0

