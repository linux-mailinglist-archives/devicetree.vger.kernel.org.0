Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0333F687E95
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 14:25:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232475AbjBBNZ1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 08:25:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232394AbjBBNZZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 08:25:25 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CABAE8E48B
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 05:25:19 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id m5-20020a05600c4f4500b003db03b2559eso1373820wmq.5
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 05:25:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tb+uQ1fZqisHHMUBNxWvs6KlZ6qnv4FSYAwJJCTeq5s=;
        b=HLzz8sa3Po2Rde4X0EH1yOs05YR2uo2iR9kbWJ+lv+204CsMZ3cP/+5nXIU6jInhWw
         jAliYgV7XOtfeIXCpQuN3gLe6savMlCOUq061pmG6nMzXbfit1aKmw/IBnEDtrsmLMJx
         H8c+lMxCanst6PrbRjhnJrASpt1g3CqqlbYP80tY26JCzsCL3ZwyRozRo3KKn0EMHCBb
         AefEn5FcWg+XWTn4FGptsmPCDH9L8yn/8nfendtkCy/nXtgoXto6Ur4hUc7CZu+zrof/
         1uEEfYwTtdqNyN3QFTmSlHM7zeY+aYWHjm/PN0wPcTFCBkGSxAsSMRBPnW4a6ix+jvai
         QY+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tb+uQ1fZqisHHMUBNxWvs6KlZ6qnv4FSYAwJJCTeq5s=;
        b=UzvWm4ZI11MpPJvt85Ib2dXtE1s72autNTEueJWynqa0VLmvaagbzSpk3PsstgcBUk
         sPYkgXzmaVomGudrdG5EeaiZ8LOdwWm8aPtG9c8UIWIuH6P64SdOEtXUmZfVZgpPhOpu
         DnL4J3xGr5zHzOhzDZxzw5lTXl7BUd0aWXiRvLVlTLU2zRRfDLZxVG5hWPNByQYQxXcm
         6UGvqbKUBdH/6s74zewp66SbYgieA0rBw8dyl9q/cfeTATr+tf7d0CQpoHS8uvYxAZHk
         3niZcN8ldLvMuNs4EhBXa2RVPmeEgl8NqYucQS59hGBa2Q9JUq6OWmGtTr3AdW87KKBh
         fHMg==
X-Gm-Message-State: AO0yUKWzu+CF1iLTL++yflHeYO9bKCx2/CGC5hbFcRhG95R//Z5XpLEP
        bIBkre1H0MYnhihNbQnknN8I3g==
X-Google-Smtp-Source: AK7set86zMUUjhx5Hz80ZQX9tFVy8zG3rGPP0Ul3ebUGDmLjbUoESVxdKDT6nX7nIklsT0tEyF/WbQ==
X-Received: by 2002:a7b:c042:0:b0:3dc:4042:5c21 with SMTP id u2-20020a7bc042000000b003dc40425c21mr6175321wmc.6.1675344319417;
        Thu, 02 Feb 2023 05:25:19 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id e22-20020a05600c449600b003db06224953sm4690943wmo.41.2023.02.02.05.25.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 05:25:18 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 4/8] phy: qcom-qmp: pcs-usb: Add v6 register offsets
Date:   Thu,  2 Feb 2023 15:25:07 +0200
Message-Id: <20230202132511.3983095-5-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202132511.3983095-1-abel.vesa@linaro.org>
References: <20230202132511.3983095-1-abel.vesa@linaro.org>
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

The new SM8550 SoC bumps up the HW version of QMP phy to v6 for USB.
Add the new PCS USB specific offsets in a dedicated header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

The v3 version of this patch was here:
https://lore.kernel.org/all/20230126131415.1453741-5-abel.vesa@linaro.org/

Changes since v3:
 * none

Changes since v2:
 * none

Changes since v1:
 * split all the offsets into separate patches, like Vinod suggested

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |  1 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h    | 31 +++++++++++++++++++
 2 files changed, 32 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 1f022e580407..86032dc4e24e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -26,6 +26,7 @@
 #include "phy-qcom-qmp-pcs-misc-v3.h"
 #include "phy-qcom-qmp-pcs-usb-v4.h"
 #include "phy-qcom-qmp-pcs-usb-v5.h"
+#include "phy-qcom-qmp-pcs-usb-v6.h"
 
 /* QPHY_SW_RESET bit */
 #define SW_RESET				BIT(0)
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
new file mode 100644
index 000000000000..9510e63ba9d8
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2022, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_USB_V6_H_
+#define QCOM_PHY_QMP_PCS_USB_V6_H_
+
+/* Only for QMP V6 PHY - USB3 have different offsets than V5 */
+#define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG1		0xc4
+#define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG2		0xc8
+#define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG3		0xcc
+#define QPHY_USB_V6_PCS_LOCK_DETECT_CONFIG6		0xd8
+#define QPHY_USB_V6_PCS_REFGEN_REQ_CONFIG1		0xdc
+#define QPHY_USB_V6_PCS_USB3_POWER_STATE_CONFIG1	0x90
+#define QPHY_USB_V6_PCS_RX_SIGDET_LVL			0x188
+#define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_L		0x190
+#define QPHY_USB_V6_PCS_RCVR_DTCT_DLY_P1U2_H		0x194
+#define QPHY_USB_V6_PCS_CDR_RESET_TIME			0x1b0
+#define QPHY_USB_V6_PCS_ALIGN_DETECT_CONFIG1		0x1c0
+#define QPHY_USB_V6_PCS_ALIGN_DETECT_CONFIG2		0x1c4
+#define QPHY_USB_V6_PCS_PCS_TX_RX_CONFIG		0x1d0
+#define QPHY_USB_V6_PCS_EQ_CONFIG1			0x1dc
+#define QPHY_USB_V6_PCS_EQ_CONFIG5			0x1ec
+
+#define QPHY_USB_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x18
+#define QPHY_USB_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x3c
+#define QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x40
+#define QPHY_USB_V6_PCS_USB3_RCVR_DTCT_DLY_U3_H		0x44
+
+#endif
-- 
2.34.1

