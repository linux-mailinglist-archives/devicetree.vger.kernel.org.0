Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE46F7820D4
	for <lists+devicetree@lfdr.de>; Mon, 21 Aug 2023 02:25:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232182AbjHUAZp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Aug 2023 20:25:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232185AbjHUAZo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Aug 2023 20:25:44 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B24B9A6
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 17:25:42 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2bb99fbaebdso44837781fa.0
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 17:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692577541; x=1693182341;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mp3OxMlQ5f/3XEucj+vCtx08B1iilIkI8HF7qdGL8lY=;
        b=jT+xLTaXC34k1GmE5Hzk9/0YvC/ESSfTx1s0IT4gf46X1lIrpj0pTN4xnRRFWBHC+D
         Ew3ihFg65zlJsZoJX9P2+BpOjNrkCbsjzXiWz8Pgz1d0qLo/rvJuE1+Zh1hzqoqlRIZZ
         Of5/4cpkzDOoLY/awDr7vYcWn/2RLY7tygHQS8+kEijdKPNMdJjOzkQiSBRA5MXrtbFM
         CEMzF6siMsbO0/0KZSsNGESn1ZfIiuC2NvuWPP0Asc6AC2JGqi97NAcXR9YKrPFKG0wh
         aGjMnFlHos2ZpN/M3JJrCL0odIyVkXxUGo7mEmesTxwRetGQeb4jUaxT9ExsEyrbuv1M
         jUZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692577541; x=1693182341;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mp3OxMlQ5f/3XEucj+vCtx08B1iilIkI8HF7qdGL8lY=;
        b=SOrw3Uw5BAnt6X/C5KsWOY9LTx87ufcNymeBjG6M/70Ns5W4ApJwSseYai2jurfQ/5
         v/XsvF69VmmKSM77PUiYLAy8nCAQkX36zvYhkACsiMb0TVzw+zTW5fs6zl5dEFj0MtP1
         2jkzgqfBO+aiYhusUUZQRPTNClPi+zcvPUHiVMkEd2u+ys5RNQRWQmewbql+T7i0Szq7
         rsaDKIk7wIKh3IP3KDh0+FuW9w21SKnwWCGjcPWqgni0RuxrV+Qfxeu4mw7KNo99KT65
         PO5NgA7scU0F3nvkb/5AEa9ltX/JCbuQItE0P5JYE/d1JboXOFuO5ogaI/5vJzfGX5qg
         uSRQ==
X-Gm-Message-State: AOJu0YzaVWxClgz82mvlqufNlmPURaT9nvXK3OQsZcmu1aaNgeQGZJ08
        AzTJAwOLN7y4luBTzAcWJkSaK6C5T89YZbubZZE=
X-Google-Smtp-Source: AGHT+IGrYuJ+w85s1q0I8jvwou4kwSDdjAWecWslVTjDjN3SYPfBOenQ8HXCpnIOuvd2XcxvvtNfTw==
X-Received: by 2002:a2e:8815:0:b0:2bc:bf29:18d3 with SMTP id x21-20020a2e8815000000b002bcbf2918d3mr823396ljh.31.1692577541065;
        Sun, 20 Aug 2023 17:25:41 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h27-20020a2eb0fb000000b002b6fe751b6esm1964923ljl.124.2023.08.20.17.25.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 17:25:40 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 05/16] phy: qcom-qmp: move PCS MISC V4 registers to separate header
Date:   Mon, 21 Aug 2023 03:25:24 +0300
Message-Id: <20230821002535.585660-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
References: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move PCS MISC V4 registers to the separate header.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v4.h | 17 +++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c         |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp.h             |  8 --------
 3 files changed, 18 insertions(+), 8 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v4.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v4.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v4.h
new file mode 100644
index 000000000000..e256a089f228
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v4.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_MISC_V4_H_
+#define QCOM_PHY_QMP_PCS_MISC_V4_H_
+
+/* Only for QMP V4 PHY - PCS_MISC registers */
+#define QPHY_V4_PCS_MISC_TYPEC_CTRL			0x00
+#define QPHY_V4_PCS_MISC_TYPEC_PWRDN_CTRL		0x04
+#define QPHY_V4_PCS_MISC_PCS_MISC_CONFIG1		0x08
+#define QPHY_V4_PCS_MISC_CLAMP_ENABLE			0x0c
+#define QPHY_V4_PCS_MISC_TYPEC_STATUS			0x10
+#define QPHY_V4_PCS_MISC_PLACEHOLDER_STATUS		0x14
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 411cf0ae148d..42a1a3f00759 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -21,6 +21,7 @@
 
 #include "phy-qcom-qmp.h"
 #include "phy-qcom-qmp-pcs-misc-v3.h"
+#include "phy-qcom-qmp-pcs-misc-v4.h"
 #include "phy-qcom-qmp-pcs-usb-v4.h"
 #include "phy-qcom-qmp-pcs-usb-v5.h"
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 32d897684755..71f063f4a56e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -126,14 +126,6 @@
 #define QSERDES_V4_DP_PHY_AUX_INTERRUPT_STATUS		0x0d8
 #define QSERDES_V4_DP_PHY_STATUS			0x0dc
 
-/* Only for QMP V4 PHY - PCS_MISC registers */
-#define QPHY_V4_PCS_MISC_TYPEC_CTRL			0x00
-#define QPHY_V4_PCS_MISC_TYPEC_PWRDN_CTRL		0x04
-#define QPHY_V4_PCS_MISC_PCS_MISC_CONFIG1		0x08
-#define QPHY_V4_PCS_MISC_CLAMP_ENABLE			0x0c
-#define QPHY_V4_PCS_MISC_TYPEC_STATUS			0x10
-#define QPHY_V4_PCS_MISC_PLACEHOLDER_STATUS		0x14
-
 #define QSERDES_V5_DP_PHY_STATUS			0x0dc
 
 /* Only for QMP V6 PHY - DP PHY registers */
-- 
2.39.2

