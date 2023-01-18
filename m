Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0BF9A670F6A
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 02:05:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229576AbjARBF2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 20:05:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229737AbjARBEj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 20:04:39 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FB59366BC
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 16:53:38 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id t5so27986074wrq.1
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 16:53:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NgXna0bBgsjljycY2CPxK95hatbPatnCou/f0zztZCA=;
        b=wUBxCjtlt4ukuMe/tt2TXIf2JHa4uGMbSukplOXoVRDRgF1fK65/8bZB1poBs85Qzr
         cW30k9BfMjEEB1/MQE7quZU+piPAzNrQ6XqTJFJNzeHqaYUCeZQ93jeUeb40Uaghcg2D
         RV500btQYaXNGvMgO1s/bycAwYlBa2/xK02xyYzc+OTXFLpsjEu3TaWlca0vuwOCDxkA
         5jRQ9UTWcVjm93teLGvULcjQ6OWQP5Ayn+iD3lmqFLCTlPliBiO/v9o3iuduVcn3tlE7
         +BgRUmIAhMEynDrqisOL48wvZhRWN9eBB3J1FC9U6r+LSNZC2FZrTOPyNyedR0RXkFcO
         a/ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NgXna0bBgsjljycY2CPxK95hatbPatnCou/f0zztZCA=;
        b=MqlVkV8AsR3VDxJm8Z8B0g6pT/Y5p9pLy9VPAVkbgWFjoprNVLy33910tChquJrcC4
         3KyOnlY9xme4UtTreG4yMM4VKzTJW85AMaFqbTUVPHPhI2miv4DELUmd+Cw7ETnmFq8q
         85SVeVae5jKwwm20Vrs9CCife3LSpxTECvyYnafSlwyDOaQuAsGjXj5DlIPZUWzeCHx2
         dnBE1seA2LdUvNJZ9CM/USv3j/+p0Nw9+7T2iKOHr0YMWO5MXrkXvvCXRb/5MWa9jsIY
         h3368ufmCUSDYZcP5AIgD9vNfqCMS+SyiCSpdUliCqmLbxeGziarjAVeY3JisF0Y86zM
         LzVw==
X-Gm-Message-State: AFqh2kq+WxN//ZN3eTUhkJr9usay0KVj0jy9tU0PIcaVLhCk2gEX2bY0
        xbNArZYNrtl2rR1tfuI0aEs49A==
X-Google-Smtp-Source: AMrXdXstzkZJavEtuQkz5iiSkPIdHzaFAUQE1rOywD6/eAYKthKXzToRG/7qME4figGCySBS0eb3OA==
X-Received: by 2002:adf:f606:0:b0:24b:b74d:8012 with SMTP id t6-20020adff606000000b0024bb74d8012mr4176350wrp.18.1674003217914;
        Tue, 17 Jan 2023 16:53:37 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id t17-20020a05600001d100b00241d21d4652sm29609705wrx.21.2023.01.17.16.53.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 16:53:37 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Johan Hovold <johan@kernel.org>
Subject: [PATCH v3 5/8] phy: qcom-qmp: pcs-pcie: Add v6.20 register offsets
Date:   Wed, 18 Jan 2023 02:53:25 +0200
Message-Id: <20230118005328.2378792-6-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118005328.2378792-1-abel.vesa@linaro.org>
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
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

The new SM8550 SoC bumps up the HW version of QMP phy to v6.20 for
PCIE g4x2. Add the new PCS PCIE specific offsets in a dedicated
header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |  1 +
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h    | 23 +++++++++++++++++++
 2 files changed, 24 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index d4ca38f31e3f..bffb9e138715 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -30,6 +30,7 @@
 #include "phy-qcom-qmp-pcs-pcie-v5.h"
 #include "phy-qcom-qmp-pcs-pcie-v5_20.h"
 #include "phy-qcom-qmp-pcs-pcie-v6.h"
+#include "phy-qcom-qmp-pcs-pcie-v6_20.h"
 #include "phy-qcom-qmp-pcie-qhp.h"
 
 /* QPHY_SW_RESET bit */
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
new file mode 100644
index 000000000000..e3eb08776339
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_PCIE_V6_20_H_
+#define QCOM_PHY_QMP_PCS_PCIE_V6_20_H_
+
+/* Only for QMP V6_20 PHY - PCIE have different offsets than V5 */
+#define QPHY_PCIE_V6_20_PCS_POWER_STATE_CONFIG2		0x00c
+#define QPHY_PCIE_V6_20_PCS_TX_RX_CONFIG		0x018
+#define QPHY_PCIE_V6_20_PCS_ENDPOINT_REFCLK_DRIVE	0x01c
+#define QPHY_PCIE_V6_20_PCS_OSC_DTCT_ATCIONS		0x090
+#define QPHY_PCIE_V6_20_PCS_EQ_CONFIG1			0x0a0
+#define QPHY_PCIE_V6_20_PCS_EQ_CONFIG5			0x108
+#define QPHY_PCIE_V6_20_PCS_G4_PRE_GAIN			0x15c
+#define QPHY_PCIE_V6_20_PCS_RX_MARGINING_CONFIG1	0x17c
+#define QPHY_PCIE_V6_20_PCS_RX_MARGINING_CONFIG3	0x184
+#define QPHY_PCIE_V6_20_PCS_RX_MARGINING_CONFIG5	0x18c
+#define QPHY_PCIE_V6_20_PCS_G3_FOM_EQ_CONFIG5		0x1ac
+#define QPHY_PCIE_V6_20_PCS_G4_FOM_EQ_CONFIG5		0x1c0
+
+#endif
-- 
2.34.1

