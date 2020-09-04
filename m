Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B76C325CFA3
	for <lists+devicetree@lfdr.de>; Fri,  4 Sep 2020 05:11:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729723AbgIDDLT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Sep 2020 23:11:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729692AbgIDDK4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Sep 2020 23:10:56 -0400
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com [IPv6:2607:f8b0:4864:20::841])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C249C06125F
        for <devicetree@vger.kernel.org>; Thu,  3 Sep 2020 20:10:54 -0700 (PDT)
Received: by mail-qt1-x841.google.com with SMTP id k25so2720156qtu.4
        for <devicetree@vger.kernel.org>; Thu, 03 Sep 2020 20:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9FeyMPX2ym39zTofXtT3Ie7eSdDscnW/zN+nSIbkxbk=;
        b=db3/8iW0YSOOpJ9PRWYydw7qDOPh+V4Ggge5oMydh+3WWgYNTweHdr4hvCoiKK+0FK
         tIMUWaejgZM7CWw76fyYpwnXX+IUWmc5ZoqRNxOjfpsf85BPrHhPtSkYK8V5OjE6yXcG
         w2AFOP0PSifzabk7kLJ9pKTZj6oFOp8AxY1END3qoxbCUCrhYVLh8Z6mcH/x+W9l/5bT
         A7benu3NqekPupELzMN3t0dQrreEiF+wPO0y1EcbuAu23nddHCiFCY5wbO6IpUUwSkNq
         9Ls2ne8JWYSVK7WK5A5ewlmAGYJyO2/+SU8KHTQYDov4YwcBrdawOA50WsSlGo/yA083
         xmdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9FeyMPX2ym39zTofXtT3Ie7eSdDscnW/zN+nSIbkxbk=;
        b=RD9QyMqq0mYOnLUBsaZcIYfx2Cml+/RHhRa3vlIAOqj35wIAjtFWcx+YOO9vK1oXRj
         0KnPX70xVIukqnqdYrRJfwcakf5lJuIIfwlZqIhwRzZcj/gAZ05nrCZnB+kLh8tJwxLM
         1vV7CSGahvaiPmSpTuWHkxro5JzmGarjvdQnj3aOoWt6cr8TQWGgo7IqZWrSXeyd8sfd
         +DPQO5FwCnCVH4GYFVE7u8c+R9nSR83ba0SYmoW/zQemW1V3KecWLNGd1CwbGjE5VOKV
         CgfK/WN5eyh52nlXu8urJYPUzIdBxlk84LD3g46ItjUS8vKME70CwTNBCkyVQpUv+90f
         DgrQ==
X-Gm-Message-State: AOAM531/DLk6SZqeVtEEkLwR+Bz5kiFJs0//OG3cQMT7UYbiib38jd0X
        l6Ve/U76Ual/8zshENP2N3u/nw==
X-Google-Smtp-Source: ABdhPJzS+j+uNwV/2v0X923k7X6DWo03FrAHH6ldcb1z1Hl6oIBNIfHiPTaqa1YVEvMGv9ZJzKKG4A==
X-Received: by 2002:ac8:474a:: with SMTP id k10mr6524626qtp.115.1599189053862;
        Thu, 03 Sep 2020 20:10:53 -0700 (PDT)
Received: from localhost.localdomain ([147.253.86.153])
        by smtp.gmail.com with ESMTPSA id x59sm3481063qte.14.2020.09.03.20.10.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 20:10:53 -0700 (PDT)
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
Subject: [PATCH v2 3/5] dt-bindings: clock: add SM8250 QCOM video clock bindings
Date:   Thu,  3 Sep 2020 23:09:52 -0400
Message-Id: <20200904030958.13325-4-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200904030958.13325-1-jonathan@marek.ca>
References: <20200904030958.13325-1-jonathan@marek.ca>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device tree bindings for video clock controller for SM8250 SoCs.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
---
 .../bindings/clock/qcom,videocc.yaml          |  8 +++-
 .../dt-bindings/clock/qcom,videocc-sm8250.h   | 42 +++++++++++++++++++
 2 files changed, 49 insertions(+), 1 deletion(-)
 create mode 100644 include/dt-bindings/clock/qcom,videocc-sm8250.h

diff --git a/Documentation/devicetree/bindings/clock/qcom,videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,videocc.yaml
index d04f5bd28dde..66a6066ae353 100644
--- a/Documentation/devicetree/bindings/clock/qcom,videocc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,videocc.yaml
@@ -11,12 +11,13 @@ maintainers:
 
 description: |
   Qualcomm video clock control module which supports the clocks, resets and
-  power domains on SDM845/SC7180/SM8150.
+  power domains on SDM845/SC7180/SM8150/SM8250.
 
   See also:
     dt-bindings/clock/qcom,videocc-sdm845.h
     dt-bindings/clock/qcom,videocc-sc7180.h
     dt-bindings/clock/qcom,videocc-sm8150.h
+    dt-bindings/clock/qcom,videocc-sm8250.h
 
 properties:
   compatible:
@@ -24,14 +25,19 @@ properties:
       - qcom,sdm845-videocc
       - qcom,sc7180-videocc
       - qcom,sm8150-videocc
+      - qcom,sm8250-videocc
 
   clocks:
+    minItems: 1
     items:
       - description: Board XO source
+      - description: Board XO source, always-on (required by sm8250 only)
 
   clock-names:
+    minItems: 1
     items:
       - const: bi_tcxo
+      - const: bi_tcxo_ao
 
   '#clock-cells':
     const: 1
diff --git a/include/dt-bindings/clock/qcom,videocc-sm8250.h b/include/dt-bindings/clock/qcom,videocc-sm8250.h
new file mode 100644
index 000000000000..d5867fe320c7
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,videocc-sm8250.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2018-2020, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_VIDEO_CC_SM8250_H
+#define _DT_BINDINGS_CLK_QCOM_VIDEO_CC_SM8250_H
+
+/* VIDEO_CC clocks */
+#define VIDEO_CC_AHB_CLK		0
+#define VIDEO_CC_AHB_CLK_SRC		1
+#define VIDEO_CC_MVS0_CLK		2
+#define VIDEO_CC_MVS0_CLK_SRC		3
+#define VIDEO_CC_MVS0_DIV_CLK_SRC	4
+#define VIDEO_CC_MVS0C_CLK		5
+#define VIDEO_CC_MVS0C_DIV2_DIV_CLK_SRC	6
+#define VIDEO_CC_MVS1_CLK		7
+#define VIDEO_CC_MVS1_CLK_SRC		8
+#define VIDEO_CC_MVS1_DIV2_CLK		9
+#define VIDEO_CC_MVS1_DIV_CLK_SRC	10
+#define VIDEO_CC_MVS1C_CLK		11
+#define VIDEO_CC_MVS1C_DIV2_DIV_CLK_SRC	12
+#define VIDEO_CC_XO_CLK			13
+#define VIDEO_CC_XO_CLK_SRC		14
+#define VIDEO_CC_PLL0			15
+#define VIDEO_CC_PLL1			16
+
+/* VIDEO_CC resets */
+#define VIDEO_CC_CVP_INTERFACE_BCR	0
+#define VIDEO_CC_CVP_MVS0_BCR		1
+#define VIDEO_CC_MVS0C_CLK_ARES		2
+#define VIDEO_CC_CVP_MVS0C_BCR		3
+#define VIDEO_CC_CVP_MVS1_BCR		4
+#define VIDEO_CC_MVS1C_CLK_ARES		5
+#define VIDEO_CC_CVP_MVS1C_BCR		6
+
+#define MVS0C_GDSC			0
+#define MVS1C_GDSC			1
+#define MVS0_GDSC			2
+#define MVS1_GDSC			3
+
+#endif
-- 
2.26.1

