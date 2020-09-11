Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E1C2A266248
	for <lists+devicetree@lfdr.de>; Fri, 11 Sep 2020 17:38:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726205AbgIKPhw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Sep 2020 11:37:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726554AbgIKPg2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Sep 2020 11:36:28 -0400
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com [IPv6:2607:f8b0:4864:20::841])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B5D3C0617BF
        for <devicetree@vger.kernel.org>; Fri, 11 Sep 2020 08:35:41 -0700 (PDT)
Received: by mail-qt1-x841.google.com with SMTP id h6so8148430qtd.6
        for <devicetree@vger.kernel.org>; Fri, 11 Sep 2020 08:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qA++kSSjzdnD+tb3jSy04EQFcn9B0l1CoREwLGe8Pfs=;
        b=tqgf4tnv7fYdtYYKgNhpyxwD8BmEYukiMzonOXhUKtT88W/BcACovsZkcUzDwE3qzT
         Cgc1pf/MjoNVoFYkl5HGRscnaXF1/t20semxFHcSiJU3lRrhOdVWR4nFdXxtVbFfYDBh
         8r0wCYSKMrDm4L22DKuW9n6kMetSR22eDegKw13tYXtRdaQviVqZVbBamzXpFkuHBzj0
         3pvLq21hvdWsXvUIlwISaqGDHN6cYgSUUejh9e3nVieMiWLU39zI/IqCTFqbVyQUlZo5
         7eLsRtXn8Rx3Z0IynTzixzKiT779b44+q4KuL1mPkTRUoyCkWlyy03WdcN0cXSU6vShJ
         8CVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qA++kSSjzdnD+tb3jSy04EQFcn9B0l1CoREwLGe8Pfs=;
        b=SC8J7ijqqgCz05trvUkYKSeZ+MdEx4hsry1NNDhLTpkX03ijAsFt4LQens57HwnazI
         i+xON+8bS72aS3FXwgHgVrGxeSgEnXBZlV6l2ozRr1xQVN0+1zUW3G9L2sn8iQQCt5Fs
         /R5X4TohkVyX31l7oKcH6ceLmGqUqi+KGpbLvqdcYwpNtatyUKOpBX01s37uYLytoQRt
         yawxeehg+26x2COOzzgCJck3K0ue/d51edM+dfZT7fIuE5lzFUXoAXxNf6BzoKltuS23
         zzz2V2TQtxdPgJPe+L2Rtp8cosgSbZzx6pjctDBNsQijgn0F5HPbdUTP2n2F1f9w63DN
         rqHQ==
X-Gm-Message-State: AOAM533G6e1xp7cn++sIY3Oc7D68GRN/cdx3GfcKUGu5GLMOW4ejpMmy
        jfYaYNmSIbsLeFKvojXTNdAOEw==
X-Google-Smtp-Source: ABdhPJxQbfaH4TtBMSqV37gp7vJLVnC7oilsF4Ld4p8OXfh9IMQTGAMj7n+o2AVmqLX71YfKv+qyRA==
X-Received: by 2002:ac8:5d43:: with SMTP id g3mr2479591qtx.295.1599838540674;
        Fri, 11 Sep 2020 08:35:40 -0700 (PDT)
Received: from localhost.localdomain ([147.253.86.153])
        by smtp.gmail.com with ESMTPSA id v16sm3001744qkg.37.2020.09.11.08.35.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 08:35:40 -0700 (PDT)
From:   Jonathan Marek <jonathan@marek.ca>
To:     linux-arm-msm@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Taniya Das <tdas@codeaurora.org>,
        linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v3 5/7] dt-bindings: clock: Introduce QCOM SM8250 display clock bindings
Date:   Fri, 11 Sep 2020 11:34:05 -0400
Message-Id: <20200911153412.21672-6-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200911153412.21672-1-jonathan@marek.ca>
References: <20200911153412.21672-1-jonathan@marek.ca>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device tree bindings for display clock controller for
Qualcomm Technology Inc's SM8250 SoCs.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
---
 .../bindings/clock/qcom,dispcc.yaml           |  4 +-
 .../dt-bindings/clock/qcom,dispcc-sm8250.h    | 66 +++++++++++++++++++
 2 files changed, 69 insertions(+), 1 deletion(-)
 create mode 100644 include/dt-bindings/clock/qcom,dispcc-sm8250.h

diff --git a/Documentation/devicetree/bindings/clock/qcom,dispcc.yaml b/Documentation/devicetree/bindings/clock/qcom,dispcc.yaml
index 9702066cda38..ca4c4e944c6c 100644
--- a/Documentation/devicetree/bindings/clock/qcom,dispcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,dispcc.yaml
@@ -11,12 +11,13 @@ maintainers:
 
 description: |
   Qualcomm display clock control module which supports the clocks, resets and
-  power domains on SDM845/SC7180/SM8150.
+  power domains on SDM845/SC7180/SM8150/SM8250.
 
   See also:
     dt-bindings/clock/qcom,dispcc-sdm845.h
     dt-bindings/clock/qcom,dispcc-sc7180.h
     dt-bindings/clock/qcom,dispcc-sm8150.h
+    dt-bindings/clock/qcom,dispcc-sm8250.h
 
 properties:
   compatible:
@@ -24,6 +25,7 @@ properties:
       - qcom,sdm845-dispcc
       - qcom,sc7180-dispcc
       - qcom,sm8150-dispcc
+      - qcom,sm8250-dispcc
 
   # NOTE: sdm845.dtsi existed for quite some time and specified no clocks.
   # The code had to use hardcoded mechanisms to find the input clocks.
diff --git a/include/dt-bindings/clock/qcom,dispcc-sm8250.h b/include/dt-bindings/clock/qcom,dispcc-sm8250.h
new file mode 100644
index 000000000000..fdaca6ad5c85
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,dispcc-sm8250.h
@@ -0,0 +1,66 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2018-2020, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_DISP_CC_SM8250_H
+#define _DT_BINDINGS_CLK_QCOM_DISP_CC_SM8250_H
+
+/* DISP_CC clock registers */
+#define DISP_CC_MDSS_AHB_CLK			0
+#define DISP_CC_MDSS_AHB_CLK_SRC		1
+#define DISP_CC_MDSS_BYTE0_CLK			2
+#define DISP_CC_MDSS_BYTE0_CLK_SRC		3
+#define DISP_CC_MDSS_BYTE0_DIV_CLK_SRC		4
+#define DISP_CC_MDSS_BYTE0_INTF_CLK		5
+#define DISP_CC_MDSS_BYTE1_CLK			6
+#define DISP_CC_MDSS_BYTE1_CLK_SRC		7
+#define DISP_CC_MDSS_BYTE1_DIV_CLK_SRC		8
+#define DISP_CC_MDSS_BYTE1_INTF_CLK		9
+#define DISP_CC_MDSS_DP_AUX1_CLK		10
+#define DISP_CC_MDSS_DP_AUX1_CLK_SRC		11
+#define DISP_CC_MDSS_DP_AUX_CLK			12
+#define DISP_CC_MDSS_DP_AUX_CLK_SRC		13
+#define DISP_CC_MDSS_DP_LINK1_CLK		14
+#define DISP_CC_MDSS_DP_LINK1_CLK_SRC		15
+#define DISP_CC_MDSS_DP_LINK1_DIV_CLK_SRC	16
+#define DISP_CC_MDSS_DP_LINK1_INTF_CLK		17
+#define DISP_CC_MDSS_DP_LINK_CLK		18
+#define DISP_CC_MDSS_DP_LINK_CLK_SRC		19
+#define DISP_CC_MDSS_DP_LINK_DIV_CLK_SRC	20
+#define DISP_CC_MDSS_DP_LINK_INTF_CLK		21
+#define DISP_CC_MDSS_DP_PIXEL1_CLK		22
+#define DISP_CC_MDSS_DP_PIXEL1_CLK_SRC		23
+#define DISP_CC_MDSS_DP_PIXEL2_CLK		24
+#define DISP_CC_MDSS_DP_PIXEL2_CLK_SRC		25
+#define DISP_CC_MDSS_DP_PIXEL_CLK		26
+#define DISP_CC_MDSS_DP_PIXEL_CLK_SRC		27
+#define DISP_CC_MDSS_ESC0_CLK			28
+#define DISP_CC_MDSS_ESC0_CLK_SRC		29
+#define DISP_CC_MDSS_ESC1_CLK			30
+#define DISP_CC_MDSS_ESC1_CLK_SRC		31
+#define DISP_CC_MDSS_MDP_CLK			32
+#define DISP_CC_MDSS_MDP_CLK_SRC		33
+#define DISP_CC_MDSS_MDP_LUT_CLK		34
+#define DISP_CC_MDSS_NON_GDSC_AHB_CLK		35
+#define DISP_CC_MDSS_PCLK0_CLK			36
+#define DISP_CC_MDSS_PCLK0_CLK_SRC		37
+#define DISP_CC_MDSS_PCLK1_CLK			38
+#define DISP_CC_MDSS_PCLK1_CLK_SRC		39
+#define DISP_CC_MDSS_ROT_CLK			40
+#define DISP_CC_MDSS_ROT_CLK_SRC		41
+#define DISP_CC_MDSS_RSCC_AHB_CLK		42
+#define DISP_CC_MDSS_RSCC_VSYNC_CLK		43
+#define DISP_CC_MDSS_VSYNC_CLK			44
+#define DISP_CC_MDSS_VSYNC_CLK_SRC		45
+#define DISP_CC_PLL0				46
+#define DISP_CC_PLL1				47
+
+/* DISP_CC Reset */
+#define DISP_CC_MDSS_CORE_BCR			0
+#define DISP_CC_MDSS_RSCC_BCR			1
+
+/* DISP_CC GDSCR */
+#define MDSS_GDSC				0
+
+#endif
-- 
2.26.1

